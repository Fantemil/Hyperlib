if game.PlaceId ~= 6032399813 and game.PlaceId ~= 5735553160 then
 print("???? wrong game retard")
 return nil
end

local debugFlag = false

if getgenv().ArabwokenExecuteCheck and not debugFlag then
 return
end

local LPH_JIT_ULTRA = function(a) return a end
local LPH_JIT_MAX = function(a) return a end
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

if not debugFlag then
 getgenv().ArabwokenExecuteCheck = true
end

local library,errmsg = debugFlag and loadfile("UILibBackup.lua") or loadstring(game:HttpGet("https://raw.githubusercontent.com/Sem563/VenyxUILibraryEdit/main/UILibrary.lua"))
if not library then print(library, errmsg) return end

--Logging
local request = syn and syn.request or request

--Options
local OptionsTemplate = {
 NoFallEnabled = false,
 NoStunEnabled = false,
 WalkSpeedEnabled = false,
 WalkSpeed = 25,
 JumpPowerEnabled = false,
 JumpPower = 100,
 FlyEnabled = false,
 FlySpeed = 50,
 NoclipEnabled = false,
 NoKillBricks = false,
 NoFogEnabled = false,
 TrainCharisma = false,
 TrainIntelligence = false,
 TextSize = 15,
 PlayerESP = true,
 PlayerEnemyColor = Color3.fromRGB(255,0,0),
 PlayerFriendColor = Color3.fromRGB(0,255,0),
 MaxPlayerRange = 2500,
 PlayerShowHealth = true,
 PlayerShowDistance = true,
 PlayerShowWeapon = true,
 PlayerShowApproximateLevel = true,
 EnemyNPC = true,
 EnemyNPCColor = Color3.fromRGB(255,0,0),
 EnemyNPCRange = 1000,
 EnemyShowHealth = true,
 EnemyShowDistance = true,
 EnemyShowWeapon = true,
 ChestESPEnabled = false,
 ArtifactESPEnabled = false,
 AreaESPEnabled = false,
 NoclipKeybind = "",
 WalkSpeedKeybind = "",
 JumpPowerKeybind = "",
 ToggleMenuKeybind = "F4",
 FlyKeybind = "",
 PlayerESPKeybind = "",
 NPCESPKeybind = "",
}

if not isfolder("ArabWoken") then
 makefolder("ArabWoken") 
end

local RealSettings = {}

local function SerializeC3(obj)
 return {obj.R, obj.G, obj.B}
end

local function SerializeSettings()
 local r_Table = {}
 for _,v in next, RealSettings do
  r_Table[_] = v
 end
 r_Table.PlayerEnemyColor = SerializeC3(r_Table.PlayerEnemyColor)
 r_Table.PlayerFriendColor = SerializeC3(r_Table.PlayerFriendColor)
 r_Table.EnemyNPCColor = SerializeC3(r_Table.EnemyNPCColor)
 r_Table.NoclipKeybind = r_Table.NoclipKeybind and r_Table.NoclipKeybind.Name or ""
 r_Table.WalkSpeedKeybind = r_Table.WalkSpeedKeybind and r_Table.WalkSpeedKeybind.Name or ""
 r_Table.JumpPowerKeybind = r_Table.JumpPowerKeybind and r_Table.JumpPowerKeybind.Name or ""
 r_Table.ToggleMenuKeybind = r_Table.ToggleMenuKeybind and r_Table.ToggleMenuKeybind.Name or ""
 r_Table.FlyKeybind = r_Table.FlyKeybind and r_Table.FlyKeybind.Name or ""
 r_Table.PlayerESPKeybind = r_Table.PlayerESPKeybind and r_Table.PlayerESPKeybind.Name or ""
 r_Table.NPCESPKeybind = r_Table.NPCESPKeybind and r_Table.NPCESPKeybind.Name or ""
 return HttpService:JSONEncode(r_Table)
end

local function GetKeyCodeFromName(n)
 for _,v in next, Enum.KeyCode:GetEnumItems() do
  if v.Name == n then
   return v
  end
 end
 return nil
end

local SettingsMT = {
 __call = function()
  return RealSettings
 end,
 __newindex = function(t,k,v)
  RealSettings[k] = v
  writefile("ArabWoken/Settings.JSON", SerializeSettings())
 end,
 __index = function(t, k)
  return RealSettings[k]
 end
}

local function GetDictionaryLength(t)
 local i = 0;
 for _,_ in next, t do
  i += 1;
 end
 return i
end

local Settings = setmetatable({}, SettingsMT)
if isfile("ArabWoken/Settings.JSON") then
 local s,e = pcall(function()
  RealSettings = HttpService:JSONDecode(readfile("ArabWoken/Settings.JSON"))
 end)
 if not s then -- Malformed JSON object
  print("Malformed JSON Object")
  RealSettings = OptionsTemplate
 elseif GetDictionaryLength(RealSettings) ~= GetDictionaryLength(OptionsTemplate) then
  print("Old Settings Table")
  for i,v in next, RealSettings do
   if OptionsTemplate[i] == nil then
    print("Found extra settings (",i,"): ", v)
   end
  end
  for i,v in next, OptionsTemplate do
   if RealSettings[i] == nil then
    print("Didn't find setting (",i,"): ", v)
   end
  end
  RealSettings = OptionsTemplate
 else
  print("Retrieving Settings")
  RealSettings.PlayerEnemyColor = Color3.new(unpack(Settings.PlayerEnemyColor))
  RealSettings.PlayerFriendColor = Color3.new(unpack(Settings.PlayerFriendColor))
  RealSettings.EnemyNPCColor = Color3.new(unpack(Settings.EnemyNPCColor))
 end
