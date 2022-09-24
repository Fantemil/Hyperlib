--[[

 Framed! Target ESP

 FAQ:
 Q: What gamemodes does this work in?
 A: Here's a list of the following gamemodes that this script works in:
  - Framed
  - Contacts
  - No Secrets

 Q: Why did you make this script even though theres already a script that does the same thing???
 A: That other script was broken and wasn't working properly. This script does!

 Q: How do i turn off notifications?
        A: getgenv().FramedTESP_Notifications = false

 (note for anyone copy-pasting this on script sites, please inform me first before posting.)

]]
if getgenv().FramedTESP_LOADED then return warn("Framed Script already loaded!") end
local start = tick()
if getgenv().Connections then pcall(function() for i,v in ipairs(getgenv().Connections) do v:Disconnect() end end) end; getgenv().Connections = {}
if getgenv().ESPList then pcall(function() for i,v in ipairs(getgenv().ESPList) do v:Remove() end end) end; getgenv().ESPList = {}
getgenv().RedHandedESP = {}

-- // Services \\ --
local Players = game:GetService("Players")
local CollectionService = game:GetService("CollectionService")

-- // Modules \\ --
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))(); local Notify = AkaliNotif.Notify; 
function notify(text, desc, time) 
 if not getgenv().FramedTESP_Notifications then return end 
 Notify({ 
  Description = desc or "Description"; 
  Title = text or "Title"; 
  Duration = time or 3 
 }); 
end

-- // Variables \\ --
local ManualScanESP
local Target
local inGame
local serverState
local currentGameMode
local LPDied
local PPTriggered
local TargetDiedTrigger
local SupportedModes = {"Framed","Contacts","No Secrets"}
local Weapons = {"Luger","M1911","Hand Cannon","MAC10","Six Shooter","Mauser", "MP5","Bowie Knife","Spas-12","Dragunov"}

-- // Functions \\ -- 
function AddESP(playerName, text, color, istemp)
 if istemp == nil then istemp = true end
 ESP.Color = Color3.fromRGB(112, 112, 112)
    local TEMP_ESP = ESP:Add(Players[playerName].Character.Head, {
        Name = text.."\n\n"..Players[playerName].DisplayName.." (@"..playerName..")",
        Color = color or Color3.fromRGB(255, 244, 88),
        Player = false,
        IsEnabled = playerName
    })
 ESP[playerName] = true
 if istemp then
  table.insert(getgenv().ESPList, TEMP_ESP)
 end
    return TEMP_ESP
end

local function scanForUndercover()
 if not inGame or inGame == "nil" then return notify("❌", "Cannot scan for undercover, You are not ingame.") end
 if not table.find(SupportedModes, tostring(currentGameMode)) then return notify("❌", "Cannot start scan, Gamemode \""..currentGameMode.."\" is not supported.", 6.5) end

 if not Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool") then notify("⌛", "Waiting until game starts before scanning for undercover."); repeat task.wait() until Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool") end
 notify("🔎", "Attempting to search for undercover...")
 local success = false
 for i,v in ipairs(Players:GetPlayers()) do
  if v.Team.Name ~= "Framed" and v.Name ~= Players.LocalPlayer.Name then continue end
  if not v.Backpack:FindFirstChildWhichIsA("Tool") then repeat task.wait() until v.Backpack:FindFirstChildWhichIsA("Tool") end

  if v.Backpack:FindFirstChild("Fake Check Target") then
   AddESP(v.Name, "Undercover", Color3.new(0, 1, 0.333333), false)
   notify("🕵️", "Found undercover: "..v.DisplayName)
   success = true
  end

 end
 if not success then notify("❌", "Didn't find an undercover!") end
end

function scanForNewTarget()
 local temp_returnfunction
 if not inGame or inGame == "nil" then return notify("❌", "Cannot start scan, You are not in-game.") end
 if Players.LocalPlayer.Team.Name ~= "Framed" then return notify("❌", "Cannot start scan, You cannot have a target!") end
 pcall(function()
  Target = tostring(workspace.Events.GetTargetLocal:InvokeServer())
  currentGameMode = workspace.Values.GameMode.Value
  serverState = workspace.Values.ServerMode.Value
 end)
 if not table.find(SupportedModes, tostring(currentGameMode)) then return end
 notify("🔎", "Attempting to search for target...")
 if Target == "nil" or Target == Players.LocalPlayer.Name then return notify("❌", "Didn't find a target.\n\nPerhaps you can't have a target at this time?", 6.5) end

 temp_returnfunction = AddESP(Target, "Target")
 notify("🎯", "Found target: "..Players[tostring(Target)].DisplayName)

 TargetDiedTrigger = Players[tostring(Target)].Character.Humanoid.Died:Connect(function()
  TargetDiedTrigger:Disconnect()
  if currentGameMode == "Contacts" then return end
  notify("⚠️", "Target died, Attempting to scan for new target...")
  scanForNewTarget()
 end)
 table.insert(getgenv().Connections, TargetDiedTrigger)
 return temp_returnfunction