else
 print("No Settings Table")
 RealSettings = OptionsTemplate
end

RealSettings.NoclipKeybind = GetKeyCodeFromName(RealSettings.NoclipKeybind)
RealSettings.ToggleMenuKeybind = GetKeyCodeFromName(RealSettings.ToggleMenuKeybind)
RealSettings.WalkSpeedKeybind = GetKeyCodeFromName(RealSettings.WalkSpeedKeybind)
RealSettings.JumpPowerKeybind = GetKeyCodeFromName(RealSettings.JumpPowerKeybind)
RealSettings.FlyKeybind = GetKeyCodeFromName(RealSettings.FlyKeybind)
RealSettings.PlayerESPKeybind = GetKeyCodeFromName(RealSettings.PlayerESPKeybind)
RealSettings.NPCESPKeybind = GetKeyCodeFromName(RealSettings.NPCESPKeybind)

--// Variables
local Players = game.Players
local lplr = Players.LocalPlayer
local char = lplr.Character
local hum = nil
local mouse = lplr:GetMouse()
local cam = workspace.CurrentCamera
local PreviousHouseName = nil
local Atmosphere = game.Lighting:WaitForChild'Atmosphere'
local executor = identifyexecutor()

local Remotes = game.ReplicatedStorage:WaitForChild("Requests", 10)

if not Remotes then
 lplr:Kick("Failed to grab remote #1")
 return
end

local TouchedConnections = {}
local partCache = {}
local offsetVector = Vector3.new(2,1,2)

local PressedFlyKeys = {}
local FlyKeys = {
 [Enum.KeyCode.W] = true,
 [Enum.KeyCode.S] = true,
 [Enum.KeyCode.A] = true,
 [Enum.KeyCode.D] = true,
 [Enum.KeyCode.Q] = true,
 [Enum.KeyCode.E] = true
}

--// Metamethod hooks
local OldNewIndex
local OldFireServer

local MMHookNewIndex = LPH_JIT_ULTRA(function(self, k, v)
 if checkcaller() then return OldNewIndex(self, k, v) end

 if self == hum and k == "WalkSpeed" and Settings.WalkSpeedEnabled then
  return
 end

 if self == hum and k == "JumpPower" and Settings.JumpPowerEnabled then
  return
 end

 if self == Atmosphere and k == "Density" and Settings.NoFogEnabled then
  return
 end

 return OldNewIndex(self, k, v)
end)

local FSHook = LPH_JIT_ULTRA(function(Event, ...)
    if checkcaller() then return OldFireServer(Event, ...) end
    if ("%s"):format(Event.Name) ~= "Game" and Event.Parent == Remotes and Settings.NoFallEnabled then
        local arg = {...}
        if type(arg[1]) == "number" and arg[1] > 10 and type(arg[2]) == "boolean" and arg[2] == false then
            print("Spoofed falldamage")
            return
        end
    end
    return OldFireServer(Event, ...)
end)

OldFireServer = hookfunction(Instance.new'RemoteEvent'.FireServer, newcclosure(FSHook))
OldNewIndex = hookmetamethod(game, "__newindex", newcclosure(MMHookNewIndex))

--// FUNCTIONS
local unmVector = Vector3.new(-1,-1,-1)
local function TranslateKeyToVector(cframe, key)
 if key == Enum.KeyCode.W then
  return cframe.lookVector
 elseif key == Enum.KeyCode.S then
  return cframe.ZVector
 elseif key == Enum.KeyCode.D then
  return cframe.XVector
 elseif key == Enum.KeyCode.A then
  return cframe.XVector * unmVector
 elseif key == Enum.KeyCode.Q then
  return cframe.YVector
 elseif key == Enum.KeyCode.E then
  return cframe.YVector * unmVector
 end
end

function GetMovementDirection()
 local emptyVector = Vector3.new(0,0,0)
 local camCFrame = cam.CFrame
 for key,_ in next, PressedFlyKeys do
  emptyVector = emptyVector + TranslateKeyToVector(camCFrame, key)
 end
 return emptyVector
end

function CheckPartNoclip(p)
 for part,_ in next, partCache do
  if p == part then
   return
  end
 end
 partCache[p] = {p.CanCollide, p.Transparency}
 p.Transparency = 0.6
 p.CanCollide = false
end

function UpdateNoclipCache(parts)
 for part,colissionid in next, partCache do
  for _,x in next, parts do
   if x == part then
    return
   end
  end
  part.CanCollide = colissionid[1]
  part.Transparency = colissionid[2]
  partCache[part] = nil
 end
end

function VisualizeRegion(r)
 local p = Instance.new("Part")
 p.Anchored = true
 p.CanCollide = false
 p.Material = Enum.Material.Neon
 p.Transparency = 0.7
 p.BrickColor = BrickColor.Red()
 p.Size = r.Size
 p.CFrame = r.CFrame
 p.Parent = workspace
 game:GetService("Debris"):AddItem(p, 0.2)
end