end

local function checkInGameState()
 if Players.LocalPlayer.Character:WaitForChild("CharacterAttributes", 2) then
  inGame = true
 else
  inGame = false
 end
end


-- // Events \\ --
table.insert(getgenv().Connections, Players.LocalPlayer.CharacterAdded:Connect(function(character)
 pcall(function()
  for _,v in pairs(ESPList) do v:Remove() end
  task.spawn(function() 
   for _,v in pairs(Players:GetPlayers()) do
    getgenv().RedHandedESP[v.Name] = nil 
   end 
  end)
  LPDied:Disconnect()
  TargetDiedTrigger:Disconnect()
 end)

 LPDied = Players.LocalPlayer.Character:WaitForChild("Humanoid", 5).Died:Connect(function()
  pcall(function()
   inGame = false
   notify("❌", "Scanning stopped, You died.")
   LPDied:Disconnect()
   TargetDiedTrigger:Disconnect()
   --for _,v in ipairs(getgenv().ESPList) do v:Remove() end
  end)
 end)

 checkInGameState()

 if inGame then
  scanForNewTarget()
  scanForUndercover()
 end

 if getgenv().FramedTESP_DisableJumpDebounce then
  Players.LocalPlayer.Character:WaitForChild("JumpDebouncer").Disabled = true
 end
end))

LPDied = Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
 pcall(function()
  inGame = false
  notify("❌", "Scanning stopped, You died.")
  LPDied:Disconnect()
  TargetDiedTrigger:Disconnect()
  --for _,v in ipairs(getgenv().ESPList) do v:Remove() end
 end)
end)

table.insert(getgenv().Connections, LPDied)

-- contacts get target event
if getgenv().FramedContactsEvent ~= "true" then
 PPTriggered = Instance.new("BindableEvent")
 PPTriggered.Name = "ScanForTarget"
 PPTriggered.Parent = workspace.Events.Prompt

 local old;
 old = hookmetamethod(game, "__namecall", newcclosure(function(self,...)
  if getnamecallmethod() == "FireServer" and self.Name == "Prompt" then
   old(self, ...)
   self.ScanForTarget:Fire()
   return
  end

  return old(self, ...)
 end))

 workspace.Events.Prompt.ScanForTarget.Event:Connect(function(time)
  task.wait(time)
  scanForNewTarget()
 end)

 getgenv().FramedContactsEvent = "true"
end

Players.PlayerAdded:Connect(function(player)
 player:WaitForChild("RedHanded"):GetPropertyChangedSignal("Value"):Connect(function()
  task.wait() 
  local success, err = pcall(function()
   if player.RedHanded.Value and inGame and Players.LocalPlayer.Team.Name == "Police" or Players.LocalPlayer.Backpack:FindFirstChild("Fake Check Target") and not CollectionService:HasTag(player.Character, "RedHanded") then
    CollectionService:AddTag(player.Character, "RedHanded")
    getgenv().RedHandedESP[player.Name] = AddESP(player.Name, "Red-Handed", Color3.new(1, 0, 0))
   elseif inGame and Players.LocalPlayer.Team.Name == "Police" or Players.LocalPlayer.Backpack:FindFirstChild("Fake Check Target") and CollectionService:HasTag(player.Character, "RedHanded") then
    CollectionService:RemoveTag(player.Character, "RedHanded")
    getgenv().RedHandedESP[player.Name]:Remove()
    task.wait()
    --getgenv().RedHandedESP[player.Name] = nil
   end
  end)
  if not success then warn("An Error Occured while trying to configure Red-Handed ESP on a player:\n\n"..err) end
 end)
end)

for _,player in pairs(Players:GetPlayers()) do
 player:WaitForChild("RedHanded"):GetPropertyChangedSignal("Value"):Connect(function()
  pcall(function()
   if player.RedHanded.Value and inGame and Players.LocalPlayer.Team.Name == "Police" or Players.LocalPlayer.Backpack:FindFirstChild("Fake Check Target") then
    getgenv().RedHandedESP[player.Name] = AddESP(player.Name, "Red-Handed", Color3.new(1, 0, 0))
   elseif inGame and Players.LocalPlayer.Team.Name == "Police" or Players.LocalPlayer.Backpack:FindFirstChild("Fake Check Target") then
    getgenv().RedHandedESP[player.Name]:Remove()
    --getgenv().RedHandedESP[player.Name] = nil
   end
  end)
 end)
end

-- // manual scan for hunted man \\ --
game:GetService("ContextActionService"):BindAction("Framed_ScanForTarget", function()
 if ManualScanESP then
  ManualScanESP:Remove()
 end
 ManualScanESP = scanForNewTarget()
end, false, Enum.KeyCode.X)

-- // Main \\ -- 
checkInGameState()
scanForNewTarget()
scanForUndercover()
ESP:Toggle(true)
ESP.Players = false
notify("✅", "Script loaded successfully in "..tick() - start.." seconds!")
getgenv().FramedTESP_LOADED = true