local ConnectionCache = {}
local function DisableChecks(instance, ...)
 if #ConnectionCache > 0 then warn("ERROR IN DISABLING CHECK (CACHE)"); ConnectionCache = {}; end
 local arg = {...}
 for _,v in next, getconnections(instance.Changed) do
  if v.Enabled then
   v:Disable()
   ConnectionCache[#ConnectionCache+1] = v
  end
 end
 for _,prop in next, arg do
  for _,v in next, getconnections(instance:GetPropertyChangedSignal(prop)) do
   if v.Enabled then
    v:Disable()
    ConnectionCache[#ConnectionCache+1] = v
   end
  end
 end
end

local function ReEnableChecks()
 for _,v in next, ConnectionCache do
  v:Enable()
  ConnectionCache[_] = nil
 end
end

local function HopServer()
 math.randomseed(os.clock())
 local plrs = game.Players:GetChildren()
 local targetPlayer
 repeat wait()
  targetPlayer = plrs[math.random(1,#plrs)]
  if targetPlayer == lplr then targetPlayer = nil end
 until targetPlayer
 game.StarterGui:SetCore("PromptBlockPlayer", targetPlayer)
 game.CoreGui.RobloxGui:WaitForChild'PromptDialog':WaitForChild'ContainerFrame':WaitForChild'ConfirmButton'.MouseButton1Click:Connect(function()
  lplr:Kick("Rejoining...")
  game:GetService'TeleportService':Teleport(4111023553)
 end)
end

local IntelligenceToggle --lua moment
local CharismaToggle

local function TrainIntelligence()
 if not Settings.TrainIntelligence then return end
    local tool = lplr.Backpack:FindFirstChild'Math Textbook' or char:FindFirstChild'Math Textbook'
    if not tool then
        UILib:Notify("Dumbass Detected", "You need the \"Math Textbook\" book to use this feature.", function(v) end)
        if Settings.TrainIntelligence then
   wait(1)
   Settings.TrainIntelligence = false
   IntelligenceToggle.Set(Settings.TrainIntelligence)
  end
  return
    end
    tool.Parent = char
    while Settings.TrainIntelligence do
        if not char or not tool or tool.Parent ~= char then
   wait(1)
            Settings.TrainIntelligence = false
            IntelligenceToggle.Set(Settings.TrainIntelligence)
            break
        end
        tool:Activate()
        wait(math.random(2,3.5))
        local ChoiceFrame = lplr.PlayerGui:WaitForChild'ChoicePrompt':WaitForChild'ChoiceFrame'
        local mathText = ChoiceFrame.DescSheet.Desc.Text:gsub("What is ", "")
        local Options = ChoiceFrame.Options
        
        local numberOne = tonumber(mathText:match("^-*%d*%.*%d*"))
        local numberTwo = tonumber(mathText:match("-*%d*%.*%d*$"))
        if not numberOne or not numberTwo then
            break
        end
        local answer = nil
        if mathText:find("times") then
            answer = numberOne * numberTwo
        elseif mathText:find("plus") then
            answer = numberOne + numberTwo
        elseif mathText:find("minus") then
            answer = numberOne - numberTwo
        elseif mathText:find("divided") then
            answer = numberOne / numberTwo
        end
        local answer = Options:FindFirstChild(tostring(answer))
        if not answer then
            break;
        end
        firesignal(answer.MouseButton1Click)
        wait(math.random(3,4)) 
    end
 if Settings.TrainIntelligence then
  Settings.TrainIntelligence = false
  IntelligenceToggle.Set(Settings.TrainIntelligence)
 end
end

local function TrainCharisma()
 if not Settings.TrainCharisma then return end
    local tool = lplr.Backpack:FindFirstChild'How to Make Friends' or char:FindFirstChild'How to Make Friends'
    if not tool then
        UILib:Notify("Dumbass Detected", "You need the \"How to Make Friends\" book to use this feature.", function(v) end)
        if Settings.TrainCharisma then
   wait(1)
   Settings.TrainCharisma = false
   CharismaToggle.Set(Settings.TrainCharisma)
  end
  return
    end
    tool.Parent = char
    while true do
        if not char or not tool or tool.Parent ~= char then
            Settings.TrainCharisma = false
            CharismaToggle.Set(Settings.TrainCharisma)
            break;
        end
        tool:Activate()
        local prompt = lplr.PlayerGui:WaitForChild'SimplePrompt':WaitForChild'Prompt'
        wait(math.random(2,3.5))
        local whitespace = prompt.Text:find("\n")
        local text = prompt.Text
        if whitespace then
            text = text:sub(whitespace+1):gsub('\'', "")
        else
            text = text:gsub('\'', "")
        end
        game.Players:Chat(text)
        wait(math.random(3,4))
    end
 if Settings.TrainCharisma then
  Settings.TrainCharisma = false
  CharismaToggle.Set(Settings.TrainCharisma)
 end
end

--// TOGGLES
function ToggleKillBricks()
 if Settings.NoKillBricks then
  
 end
end

local PreWS
function ToggleWalkSpeed()
 local hum = char:FindFirstChild("Humanoid")
 if not hum then return end
 DisableChecks(hum, "WalkSpeed")
 if Settings.WalkSpeedEnabled then
  PreWS = hum.WalkSpeed
  hum.WalkSpeed = Settings.WalkSpeed
 else
  hum.WalkSpeed = PreWS
  PreWS = nil
 end
 ReEnableChecks()
end

function UpdateWalkSpeed()
 local hum = char:FindFirstChild("Humanoid")
 if not hum then return end
 if Settings.WalkSpeedEnabled then
  DisableChecks(hum, "WalkSpeed")
  hum.WalkSpeed = Settings.WalkSpeed
  ReEnableChecks()
 end
end

local PreJP
function ToggleJumpPower()
 local hum = char:FindFirstChild("Humanoid")
 if not hum then return end
 DisableChecks(hum, "JumpPower")
 if Settings.JumpPowerEnabled then
  PreJP = hum.JumpPower
  hum.JumpPower = Settings.JumpPower
 else
  hum.JumpPower = PreJP
  PreJP = nil
 end
 ReEnableChecks()
end

function UpdateJumpPower()
 local hum = char:FindFirstChild("Humanoid")
 if not hum then return end
 if Settings.JumpPowerEnabled then
  DisableChecks(hum, "JumpPower")
  hum.JumpPower = Settings.JumpPower
  ReEnableChecks()
 end
end

local bv
function ToggleFly()
 if bv then bv:Destroy() end
 if char and char:FindFirstChild'Humanoid' and char.PrimaryPart then
  DisableChecks(char.Humanoid, "PlatformStand")
  if Settings.FlyEnabled then
   char.Humanoid.PlatformStand = true
   local Conns = {}
   for _,v in next, getconnections(char.DescendantAdded) do
    if v.Enabled then
     v:Disable()
     Conns[#Conns+1] = v
    end
   end
   for _,v in next, getconnections(char.PrimaryPart.DescendantAdded) do
    if v.Enabled then
     v:Disable()
     Conns[#Conns+1] = v
    end
   end
   for _,v in next, getconnections(char.PrimaryPart.ChildAdded) do
    if v.Enabled then
     v:Disable()
     Conns[#Conns+1] = v
    end
   end
   bv = Instance.new("BodyVelocity")
   bv.Velocity = Vector3.new(0,0,0)
   bv.P = math.huge
   bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
   bv.Parent = char.PrimaryPart
   for _,v in next, Conns do
    v:Enable()
   end
  else
   char.Humanoid.PlatformStand = false
  end
  ReEnableChecks()
 end
end

function ToggleNostun()
 if Settings.NoStunEnabled then

 else

 end
end

function ToggleNoFog()
 if Settings.NoFogEnabled then
  DisableChecks(Atmosphere, "Density")
  Atmosphere.Density = 0
  ReEnableChecks()
 end
end

function ToggleZoom()
 if Settings.MaxZoomEnabled then
  DisableChecks(lplr, "CameraMaxZoomDistance")
  lplr.CameraMaxZoomDistance = 5000
  ReEnableChecks()
 else
  DisableChecks(lplr, "CameraMaxZoomDistance")
  lplr.CameraMaxZoomDistance = 15
  ReEnableChecks()
 end
end

--// GUI
UILib = library().new("ArabWoken")

--// Player Page
local LocalPlayerHolder = UILib:addPage("LocalPlayer")
local MovementSection = LocalPlayerHolder:addSection("Movement")
local ClientSection = LocalPlayerHolder:addSection("Client")
local TrainingSection = LocalPlayerHolder:addSection("Training")

local WalkSpeedToggle = MovementSection:addToggle("WalkSpeed", Settings.WalkSpeedEnabled, function(value)
 Settings.WalkSpeedEnabled = value
 ToggleWalkSpeed()
end)
MovementSection:addSlider("WalkSpeed Multiplier", Settings.WalkSpeed, 10, 250, function(range)
 Settings.WalkSpeed = range
 UpdateWalkSpeed()
end)

local JumpPowerToggle = MovementSection:addToggle("JumpPower", Settings.JumpPowerEnabled, function(value)
 Settings.JumpPowerEnabled = value
 ToggleJumpPower()
end)
MovementSection:addSlider("JumpPower Multiplier", Settings.JumpPower, 10, 500, function(range)
 Settings.JumpPower = range
 UpdateJumpPower()
end)

local FlyToggle = MovementSection:addToggle("Fly", Settings.FlyEnabled, function(value)
 Settings.FlyEnabled = value
 ToggleFly()
end)

MovementSection:addSlider("Fly Speed", Settings.FlySpeed, 5, 50, function(range)
 Settings.FlySpeed = range
end)

local NoclipToggle = MovementSection:addToggle("Noclip", Settings.NoclipEnabled, function(value)
 Settings.NoclipEnabled = value
end)

local NofallToggle = ClientSection:addToggle("Nofall", Settings.NoFallEnabled, function(value)
 Settings.NoFallEnabled = value
end)
--[[
local NostunToggle = ClientSection:addToggle("Nostun", Settings.NoStunEnabled, function(value)
 Settings.NoStunEnabled = value
 ToggleNostun()
end)

local RemoveKillBricksToggle = ClientSection:addToggle("Remove Kill Bricks", Settings.NoKillBricks, function(value)
 Settings.NoKillBricks = value
 ToggleKillBricks()
end)]]

local NoFogToggle = ClientSection:addToggle("No Fog", Settings.NoFogEnabled, function(value)
 Settings.NoFogEnabled = value
 ToggleNoFog()
end)

ClientSection:addButton("Reset", function()
 if char and char:FindFirstChild'Humanoid' and char.Humanoid.Health > 0 then
  char:BreakJoints()
 end
end)
ClientSection:addButton("Server Hop", function()
 HopServer()
end)

IntelligenceToggle = TrainingSection:addToggle("Train Intelligence", Settings.TrainIntelligence, function(v)
 Settings.TrainIntelligence = v
 TrainIntelligence()
end)

CharismaToggle = TrainingSection:addToggle("Train Charisma", Settings.TrainCharisma, function(v)
 Settings.TrainCharisma = v
 TrainCharisma()
end)

--// World Page
--local WorldPageHolder = UILib:addPage("World")


--// ESP Page
local PlayerESPHolder = UILib:addPage("Player ESP")
local PlayerESP = PlayerESPHolder:addSection("Player ESP")
local NPCESP = PlayerESPHolder:addSection("NPC ESP")
local MiscESP = PlayerESPHolder:addSection("Misc")

local PlayerESPToggle = PlayerESP:addToggle("Toggle ESP", Settings.PlayerESP, function(value)
 Settings.PlayerESP = value
end)
PlayerESP:addSlider("ESP Range", Settings.MaxPlayerRange, 0, 100000, function(range)
 Settings.MaxPlayerRange = range
end)
PlayerESP:addToggle("Show Health", Settings.PlayerShowHealth, function(newV)
 Settings.PlayerShowHealth = newV
end)
PlayerESP:addToggle("Show Distance", Settings.PlayerShowDistance, function(newV)
 Settings.PlayerShowDistance = newV
end)
PlayerESP:addToggle("Show Level", Settings.PlayerShowApproximateLevel, function(newV)
 Settings.PlayerShowApproximateLevel = newV
end)
PlayerESP:addToggle("Show Weapon", Settings.PlayerShowWeapon, function(newV)
 Settings.PlayerShowWeapon = newV
end)
PlayerESP:addColorPicker("Enemy Color", Settings.PlayerEnemyColor, function(newColor)
 Settings.PlayerEnemyColor = newColor
end)
PlayerESP:addColorPicker("Friend Color", Settings.PlayerFriendColor, function(newColor)
 Settings.PlayerFriendColor = newColor
end)

local NPCESPToggle = NPCESP:addToggle("Toggle ESP", Settings.EnemyNPC, function(value)
 Settings.EnemyNPC = value
end)
NPCESP:addSlider("ESP Range", Settings.EnemyNPCRange, 0, 100000, function(range)
 Settings.EnemyNPCRange = range
end)
NPCESP:addToggle("Show Health", Settings.EnemyShowHealth, function(newV)
 Settings.EnemyShowHealth = newV
end)
NPCESP:addToggle("Show Distance", Settings.EnemyShowDistance, function(newV)
 Settings.EnemyShowDistance = newV
end)
NPCESP:addToggle("Show Weapon", Settings.EnemyShowWeapon, function(newV)
 Settings.EnemyShowWeapon = newV
end)
NPCESP:addColorPicker("Color", Settings.EnemyNPCColor, function(newColor)
 Settings.EnemyNPCColor = newColor
end)

local ChestESPToggle = MiscESP:addToggle("Chest ESP", Settings.ChestESPEnabled, function(newV)
 Settings.ChestESPEnabled = newV
end)
local ArtifactESPToggle = MiscESP:addToggle("Artifact ESP", Settings.ArtifactESPEnabled, function(newV)
 Settings.ArtifactESPEnabled = newV
end)
local AreaESPToggle = MiscESP:addToggle("Area ESP", Settings.AreaESPEnabled, function(newV)
 Settings.AreaESPEnabled = newV
end)


--// Settings page
local SettingsHolder = UILib:addPage("Settings")
local KeybindSettings = SettingsHolder:addSection("Keybinds")

KeybindSettings:addKeybind("Toggle Gui", Settings.ToggleMenuKeybind, function()
 UILib:toggle()
end, function(newBind)
 Settings.ToggleMenuKeybind = newBind.KeyCode
end)

KeybindSettings:addKeybind("Toggle Noclip", Settings.NoclipKeybind, function()
 Settings.NoclipEnabled = not Settings.NoclipEnabled
 NoclipToggle.Set(Settings.NoclipEnabled)
end, function(newBind)
 Settings.NoclipKeybind = newBind.KeyCode
end)

KeybindSettings:addKeybind("Toggle WalkSpeed", Settings.WalkSpeedKeybind, function()
 Settings.WalkSpeedEnabled = not Settings.WalkSpeedEnabled
 --ToggleWalkSpeed()
 WalkSpeedToggle.Set(Settings.WalkSpeedEnabled)
end, function(newBind)
 Settings.WalkSpeedKeybind = newBind.KeyCode
end)

KeybindSettings:addKeybind("Toggle JumpPower", Settings.JumpPowerKeybind, function()
 Settings.JumpPowerEnabled = not Settings.JumpPowerEnabled
 --ToggleJumpPower()
 JumpPowerToggle.Set(Settings.JumpPowerEnabled)
end, function(newBind)
 Settings.JumpPowerKeybind = newBind.KeyCode
end)

KeybindSettings:addKeybind("Toggle Fly", Settings.FlyKeybind, function()
 Settings.FlyEnabled = not Settings.FlyEnabled
 --ToggleFly()
 FlyToggle.Set(Settings.FlyEnabled)
end, function(newBind)
 Settings.FlyKeybind = newBind.KeyCode
end)

KeybindSettings:addKeybind("Toggle Player ESP", Settings.PlayerESPKeybind, function()
 Settings.PlayerESP = not Settings.PlayerESP
 PlayerESPToggle.Set(Settings.PlayerESP)
end, function(newBind)
 Settings.PlayerESPKeybind = newBind.KeyCode
end)

KeybindSettings:addKeybind("Toggle Enemy ESP", Settings.NPCESPKeybind, function()
 Settings.EnemyNPC = not Settings.EnemyNPC
 NPCESPToggle.Set(Settings.EnemyNPC)
end, function(newBind)
 Settings.NPCESPKeybind = newBind.KeyCode
end)

print("UI LOADED")

--// CONNECTIONS
RunService.Stepped:Connect(LPH_JIT_MAX(function() 
 if Settings.NoclipEnabled and char and char.PrimaryPart then
  local Region = Region3.new(char.PrimaryPart.Position - offsetVector, char.PrimaryPart.Position + offsetVector)
  local parts = workspace:FindPartsInRegion3WithIgnoreList(Region, {char}, 10000)
  for _,v in next, parts do
   CheckPartNoclip(v)
  end
  UpdateNoclipCache(parts)
 else
  for part,colissionid in next, partCache do
   part.CanCollide = colissionid[1]
   part.Transparency = colissionid[2]
   partCache[part] = nil
  end
 end
end))

RunService.RenderStepped:Connect(LPH_JIT_ULTRA(function(delta)
 if Settings.FlyEnabled and char and char.PrimaryPart then
  local NextLocation = GetMovementDirection() * (delta * Settings.FlySpeed * 5)
  char:TranslateBy(NextLocation)
 end
end))

UserInputService.InputBegan:Connect(function(input, proc)
 if proc then return end
 if FlyKeys[input.KeyCode] then
  PressedFlyKeys[input.KeyCode] = true
 end
end)

UserInputService.InputEnded:Connect(function(input, proc)
 if proc then return end
 if FlyKeys[input.KeyCode] then
  PressedFlyKeys[input.KeyCode] = nil
 end
end)

print("CONNECTED")

--// Mod Notifier
--local ModList = game:HttpGet("https://raw.githubusercontent.com/Sem563/TVRThing/main/ModList")
local ModList = ""
local function CheckModStatus(plr)
 while plr.Parent ~= game.Players do wait() end
 if plr:GetRankInGroup(5212858) >= 96 then
  return true
 end
 local plrID = plr.UserId
 for UID in ModList:gmatch("([^%s]+)") do
  if tonumber(UID) == plrID then
   return true
  end
 end
 return false
end

for _,plr in next, game.Players:GetPlayers() do
 task.spawn(function()
  if CheckModStatus(plr) then
   UILib:Notify("Mod Detected", "A Moderator ("..plr.Name..") is in your game.\nWould you like to leave?", function(v)
    if v then
     lplr:Kick("Logged from moderator")
    end
   end)
  end
 end)
end

Players.PlayerAdded:Connect(function(plr)
 if CheckModStatus(plr) then
  UILib:Notify("Mod Detected", "A Moderator ("..plr.Name..") has joined your game.\nWould you like to leave?", function(v)
   if v then
    lplr:Kick("Logged from moderator")
   end
  end)
 end
end)

print("MOD DETECTION SETUP")

--// OnCharacterAdded
function CharacterStartup(char)
 --Redo all character toggles
 print("WAITING FOR HUM")
 hum = char:WaitForChild("Humanoid")
 print(hum)
 if Settings.WalkSpeedEnabled then
  Settings.WalkSpeedEnabled = false
  WalkSpeedToggle.Set(Settings.WalkSpeedEnabled)
 end

 if Settings.JumpPowerEnabled then
  Settings.JumpPowerEnabled = false
  JumpPowerToggle.Set(Settings.JumpPowerEnabled)
 end

 if Settings.FlyEnabled then
  Settings.FlyEnabled = false
  FlyToggle.Set(Settings.FlyEnabled)
 end

 if Settings.TrainIntelligence then
  Settings.TrainIntelligence = false
  IntelligenceToggle.Set(Settings.TrainIntelligence)
 end

 if Settings.TrainCharisma then
  Settings.TrainCharisma = false
  CharismaToggle.Set(Settings.TrainCharisma)
 end
end

--// Variable Updates
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
 local newCamera = workspace.CurrentCamera
 if newCamera then
  cam = newCamera
 end
end)

lplr.CharacterAdded:Connect(function(c)
 char = c
 CharacterStartup(char)
end)

if char then
 CharacterStartup(char)
end

print("SET CHAR SETUP")

--// FIRST TIME RUN
if Settings.NoFogEnabled then
 ToggleNoFog()
end

print("FIRST TIME RUN")

--// ESP
local DN = Drawing.new
local V2 = Vector2.new

local function NewDrawingObj()
    local DrawObj = DN("Text")
    DrawObj.Center = true
    DrawObj.Font = 1
    DrawObj.Visible = true
    DrawObj.Transparency = 0.85
    DrawObj.Outline = true
 DrawObj.Color = Color3.new(1,1,1)
    return DrawObj
end

local Elements = {
 ["Talent:Thundercaller"] = "Thunder",
 ["Talent:Frostdrawer"] = "Frost",
 ["Talent:Galebreather"] = "Wind",
 ["Talent:Flamecharmer"] = "Flame",
 ["Talent:Shadowcaster"] = "Shadow"
}

local function getPlayerHouse(plr)
 local guild = plr:FindFirstChild'leaderstats' and plr.leaderstats:FindFirstChild'Guild'
 return guild and guild.Value or ""
end

local function IsSameGuild(plr)
    local plrGuild = getPlayerHouse(plr)
    if plrGuild == "" then
        return false
    end
    return plrGuild == getPlayerHouse(lplr)
end

local function hasTool(player, toolName)
 return (player:FindFirstChild("Backpack") and player.Backpack:FindFirstChild(toolName)) or (player.Character and player.Character:FindFirstChild(toolName))
end

local function getElements(Player)
 local elements = {}
 for _,v in next, Elements do
  if Player.Backpack:FindFirstChild(_) then
   elements[#elements+1] = v
  end
 end
 return #elements > 0 and table.concat(elements, "/") or "Unattuned"
end

local function GetApproximateLevel(plr)
    local level = 1
    for _,v in next, plr.Backpack:GetChildren() do
        if v.Name:match("^Talent") or v.Name:match("^Mantra") then
            level += 1
        end
    end
    return level
end

local function getWeapon(Player)
 local weaponTool = hasTool(Player, "Weapon")
 return weaponTool and weaponTool.Weapon.Value or "???"
end

local function getWeaponMob(mob)
 local WeaponTrail = mob:FindFirstChild('WeaponTrail', true)
 local WeaponModel = WeaponTrail and WeaponTrail.Parent
 if WeaponModel then
  local WeaponName = WeaponModel and WeaponModel:FindFirstChild'Critical' and WeaponModel.Critical.Value
  return WeaponName or (WeaponModel:FindFirstChild'Type' and WeaponModel.Type.Value)
 end
 return nil
end

local function getDeepwokenName(Player)
 local lStats = Player:FindFirstChild'leaderstats'
 if not lStats then
  return "???"
 end
 local firstName = lStats:FindFirstChild'FirstName'
 local lastName = lStats:FindFirstChild'LastName'
 return (firstName and lastName) and firstName.Value.." "..lastName.Value or "???"
end

local function GetMobName(mob)
    local name = mob.Name:gsub("^%.", ""):gsub("_", " "):gsub("[%d]+", "")
 local s = name:match("^%l")
    return s and ({name:gsub("^%l", s:upper())})[1] or name --fucking gsub returns :sob:
end

local function GetPlayerText(plr, d)
 local s = string.format("[%s] [%s]", plr.Name, getDeepwokenName(plr))
 if Settings.PlayerShowApproximateLevel then
  s ..= string.format(" [%d]", GetApproximateLevel(plr))
 end
 s..="\n";
 if Settings.PlayerShowWeapon then
  s ..= string.format("[%s] %s\n", getWeapon(plr), getElements(plr))
 end
 if Settings.PlayerShowHealth then
  local hum = plr.Character:FindFirstChild'Humanoid'
  if not hum then
   s ..= string.format("[???/???] ")
  else
   s ..= string.format("[%.0f/%.0f] ", hum.Health, hum.MaxHealth)
  end
 end
 if Settings.PlayerShowDistance then
  s ..= string.format("[%.0f]", d)
 end
 return s
end

local function GetMobText(mob, d)
 local s = string.format("[%s]\n", GetMobName(mob))
 if Settings.EnemyShowWeapon then
  local WeaponName = getWeaponMob(mob)
  if WeaponName then
   s ..= string.format("[%s]\n", WeaponName)
  end
 end
 if Settings.EnemyShowHealth then
  local hum = mob:FindFirstChild'Humanoid'
  if not hum then
   s ..= string.format("[???/???] ")
  else
   s ..= string.format("[%.0f/%.0f] ", hum.Health, hum.MaxHealth)
  end
 end
 if Settings.EnemyShowDistance then
  s ..= string.format("[%.0f]", d)
 end
 return s
end

local function IsChest(c)
 if c:IsA"Model" and c:FindFirstChild'Pick' and c:FindFirstChild'InteractPrompt' then
  return true
 end
 return false
end

local RenderList = {}
local DrawObjList = {}

local function CheckRenderObjIntegrity(obj)
 if executor == "Synapse X" then
  return rawget(obj, "__OBJECT_EXISTS")
 elseif executor == "ScriptWare" then
  return isrenderobj(obj)
 end
 return false;
end

local UpdateInterval = 50/1000
local LastUpdate = os.clock()

local PlayerList = {}
local MobList = {}
local ChestList = {}
local AreaList = {}

--// PLAYER LIST UPDATE
Players.PlayerAdded:Connect(function(p)
 PlayerList[p] = NewDrawingObj()
end)

Players.PlayerRemoving:Connect(function(p)
 if p == lplr then return end
 PlayerList[p]:Remove()
 PlayerList[p] = nil
end)

for _,v in next, Players:GetPlayers() do
 if v == lplr then continue end
 PlayerList[v] = NewDrawingObj()
end

--// MOB LIST UPDATE
workspace.Live.ChildAdded:Connect(function(c)
 if c.Name:match("^%.") then
  MobList[c] = NewDrawingObj()
 end
end)

workspace.Live.ChildRemoved:Connect(function(c)
 if c.Name:match("^%.") then
  MobList[c]:Remove()
  MobList[c] = nil
 end
end)

for _,v in next, workspace.Live:GetChildren() do
 if v.Name:match("^%.") then
  MobList[v] = NewDrawingObj()
 end
end

--// CHEST LIST UPDATE
workspace.Thrown.ChildAdded:Connect(function(c)
 wait(1)
 if IsChest(c) then
  ChestList[c] = NewDrawingObj()
 end
end)

workspace.Thrown.ChildRemoved:Connect(function(c)
 if ChestList[c] then
  ChestList[c]:Remove()
  ChestList[c] = nil
 end
end)

for _,v in next, workspace.Thrown:GetChildren() do
 if IsChest(v) then
  ChestList[v] = NewDrawingObj()
 end
end

--// AREA LIST
for _,v in next, game.ReplicatedStorage:WaitForChild'MarkerWorkspace':WaitForChild'AreaMarkers':GetChildren() do
 local AreaMarker = v:FindFirstChild'AreaMarker'
 if AreaMarker then
  AreaList[AreaMarker] = NewDrawingObj()
 end
end

local UpdateESP = LPH_JIT_ULTRA(function()
 local CurrentFrameTime = os.clock()
 local UpdateText = false
 if CurrentFrameTime - LastUpdate > UpdateInterval then
  UpdateText = true
  LastUpdate = CurrentFrameTime
 end
 local s,e = pcall(function()
 --// PLAYER ESP UPDATE
 if Settings.PlayerESP then
  for plr,renderObj in next, PlayerList do
   local RenderPart = plr.Character and (plr.Character.PrimaryPart or plr.Character:FindFirstChild'Torso')
   if RenderPart then
    local Distance = (cam.CFrame.Position - RenderPart.Position).Magnitude
    if Distance > Settings.MaxPlayerRange then
     continue
    end
    local ScreenPos,IsVisible = cam:WorldToViewportPoint(RenderPart.Position)
    if IsVisible then
     renderObj.Color = IsSameGuild(plr) and Settings.PlayerFriendColor or Settings.PlayerEnemyColor
     renderObj.Size = Settings.TextSize
     if UpdateText then
      renderObj.Text = GetPlayerText(plr, Distance)
     end
     renderObj.Position = V2(ScreenPos.X, ScreenPos.Y)
     renderObj.Visible = true
    else
     renderObj.Visible = false
    end
   else
    renderObj.Visible = false
   end
  end
 else
  for _,renderObj in next, PlayerList do
   renderObj.Visible = false
  end
 end

 --// ENEMY ESP UPDATE
 if Settings.EnemyNPC then
  for mob,renderObj in next, MobList do
   local RenderPart = mob.PrimaryPart or mob:FindFirstChild'HumanoidRootPart' or mob:FindFirstChildWhichIsA'Part'
   if RenderPart then
    local Distance = (cam.CFrame.Position - RenderPart.Position).Magnitude
    if Distance > Settings.EnemyNPCRange then
     continue
    end
    local ScreenPos,IsVisible = cam:WorldToViewportPoint(RenderPart.Position)
    if IsVisible then
     renderObj.Color = Settings.EnemyNPCColor
     renderObj.Size = Settings.TextSize
     if UpdateText then
      renderObj.Text = GetMobText(mob, Distance)
     end
     renderObj.Position = V2(ScreenPos.X, ScreenPos.Y)
     renderObj.Visible = true
    else
     renderObj.Visible = false
    end
   else
    renderObj.Visible = false
   end
  end
 else
  for _,renderObj in next, MobList do
   renderObj.Visible = false
  end
 end

 --// CHEST ESP
 if Settings.ChestESPEnabled then
  for chest,renderObj in next, ChestList do
   local RenderPart = chest:FindFirstChild'Lid'
   if RenderPart then
    local ScreenPos,IsVisible = cam:WorldToViewportPoint(RenderPart.Position)
    if IsVisible then
     renderObj.Size = Settings.TextSize
     if UpdateText then
      renderObj.Text = string.format("[Chest]\n[%.0f]", (cam.CFrame.Position - RenderPart.Position).Magnitude)
     end
     renderObj.Position = V2(ScreenPos.X, ScreenPos.Y)
     renderObj.Visible = true
    else
     renderObj.Visible = false
    end
   else
    renderObj.Visible = false
   end
  end
 else
  for _,renderObj in next, ChestList do
   renderObj.Visible = false
  end
 end

 --// AREA ESP
 if Settings.AreaESPEnabled then
  for RenderPart,renderObj in next, AreaList do
   local ScreenPos,IsVisible = cam:WorldToViewportPoint(RenderPart.Position)
   if IsVisible then
    renderObj.Size = Settings.TextSize
    if UpdateText then
     renderObj.Text = string.format("[%s]\n[%.0f]", RenderPart.Parent.Name, (cam.CFrame.Position - RenderPart.Position).Magnitude)
    end
    renderObj.Position = V2(ScreenPos.X, ScreenPos.Y)
    renderObj.Visible = true
   else
    renderObj.Visible = false
   end
  end
 else
  for _,renderObj in next, AreaList do
   renderObj.Visible = false
  end
 end

 end)
 if not s then warn(e) end
end)
RunService:BindToRenderStep("Update", 201, UpdateESP)