--[[
Made by Pawel12d#0272
--]]

local Hint = Instance.new("Hint", game.CoreGui)
Hint.Text = "Hexagon | Waiting for the game to load..."

repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("GUI")

Hint.Text = "Hexagon | Setting up environment..."

-- Services
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Environment 
local getrawmetatable = getrawmetatable or false
local http_request = http_request or request or (http and http.request) or (syn and syn.request) or false
local mousemove = mousemove or mousemoverel or mouse_move or false
local getsenv = getsenv or false
local listfiles = listfiles or listdir or syn_io_listdir or false
local isfolder = isfolder or false
local hookfunc = hookfunction or hookfunc or replaceclosure or false

if (getrawmetatable == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: getrawmetatable.") end
if (http_request == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: request.") end
if (mousemove == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: mousemove.") end
if (getsenv == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: getsenv.") end
if (listfiles == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: listfiles.") end
if (isfolder == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: isfolder.") end
if (hookfunc == false) then return game.Players.LocalPlayer:Kick("Exploit not supported! Missing: hookfunction.") end

Hint.Text = "Hexagon | Setting up configuration settings..."

if not isfolder("hexagon") then
 print("creating hexagon folder")
 makefolder("hexagon")
end

if not isfolder("hexagon/configs") then
 print("creating hexagon configs folder")
 makefolder("hexagon/configs")
end

if not isfile("hexagon/autoload.txt") then
 print("creating hexagon autoload file")
 writefile("hexagon/autoload.txt", "")
end

if not isfile("hexagon/custom_skins.txt") then
 print("downloading hexagon custom skins file")
 writefile("hexagon/custom_skins.txt", game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/default_data/custom_skins.txt"))
end

if not isfile("hexagon/custom_models.txt") then
 print("downloading hexagon custom models file")
 writefile("hexagon/custom_models.txt", game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/default_data/custom_models.txt"))
end

if not isfile("hexagon/inventories.txt") then
 print("downloading hexagon inventories file")
 writefile("hexagon/inventories.txt", game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/default_data/inventories.txt"))
end

if not isfile("hexagon/skyboxes.txt") then
 print("downloading hexagon skyboxes file")
 writefile("hexagon/skyboxes.txt", game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/default_data/skyboxes.txt"))
end

Hint.Text = "Hexagon | Loading..."

-- Viewmodels fix
for i,v in pairs(game.ReplicatedStorage.Viewmodels:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then
        v.HumanoidRootPart.Transparency = 1
    end
end

game.ReplicatedStorage.Viewmodels["v_oldM4A1-S"].Silencer.Transparency = 1
local fix = game.ReplicatedStorage.Viewmodels["v_oldM4A1-S"].Silencer:Clone()
fix.Parent = game.ReplicatedStorage.Viewmodels["v_oldM4A1-S"]
fix.Name = "Silencer2"
fix.Transparency = 0

local Hitboxes = {
 ["Head"] = {"Head"},
 ["Chest"] = {"UpperTorso", "LowerTorso"},
 ["Arms"] = {"LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"},
 ["Legs"] = {"LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}
}

local HexagonFolder = Instance.new("Folder", workspace)
HexagonFolder.Name = "HexagonFolder"

local oldOsPlatform = game.Players.LocalPlayer.OsPlatform
local oldMusicT = game.Players.LocalPlayer.PlayerGui.Music.ValveT:Clone()
local oldMusicCT = game.Players.LocalPlayer.PlayerGui.Music.ValveCT:Clone()

local Weapons = {}; for i,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do if v:FindFirstChild("Model") then table.insert(Weapons, v.Name) end end

local Sounds = {
 ["TTT a"] = workspace.RoundEnd,
 ["TTT b"] = workspace.RoundStart,
 ["T Win"] = workspace.Sounds.T,
 ["CT Win"] = workspace.Sounds.CT,
 ["Planted"] = workspace.Sounds.Arm,
 ["Defused"] = workspace.Sounds.Defuse,
 ["Rescued"] = workspace.Sounds.Rescue,
 ["Explosion"] = workspace.Sounds.Explosion,
 ["Becky"] = workspace.Sounds.Becky,
 ["Beep"] = workspace.Sounds.Beep
}
 
local FOVCircle = Drawing.new("Circle")
local Cases = {}; for i,v in pairs(game.ReplicatedStorage.Cases:GetChildren()) do table.insert(Cases, v.Name) end

local Configs = {}
local Inventories = loadstring("return "..readfile("hexagon/inventories.txt"))()
local Skyboxes = loadstring("return "..readfile("hexagon/skyboxes.txt"))()



-- Main
local SilentLegitbot = {target = nil}
local SilentRagebot = {target = nil, cooldown = false}
local LocalPlayer = game.Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local cbClient = getsenv(LocalPlayer.PlayerGui:WaitForChild("Client"))
local oldInventory = cbClient.CurrentInventory
local nocw_s = {}
local nocw_m = {}
local curVel = 16
local isBhopping = false

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/ESP.lua"))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/UILibrary.lua"))()

local Window = library:CreateWindow(Vector2.new(500, 500), Vector2.new((workspace.CurrentCamera.ViewportSize.X/2)-250, (workspace.CurrentCamera.ViewportSize.Y/2)-250))



-- Functions
local function RandomString(length, strings)
 local strings = strings or {
  "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
  "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
  "0","1","2","3","4","5","6","7","8","9",
 }
 local output = ""
 for i = 1,length do
  output = tostring(output..""..strings[math.random(1,#strings)])
  if i == length then
   return output
  end
 end
end

local function IsAlive(plr)
 if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
  return true
 end

 return false
end

local function IsVisible(pos, ignoreList)
 return #workspace.CurrentCamera:GetPartsObscuringTarget({LocalPlayer.Character.Head.Position, pos}, ignoreList) == 0 and true or false
end

local function GetTeam(plr)
 return game.Teams[plr.Team.Name]
end

local function GetSite()
 if (LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.SpawnPoints.C4Plant.Position).magnitude > (LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.SpawnPoints.C4Plant2.Position).magnitude then
  return "A"
 else
  return "B"
 end
end

local function CharacterAdded()
 wait(0.5)
 if IsAlive(LocalPlayer) then
  LocalPlayer.Character.Humanoid.StateChanged:Connect(function(state)
   if library.pointers.MiscellaneousTabCategoryBunnyHopEnabled.value == true then
    if UserInputService:IsKeyDown(Enum.KeyCode.Space) == false then
     isBhopping = false
     curVel = library.pointers.MiscellaneousTabCategoryBunnyHopMinVelocity.value
    elseif state == Enum.HumanoidStateType.Landed and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
     LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    elseif state == Enum.HumanoidStateType.Jumping then
     isBhopping = true
     curVel = (curVel + library.pointers.MiscellaneousTabCategoryBunnyHopAcceleration.value) >= library.pointers.MiscellaneousTabCategoryBunnyHopMaxVelocity.value and library.pointers.MiscellaneousTabCategoryBunnyHopMaxVelocity.value or curVel + library.pointers.MiscellaneousTabCategoryBunnyHopAcceleration.value
    end
   end
  end)
 end
end

local function PlayerAdded()
 
end

local function PlantC4()
 pcall(function()
 if IsAlive(LocalPlayer) and workspace.Map.Gamemode.Value == "defusal" and workspace.Status.Preparation.Value == false and not planting then 
  planting = true
  local pos = LocalPlayer.Character.HumanoidRootPart.CFrame 
  workspace.CurrentCamera.CameraType = "Fixed"
  LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.SpawnPoints.C4Plant.CFrame
  wait(0.2)
  game.ReplicatedStorage.Events.PlantC4:FireServer((pos + Vector3.new(0, -2.75, 0)) * CFrame.Angles(math.rad(90), 0, math.rad(180)), GetSite())
  wait(0.2)
  LocalPlayer.Character.HumanoidRootPart.CFrame = pos
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  game.Workspace.CurrentCamera.CameraType = "Custom"
  planting = false
 end
 end)
end

local function DefuseC4()
 pcall(function()
 if IsAlive(LocalPlayer) and workspace.Map.Gamemode.Value == "defusal" and not defusing and workspace:FindFirstChild("C4") then 
  defusing = true
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  local pos = LocalPlayer.Character.HumanoidRootPart.CFrame 
  workspace.CurrentCamera.CameraType = "Fixed"
  LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.C4.Handle.CFrame + Vector3.new(0, 2, 0)
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  wait(0.1)
  LocalPlayer.Backpack.PressDefuse:FireServer(workspace.C4)
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  wait(0.25)
  if IsAlive(LocalPlayer) and workspace:FindFirstChild("C4") and workspace.C4:FindFirstChild("Defusing") and workspace.C4.Defusing.Value == LocalPlayer then
   LocalPlayer.Backpack.Defuse:FireServer(workspace.C4)
  end
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  wait(0.2)
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  LocalPlayer.Character.HumanoidRootPart.CFrame = pos
  LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
  game.Workspace.CurrentCamera.CameraType = "Custom"
  defusing = false
 end
 end)
end

function GetSpectators()
 local CurrentSpectators = {}
 
 for i,v in pairs(game:GetService("Players"):GetChildren()) do 
  if v ~= game:GetService("Players").LocalPlayer then
   if not v.Character and v:FindFirstChild("CameraCF") and (v.CameraCF.Value.Position - workspace.CurrentCamera.CFrame.p).Magnitude < 10 then 
    table.insert(CurrentSpectators, v)
   end
  end
 end
 
 return CurrentSpectators
end

local function GetLegitbotTarget()
 local target,oldval = nil,math.huge
 
 for i,v in pairs(game.Players:GetPlayers()) do
  if IsAlive(v) and v ~= LocalPlayer and not v.Character:FindFirstChild("ForceField") then
   if library.pointers.AimbotTabCategoryLegitbotTeamCheck.value == false or GetTeam(v) ~= GetTeam(LocalPlayer) then
    if library.pointers.AimbotTabCategoryLegitbotVisibilityCheck.value == false or IsVisible(v.Character.Head.Position, {v.Character, LocalPlayer.Character, HexagonFolder, workspace.CurrentCamera}) == true then
     local Vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
     local FOV = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Vector.X, Vector.Y)).magnitude
     
     if FOV < library.pointers.AimbotTabCategoryLegitbotFOV.value or library.pointers.AimbotTabCategoryLegitbotFOV.value == 0 then
      if math.floor((LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude) < library.pointers.AimbotTabCategoryLegitbotDistance.value or library.pointers.AimbotTabCategoryLegitbotDistance.value == 0 then
       if library.pointers.AimbotTabCategoryLegitbotTargetPriority.value == "FOV" then
        local Vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
        local FOV = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Vector.X, Vector.Y)).magnitude
         
        if FOV < oldval then
         target = v
         oldval = FOV
        end
       elseif library.pointers.AimbotTabCategoryLegitbotTargetPriority.value == "Distance" then
        local Distance = math.floor((v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude)
        
        if Distance < oldval then
         target = v
         oldval = Distance
        end
       end
      end
     end
    end
   end
  end
 end
 
 if target ~= nil then
  return target
 end
 
 return nil
end

local function GetLegitbotHitbox(plr)
 local target,oldval = nil,math.huge
 
 for i,v in pairs(library.pointers.AimbotTabCategoryLegitbotHitbox.value) do
  for i2,v2 in pairs(Hitboxes[v]) do
   targetpart = plr.Character:FindFirstChild(v2)
   
   if targetpart ~= nil then
    if library.pointers.AimbotTabCategoryLegitbotHitboxPriority.value == "FOV" then
     local Vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(targetpart.Position)
     local FOV = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Vector.X, Vector.Y)).magnitude
     
     if FOV < oldval then
      target = targetpart
      oldval = FOV
     end
    elseif library.pointers.AimbotTabCategoryLegitbotHitboxPriority.value == "Distance" then
     local Distance = math.floor((targetpart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude)
     
     if Distance < oldval then
      target = targetpart
      oldval = Distance
     end
    end
   end
  end
 end
 
 if target ~= nil then
  return target
 end
 
 return nil
end

local function TableToNames(tbl, alt)
 local otp = {}
 
 if alt then
  for i,v in pairs(tbl) do
   table.insert(otp, v.weaponname)
  end
 else
  for i,v in pairs(tbl) do
   table.insert(otp, i)
  end
 end
 
 return otp
end

local function AddCustomSkin(tbl) 
 if tbl and tbl.weaponname and tbl.skinname and tbl.model then
  local isGlove = false
  
  if table.find({"Strapped Glove", "Handwraps", "Sports Glove", "Fingerless Glove"}, tbl.weaponname) then
   isGlove = true
  end
  
  newfolder = Instance.new("Folder")
  newfolder.Name = tbl.skinname
  newfolder.Parent = (isGlove == true and game.ReplicatedStorage.Gloves) or (game.ReplicatedStorage.Skins[tbl.weaponname])
   
  if tbl.skinimage ~= nil then
   newvalue1 = Instance.new("StringValue")
   newvalue1.Name = tbl.skinname
   newvalue1.Value = tbl.skinimage
   newvalue1.Parent = LocalPlayer.PlayerGui.Client.Images[tbl.weaponname]
  end

  if tbl.skinrarity ~= nil then
   newvalue2 = Instance.new("StringValue")
   newvalue2.Name = "Quality"
   newvalue2.Value = tbl.skinrarity
   newvalue2.Parent = (isGlove == false and newvalue1) or nil
   
   newvalue3 = Instance.new("StringValue")
   newvalue3.Name = tostring(tbl.weaponname.."_"..tbl.skinname)
   newvalue3.Value = tbl.skinrarity
   newvalue3.Parent = LocalPlayer.PlayerGui.Client.Rarities
  end

  if isGlove == true then
   newtextures = Instance.new("SpecialMesh")
   newtextures.Name = "Textures"
   newtextures.MeshId = game.ReplicatedStorage.Gloves.Models[tbl.weaponname].RGlove.Mesh.MeshId
   newtextures.TextureId = tbl.model.Handle
   newtextures.Parent = newfolder
   
   newtype = Instance.new("StringValue")
   newtype.Name = "Type"
   newtype.Value = tbl.weaponname
   newtype.Parent = newfolder
  else
   for i,v in pairs(tbl.model) do
    if i == "Main" then
     for i2,v2 in pairs(game.ReplicatedStorage.Viewmodels["v_"..tbl.weaponname]:GetChildren()) do
      if v2:IsA("BasePart") and not table.find({"Right Arm", "Left Arm", "Flash"}, v2.Name) and v2.Transparency ~= 1 then
       newvalue = Instance.new("StringValue")
       newvalue.Name = v2.Name
       newvalue.Value = v
       newvalue.Parent = newfolder
      end
     end
    end
    
    newvalue = Instance.new("StringValue")
    newvalue.Name = i
    newvalue.Value = v
    newvalue.Parent = newfolder
   end
  end
  table.insert(nocw_s, {tostring(tbl.weaponname.."_"..tbl.skinname)})
   
  print("Custom skin: "..tostring(tbl.weaponname.."_"..tbl.skinname).." successfully injected!")
 end
end

local function AddCustomModel(tbl)
 if tbl and tbl.weaponname and tbl.modelname and tbl.model and game.ReplicatedStorage.Weapons:FindFirstChild(tbl.modelname) then
  if game.ReplicatedStorage.Viewmodels:FindFirstChild("v_"..tbl.modelname) then
   game.ReplicatedStorage.Viewmodels["v_"..tbl.modelname]:Destroy()
  end
  
  newmodel = tbl.model
  newmodel.Name = "v_"..tbl.modelname
  newmodel.Parent = game.ReplicatedStorage.Viewmodels
  
  table.insert(nocw_m, {tostring(tbl.modelname)})
 end
end

-- GUI
local AimbotTab = Window:CreateTab("Aimbot")

local AimbotTabCategoryLegitbot = AimbotTab:AddCategory("Legitbot", 1)

AimbotTabCategoryLegitbot:AddToggle("Enabled", false, "AimbotTabCategoryLegitbotEnabled", function(val)
 if val == true then
  LegitbotLoop = game:GetService("RunService").RenderStepped:Connect(function()
   if library.base.Window.Visible == false and IsAlive(LocalPlayer) then
    if library.pointers.AimbotTabCategoryLegitbotKeybind.value == nil or (library.pointers.AimbotTabCategoryLegitbotKeybind.value.EnumType == Enum.KeyCode and UserInputService:IsKeyDown(library.pointers.AimbotTabCategoryLegitbotKeybind.value)) or (library.pointers.AimbotTabCategoryLegitbotKeybind.value.EnumType == Enum.UserInputType and UserInputService:IsMouseButtonPressed(library.pointers.AimbotTabCategoryLegitbotKeybind.value)) then
     plr = GetLegitbotTarget()
     
     if plr ~= nil then
      hitboxpart = GetLegitbotHitbox(plr)
      
      if hitboxpart ~= nil then
       local Vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(hitboxpart.Position)
       local PositionX = (Mouse.X-Vector.X)/library.pointers.AimbotTabCategoryLegitbotSmoothness.value + 1
       local PositionY = (Mouse.Y-Vector.Y)/library.pointers.AimbotTabCategoryLegitbotSmoothness.value + 1
       
       if library.pointers.AimbotTabCategoryLegitbotSilent.value == true then
        SilentLegitbot.target = hitboxpart
        SilentLegitbot.aiming = true
       else
        mousemove(-PositionX, -PositionY)
        if SilentLegitbot.target ~= nil then SilentLegitbot.target = nil end
       end
      else
       if SilentLegitbot.target ~= nil then SilentLegitbot.target = nil end
      end
     else
      if SilentLegitbot.target ~= nil then SilentLegitbot.target = nil end
     end
    else
     if SilentLegitbot.target ~= nil then SilentLegitbot.target = nil end
    end
   else
    if SilentLegitbot.target ~= nil then SilentLegitbot.target = nil end
   end
  end)
 elseif val == false and LegitbotLoop then
  LegitbotLoop:Disconnect()
 end
end)

AimbotTabCategoryLegitbot:AddToggle("Silent", false, "AimbotTabCategoryLegitbotSilent")

AimbotTabCategoryLegitbot:AddToggle("Team Check", false, "AimbotTabCategoryLegitbotTeamCheck")

AimbotTabCategoryLegitbot:AddToggle("Visibility Check", false, "AimbotTabCategoryLegitbotVisibilityCheck")

AimbotTabCategoryLegitbot:AddKeybind("Keybind", nil, "AimbotTabCategoryLegitbotKeybind")

AimbotTabCategoryLegitbot:AddMultiDropdown("Hitbox", {"Head", "Chest", "Arms", "Legs"}, {"Head"}, "AimbotTabCategoryLegitbotHitbox")

AimbotTabCategoryLegitbot:AddDropdown("Hitbox Priority", {"FOV", "Distance"}, "FOV", "AimbotTabCategoryLegitbotHitboxPriority")

AimbotTabCategoryLegitbot:AddDropdown("Target Priority", {"FOV", "Distance"}, "FOV", "AimbotTabCategoryLegitbotTargetPriority")

AimbotTabCategoryLegitbot:AddSlider("Field of View", {0, 360, 0, 1, "°"}, "AimbotTabCategoryLegitbotFOV", function(val)
 FOVCircle.Radius = val
end)

AimbotTabCategoryLegitbot:AddSlider("Distance", {0, 2048, 0, 1, " studs"}, "AimbotTabCategoryLegitbotDistance")

AimbotTabCategoryLegitbot:AddSlider("Smoothness", {1, 30, 1, 1, ""}, "AimbotTabCategoryLegitbotSmoothness")

AimbotTabCategoryLegitbot:AddSlider("Hitchance", {0, 100, 100, 1, "%"}, "AimbotTabCategoryLegitbotHitchance")

local AimbotTabCategoryAntiAimbot = AimbotTab:AddCategory("Anti Aimbot", 2)

AimbotTabCategoryAntiAimbot:AddToggle("Enabled", false, "AimbotTabCategoryAntiAimbotEnabled", function(val)
 AntiAimbot = val
 
 while AntiAimbot do
  if IsAlive(LocalPlayer) and (library.pointers.AimbotTabCategoryAntiAimbotDisableWhileClimbing.value == false or cbClient.climbing == false) then
   function RotatePlayer(pos)
    local Gyro = Instance.new('BodyGyro')
    Gyro.D = 0
    Gyro.P = (library.pointers.AimbotTabCategoryAntiAimbotYawStrenght.value * 100)
    Gyro.MaxTorque = Vector3.new(0, (library.pointers.AimbotTabCategoryAntiAimbotYawStrenght.value * 100), 0)
    Gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
    Gyro.CFrame = CFrame.new(Gyro.Parent.Position, pos.Position)
    wait()
    Gyro:Destroy()
   end
   
   if library.pointers.AimbotTabCategoryAntiAimbotRemoveHeadHitbox.value == true then
    if game.Players.LocalPlayer.Character:FindFirstChild("HeadHB") then
     game.Players.LocalPlayer.Character.HeadHB:Destroy()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("FakeHead") then
     game.Players.LocalPlayer.Character.FakeHead:Destroy()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character.Head.Transparency ~= 0 then
     game.Players.LocalPlayer.Character.Head.Transparency = 0
    end
   end
   
   if table.find({"Backward", "Left", "Right"}, library.pointers.AimbotTabCategoryAntiAimbotYaw.value) then
    game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
    local Angle = (
     library.pointers.AimbotTabCategoryAntiAimbotYaw.value == "Backward" and CFrame.new(-4, 0, 0) or
     library.pointers.AimbotTabCategoryAntiAimbotYaw.value == "Left" and CFrame.new(-180, 0, 0) or
     library.pointers.AimbotTabCategoryAntiAimbotYaw.value == "Right" and CFrame.new(180, 0, 0)
    )
    RotatePlayer(workspace.CurrentCamera.CFrame * Angle)
   elseif library.pointers.AimbotTabCategoryAntiAimbotYaw.value == "Spin" then
    game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(library.pointers.AimbotTabCategoryAntiAimbotYawStrenght.value), 0)
   elseif game.Players.LocalPlayer.Character.Humanoid.AutoRotate == false then
    game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
   end
  end

  wait(0.02)
 end
 
 if IsAlive(LocalPlayer) then
  game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
 end
end)

AimbotTabCategoryAntiAimbot:AddDropdown("Pitch", {"Default", "Up", "Down", "Boneless", "Random"}, "Default", "AimbotTabCategoryAntiAimbotPitch")

AimbotTabCategoryAntiAimbot:AddDropdown("Yaw", {"Default", "Forward", "Backward", "Left", "Right", "Spin"}, "Default", "AimbotTabCategoryAntiAimbotYaw")

AimbotTabCategoryAntiAimbot:AddSlider("Yaw Strenght", {0, 100, 50, 1, ""}, "AimbotTabCategoryAntiAimbotYawStrenght")

AimbotTabCategoryAntiAimbot:AddToggle("Remove Head Hitbox", false, "AimbotTabCategoryAntiAimbotRemoveHeadHitbox")

AimbotTabCategoryAntiAimbot:AddToggle("Disable While Climbing", false, "AimbotTabCategoryAntiAimbotDisableWhileClimbing")

AimbotTabCategoryAntiAimbot:AddKeybind("Manual Forward", nil, "AimbotTabCategoryAntiAimbotManualForward", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then library.pointers.AimbotTabCategoryAntiAimbotYaw:Set("Forward") end
end)

AimbotTabCategoryAntiAimbot:AddKeybind("Manual Left", nil, "AimbotTabCategoryAntiAimbotManualLeft", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then library.pointers.AimbotTabCategoryAntiAimbotYaw:Set("Left") end
end)

AimbotTabCategoryAntiAimbot:AddKeybind("Manual Right", nil, "AimbotTabCategoryAntiAimbotManualRight", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then library.pointers.AimbotTabCategoryAntiAimbotYaw:Set("Right") end
end)

AimbotTabCategoryAntiAimbot:AddKeybind("Manual Backward", nil, "AimbotTabCategoryAntiAimbotManualBackward", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then library.pointers.AimbotTabCategoryAntiAimbotYaw:Set("Backward") end
end)

AimbotTabCategoryAntiAimbot:AddKeybind("Manual Spin", nil, "AimbotTabCategoryAntiAimbotManualSpin", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then library.pointers.AimbotTabCategoryAntiAimbotYaw:Set("Spin") end
end)



local VisualsTab = Window:CreateTab("Visuals") 

local VisualsTabCategoryPlayers = VisualsTab:AddCategory("Players", 1)

VisualsTabCategoryPlayers:AddToggle("Enabled", false, "VisualsTabCategoryPlayersEnabled", function(val)
 ESP.Enabled = val
end)

VisualsTabCategoryPlayers:AddToggle("Info", false, "VisualsTabCategoryPlayersInfo", function(val)
 ESP.ShowInfo = val
end)

VisualsTabCategoryPlayers:AddToggle("Tracers", false, "VisualsTabCategoryPlayersTracers", function(val)
 ESP.Tracers = val
end)

VisualsTabCategoryPlayers:AddToggle("Boxes", false, "VisualsTabCategoryPlayersBoxes", function(val)
 ESP.Boxes = val
end)

VisualsTabCategoryPlayers:AddToggle("Show Team", false, "VisualsTabCategoryPlayersShowTeam", function(val)
 ESP.ShowTeam = val
end)

VisualsTabCategoryPlayers:AddToggle("Use Team Color", false, "VisualsTabCategoryPlayersUseTeamColor", function(val)
 ESP.UseTeamColor = val
end)

VisualsTabCategoryPlayers:AddMultiDropdown("Info Settings", {"Name", "Health", "Weapons", "Distance"}, {}, "VisualsTabCategoryPlayersInfoSettings", function(val)
 ESP.Info.Name = (table.find(val, "Name") and true) or false
 ESP.Info.Health = (table.find(val, "Health") and true) or false
 ESP.Info.Weapons = (table.find(val, "Weapons") and true) or false
 ESP.Info.Distance = (table.find(val, "Distance") and true) or false
end)

VisualsTabCategoryPlayers:AddColorPicker("Team Color", Color3.new(0,1,0), "VisualsTabCategoryPlayersTeamColor", function(val)
 ESP.TeamColor = val
end)

VisualsTabCategoryPlayers:AddColorPicker("Enemy Color", Color3.new(1,0,0), "VisualsTabCategoryPlayersEnemyColor", function(val)
 ESP.EnemyColor = val
end)

local VisualsTabCategoryDroppedESP = VisualsTab:AddCategory("Dropped ESP", 1)

VisualsTabCategoryDroppedESP:AddToggle("Enabled", false, "VisualsTabCategoryDroppedESPEnabled")

VisualsTabCategoryDroppedESP:AddColorPicker("Color", Color3.new(1,1,1), "VisualsTabCategoryDroppedESPColor")

VisualsTabCategoryDroppedESP:AddMultiDropdown("Info", {"Icon", "Text", "Ammo"}, {"Icon", "Text", "Ammo"}, "VisualsTabCategoryDroppedESPInfo")

local VisualsTabCategoryGrenadeESP = VisualsTab:AddCategory("Grenade ESP", 1)

VisualsTabCategoryGrenadeESP:AddToggle("Enabled", false, "VisualsTabCategoryGrenadeESPEnabled")

VisualsTabCategoryGrenadeESP:AddColorPicker("Color", Color3.new(1,0.5,0), "VisualsTabCategoryGrenadeESPColor")

VisualsTabCategoryGrenadeESP:AddMultiDropdown("Info", {"Icon", "Text"}, {"Icon", "Text"}, "VisualsTabCategoryGrenadeESPInfo")

local VisualsTabCategoryBombESP = VisualsTab:AddCategory("Bomb ESP", 1)

VisualsTabCategoryBombESP:AddToggle("Enabled", false, "VisualsTabCategoryBombESPEnabled")

VisualsTabCategoryBombESP:AddColorPicker("Color", Color3.new(1,0,0), "VisualsTabCategoryBombESPColor")

VisualsTabCategoryBombESP:AddMultiDropdown("Info", {"Icon", "Text", "Timer"}, {"Icon", "Text", "Timer"}, "VisualsTabCategoryBombESPInfo")

local VisualsTabCategoryOthers = VisualsTab:AddCategory("Others", 1)

VisualsTabCategoryOthers:AddMultiDropdown("Remove Effects", {"Scope", "Flash", "Smoke", "Bullet Holes", "Blood", "Ragdolls"}, {}, "VisualsTabCategoryOthersRemoveEffects", function(val)
 if table.find(val, "Scope") then
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.ImageTransparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Size = UDim2.new(2,0,2,0)
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Position = UDim2.new(-0.5,0,-0.5,0)
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.ImageTransparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame1.Transparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame2.Transparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame3.Transparency = 1
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame4.Transparency = 1
 else
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.ImageTransparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Size = UDim2.new(1,0,1,0)
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Position = UDim2.new(0,0,0,0)
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.ImageTransparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame1.Transparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame2.Transparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame3.Transparency = 0
  LocalPlayer.PlayerGui.GUI.Crosshairs.Frame4.Transparency = 0
 end
 
 if table.find(val, "Flash") then
  LocalPlayer.PlayerGui.Blnd.Enabled = false
 else
  LocalPlayer.PlayerGui.Blnd.Enabled = true
 end
 
 if table.find(val, "Smoke") then
  for i,v in pairs(workspace.Ray_Ignore.Smokes:GetChildren()) do
   if v.Name == "Smoke" then
    v:Remove()
   end
  end
 end
 
 if table.find(val, "Bullet Holes") then
  for i,v in pairs(workspace.Debris:GetChildren()) do
   if v.Name == "Bullet" then
    v:Remove()
   end
  end
 end
 
 if table.find(val, "Blood") then
  for i,v in pairs(workspace.Debris:GetChildren()) do
   if v.Name == "SurfaceGui" then
    v:Remove()
   end
  end
 end
 
 if table.find(val, "Ragdolls") then
  -- Ragdolls are currently disabled in the game
 end
end)

VisualsTabCategoryOthers:AddColorPicker("Ambient", Color3.new(1,1,1), "VisualsTabCategoryOthersAmbient", function(val)
 workspace.CurrentCamera.ColorCorrection.TintColor = val
end)

VisualsTabCategoryOthers:AddDropdown("Skybox", TableToNames(Skyboxes), "Default", "VisualsTabCategoryOthersSkybox", function(val)
 if game.Lighting:FindFirstChild("HEXAGON_SKYBOX") then
  game.Lighting:FindFirstChild("HEXAGON_SKYBOX"):Destroy()
 end
 
 if val ~= "Default" and rawget(Skyboxes, val) then
  local NewSkybox = Instance.new("Sky", game.Lighting)
  NewSkybox.Name = "HEXAGON_SKYBOX"
  
  for i,v in pairs(rawget(Skyboxes, val)) do
   NewSkybox[i] = v
  end
 end
 
 pcall(function()
  library.pointers.VisualsTabCategoryOthersSkybox:Refresh(TableToNames(Skyboxes))
 end)
end)

VisualsTabCategoryOthers:AddToggle("Force Crosshair", false, "VisualsTabCategoryOthersForceCrosshair")

VisualsTabCategoryOthers:AddToggle("Old Music", false, "VisualsTabCategoryOthersOldMusic", function(val)
 if val == true then
  -- T
  LocalPlayer.PlayerGui.Music.ValveT.Lose.SoundId = "rbxassetid://168869486"
  LocalPlayer.PlayerGui.Music.ValveT.Win.SoundId = "rbxassetid://203383389"
  LocalPlayer.PlayerGui.Music.ValveT.StartRound["1"].SoundId = "rbxassetid://203383443"
  StartRound2 = LocalPlayer.PlayerGui.Music.ValveT.StartRound["1"]:Clone() StartRound2.Name = "2" StartRound2.SoundId = "rbxassetid://329924698" StartRound2.Parent = LocalPlayer.PlayerGui.Music.ValveT.StartRound
  StartRound3 = LocalPlayer.PlayerGui.Music.ValveT.StartRound["1"]:Clone() StartRound3.Name = "3" StartRound3.SoundId = "rbxassetid://329924746" StartRound3.Parent = LocalPlayer.PlayerGui.Music.ValveT.StartRound
  StartRound4 = LocalPlayer.PlayerGui.Music.ValveT.StartRound["1"]:Clone() StartRound4.Name = "4" StartRound4.SoundId = "rbxassetid://329924808" StartRound4.Parent = LocalPlayer.PlayerGui.Music.ValveT.StartRound
  LocalPlayer.PlayerGui.Music.ValveT.StartAction["1"].SoundId = "rbxassetid://203383519"
  StartAction2 = LocalPlayer.PlayerGui.Music.ValveT.StartAction["1"]:Clone() StartAction2.Name = "2" StartAction2.SoundId = "rbxassetid://329924647" StartAction2.Parent = LocalPlayer.PlayerGui.Music.ValveT.StartAction
  LocalPlayer.PlayerGui.Music.ValveT["10"].SoundId = "rbxassetid://340817948"
  LocalPlayer.PlayerGui.Music.ValveT["10"].Volume = 0.4
  LocalPlayer.PlayerGui.Music.ValveT.Bomb.SoundId = "rbxassetid://340817926"
  -- CT
  LocalPlayer.PlayerGui.Music.ValveCT.Lose.SoundId = "rbxassetid://168869486"
  LocalPlayer.PlayerGui.Music.ValveCT.Win.SoundId = "rbxassetid://203383389"
  LocalPlayer.PlayerGui.Music.ValveCT.StartRound["1"].SoundId = "rbxassetid://203383443"
  StartRound2 = LocalPlayer.PlayerGui.Music.ValveCT.StartRound["1"]:Clone() StartRound2.Name = "2" StartRound2.SoundId = "rbxassetid://329924698" StartRound2.Parent = LocalPlayer.PlayerGui.Music.ValveCT.StartRound
  StartRound3 = LocalPlayer.PlayerGui.Music.ValveCT.StartRound["1"]:Clone() StartRound3.Name = "3" StartRound3.SoundId = "rbxassetid://329924746" StartRound3.Parent = LocalPlayer.PlayerGui.Music.ValveCT.StartRound
  StartRound4 = LocalPlayer.PlayerGui.Music.ValveCT.StartRound["1"]:Clone() StartRound4.Name = "4" StartRound4.SoundId = "rbxassetid://329924808" StartRound4.Parent = LocalPlayer.PlayerGui.Music.ValveCT.StartRound
  LocalPlayer.PlayerGui.Music.ValveCT.StartAction["1"].SoundId = "rbxassetid://203383519"
  StartAction2 = LocalPlayer.PlayerGui.Music.ValveCT.StartAction["1"]:Clone() StartAction2.Name = "2" StartAction2.SoundId = "rbxassetid://329924647" StartAction2.Parent = LocalPlayer.PlayerGui.Music.ValveCT.StartAction
  LocalPlayer.PlayerGui.Music.ValveCT["10"].SoundId = "rbxassetid://340817891"
  LocalPlayer.PlayerGui.Music.ValveCT["10"].Volume = 0.4
  LocalPlayer.PlayerGui.Music.ValveCT.Bomb.SoundId = "rbxassetid://340817834"
 elseif val == false then
  LocalPlayer.PlayerGui.Music.ValveT:Destroy()
  LocalPlayer.PlayerGui.Music.ValveCT:Destroy()
  oldMusicT:Clone().Parent = LocalPlayer.PlayerGui.Music
  oldMusicCT:Clone().Parent = LocalPlayer.PlayerGui.Music
 end
end)

VisualsTabCategoryOthers:AddToggle("Bullet Tracers", false, "VisualsTabCategoryOthersBulletTracers")

VisualsTabCategoryOthers:AddColorPicker("Bullet Tracers Color", Color3.new(0,0.5,1), "VisualsTabCategoryOthersBulletTracersColor")

VisualsTabCategoryOthers:AddToggle("Bullet Impacts", false, "VisualsTabCategoryOthersBulletImpacts")

VisualsTabCategoryOthers:AddColorPicker("Bullet Impacts Color", Color3.new(1,0,0), "VisualsTabCategoryOthersBulletImpactsColor")

local VisualsTabCategoryViewmodelColors = VisualsTab:AddCategory("Viewmodel Colors", 2)

VisualsTabCategoryViewmodelColors:AddToggle("Enabled", false, "VisualsTabCategoryViewmodelColorsEnabled")

VisualsTabCategoryViewmodelColors:AddLabel("")
VisualsTabCategoryViewmodelColors:AddLabel("Arms")
VisualsTabCategoryViewmodelColors:AddToggle("Enabled", false, "VisualsTabCategoryViewmodelColorsArms")
VisualsTabCategoryViewmodelColors:AddColorPicker("Color", Color3.new(1,1,1), "VisualsTabCategoryViewmodelColorsArmsColor")
VisualsTabCategoryViewmodelColors:AddSlider("Transparency", {0, 1, 0, 0.01, ""}, "VisualsTabCategoryViewmodelColorsArmsTransparency")

VisualsTabCategoryViewmodelColors:AddLabel("")
VisualsTabCategoryViewmodelColors:AddLabel("Gloves")
VisualsTabCategoryViewmodelColors:AddToggle("Enabled", false, "VisualsTabCategoryViewmodelColorsGloves")
VisualsTabCategoryViewmodelColors:AddColorPicker("Color", Color3.new(1,1,1), "VisualsTabCategoryViewmodelColorsGlovesColor")
VisualsTabCategoryViewmodelColors:AddSlider("Transparency", {0, 1, 0, 0.01, ""}, "VisualsTabCategoryViewmodelColorsGlovesTransparency")

VisualsTabCategoryViewmodelColors:AddLabel("")
VisualsTabCategoryViewmodelColors:AddLabel("Sleeves")
VisualsTabCategoryViewmodelColors:AddToggle("Enabled", false, "VisualsTabCategoryViewmodelColorsSleeves")
VisualsTabCategoryViewmodelColors:AddColorPicker("Color", Color3.new(1,1,1), "VisualsTabCategoryViewmodelColorsSleevesColor")
VisualsTabCategoryViewmodelColors:AddSlider("Transparency", {0, 1, 0, 0.01, ""}, "VisualsTabCategoryViewmodelColorsSleevesTransparency")

VisualsTabCategoryViewmodelColors:AddLabel("")
VisualsTabCategoryViewmodelColors:AddLabel("Weapons")
VisualsTabCategoryViewmodelColors:AddToggle("Enabled", false, "VisualsTabCategoryViewmodelColorsWeapons")
VisualsTabCategoryViewmodelColors:AddColorPicker("Color", Color3.new(1,1,1), "VisualsTabCategoryViewmodelColorsWeaponsColor")
VisualsTabCategoryViewmodelColors:AddDropdown("Material", {"SmoothPlastic", "Neon", "ForceField", "Wood", "Glass"}, "SmoothPlastic", "VisualsTabCategoryViewmodelColorsWeaponsMaterial")
VisualsTabCategoryViewmodelColors:AddSlider("Transparency", {0, 1, 0, 0.01, ""}, "VisualsTabCategoryViewmodelColorsWeaponsTransparency")

local VisualsTabCategoryFOVCircle = VisualsTab:AddCategory("FOV Circle", 2)

VisualsTabCategoryFOVCircle:AddToggle("Enabled", false, "VisualsTabCategoryFOVCircleEnabled", function(val)
 FOVCircle.Visible = val
end)

VisualsTabCategoryFOVCircle:AddToggle("Filled", false, "VisualsTabCategoryFOVCircleFilled", function(val)
 FOVCircle.Filled = val
end)

VisualsTabCategoryFOVCircle:AddSlider("Thickness", {1, 20, 1, 1, ""}, "VisualsTabCategoryFOVCircleThickness", function(val)
 FOVCircle.Thickness = val
end)

VisualsTabCategoryFOVCircle:AddSlider("Transparency", {0, 1, 0, 0.01, ""}, "VisualsTabCategoryFOVCircleTransparency", function(val)
 FOVCircle.Transparency = 1-val
end)

VisualsTabCategoryFOVCircle:AddSlider("NumSides", {0, 30, 0, 1, ""}, "VisualsTabCategoryFOVCircleNumSides", function(val)
 FOVCircle.NumSides = val >= 3 and val or 100
end)

VisualsTabCategoryFOVCircle:AddColorPicker("Color", Color3.new(1,1,1), "VisualsTabCategoryFOVCircleColor", function(val)
 FOVCircle.Color = val
end)

local VisualsTabCategoryViewmodel = VisualsTab:AddCategory("Viewmodel", 2)

VisualsTabCategoryViewmodel:AddToggle("Enabled", false, "VisualsTabCategoryViewmodelEnabled", function(val)
 cbClient.fieldofview = (val == true and library.pointers.VisualsTabCategoryViewmodelFOV.value or 80)
 workspace.CurrentCamera.FieldOfView = (val == true and library.pointers.VisualsTabCategoryViewmodelFOV.value or 80)
end)

VisualsTabCategoryViewmodel:AddSlider("Field of View", {0, 120, 80, 1, "°"}, "VisualsTabCategoryViewmodelFOV", function(val)
 cbClient.fieldofview = (library.pointers.VisualsTabCategoryViewmodelEnabled.value == true and val or 80)
 workspace.CurrentCamera.FieldOfView = (library.pointers.VisualsTabCategoryViewmodelEnabled.value == true and val or 80)
end)

VisualsTabCategoryViewmodel:AddSlider("Viewmodel Offset X", {0, 360, 180, 1, "°"}, "VisualsTabCategoryViewmodelOffsetX")

VisualsTabCategoryViewmodel:AddSlider("Viewmodel Offset Y", {0, 360, 180, 1, "°"}, "VisualsTabCategoryViewmodelOffsetY")

VisualsTabCategoryViewmodel:AddSlider("Viewmodel Offset Z", {0, 360, 180, 1, "°"}, "VisualsTabCategoryViewmodelOffsetZ")

VisualsTabCategoryViewmodel:AddSlider("Viewmodel Offset Roll", {0, 360, 180, 1, "°"}, "VisualsTabCategoryViewmodelOffsetRoll")

VisualsTabCategoryViewmodel:AddButton("Reset", function()
    library.pointers.VisualsTabCategoryViewmodelEnabled:Set(false)
 library.pointers.VisualsTabCategoryViewmodelFOV:Set(80)
 library.pointers.VisualsTabCategoryViewmodelOffsetX:Set(180)
 library.pointers.VisualsTabCategoryViewmodelOffsetY:Set(180)
 library.pointers.VisualsTabCategoryViewmodelOffsetZ:Set(180)
 library.pointers.VisualsTabCategoryViewmodelOffsetRoll:Set(180)
end)

local VisualsTabCategoryThirdPerson = VisualsTab:AddCategory("Third Person", 2)

VisualsTabCategoryThirdPerson:AddToggle("Enabled", false, "VisualsTabCategoryThirdPersonEnabled", function(val)
 if val == true then
  game:GetService("RunService"):BindToRenderStep("ThirdPerson", 100, function()
   if LocalPlayer.CameraMinZoomDistance ~= library.pointers.VisualsTabCategoryThirdPersonDistance.value then
    LocalPlayer.CameraMinZoomDistance = library.pointers.VisualsTabCategoryThirdPersonDistance.value
    LocalPlayer.CameraMaxZoomDistance = library.pointers.VisualsTabCategoryThirdPersonDistance.value
    workspace.ThirdPerson.Value = true
   end
  end)
 else
  game:GetService("RunService"):UnbindFromRenderStep("ThirdPerson")
  if IsAlive(LocalPlayer) then
   wait()
   workspace.ThirdPerson.Value = false
   LocalPlayer.CameraMinZoomDistance = 0
   LocalPlayer.CameraMaxZoomDistance = 0
  end
 end
end)

VisualsTabCategoryThirdPerson:AddKeybind("Keybind", nil, "VisualsTabCategoryThirdPersonKeybind", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then
  library.pointers.VisualsTabCategoryThirdPersonEnabled:Set(not library.pointers.VisualsTabCategoryThirdPersonEnabled.value)
 end
end)

VisualsTabCategoryThirdPerson:AddSlider("Distance", {0, 50, 10, 1, ""}, "VisualsTabCategoryThirdPersonDistance")


local MiscellaneousTab = Window:CreateTab("Miscellaneous")

local MiscellaneousTabCategoryMain = MiscellaneousTab:AddCategory("Main", 1)

MiscellaneousTabCategoryMain:AddDropdown("Waypoints Teleport", {"Spawn T", "Spawn CT", "Bombsite A", "Bombsite B"}, "-", "MiscellaneousTabCategoryMainWaypointsTeleport", function(val)
 if val == "Spawn T" then
  LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea"].Position + Vector3.new(0, 3, 0))
  library.pointers.MiscellaneousTabCategoryMainWaypointsTeleport:Set("-")
 elseif val == "Spawn CT" then
  LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea2"].Position + Vector3.new(0, 3, 0))
  library.pointers.MiscellaneousTabCategoryMainWaypointsTeleport:Set("-")
 elseif val == "Bombsite A" then
  LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant2"].Position + Vector3.new(0, 3, 0))
  library.pointers.MiscellaneousTabCategoryMainWaypointsTeleport:Set("-")
 elseif val == "Bombsite B" then
  LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant"].Position + Vector3.new(0, 3, 0))
  library.pointers.MiscellaneousTabCategoryMainWaypointsTeleport:Set("-")
 end
end)

MiscellaneousTabCategoryMain:AddDropdown("Places Teleport", {"Casual", "Competitive", "Deathmatch", "Trading"}, "-", "MiscellaneousTabCategoryMainPlacesTeleport", function(val)
 if val == "Casual" then
  game:GetService("TeleportService"):Teleport(301549746, LocalPlayer)
  library.pointers.MiscellaneousTabCategoryMainPlacesTeleport:Set("-")
 elseif val == "Competitive" then
  game:GetService("TeleportService"):Teleport(1480424328, LocalPlayer)
  library.pointers.MiscellaneousTabCategoryMainPlacesTeleport:Set("-")
 elseif val == "Deathmatch" then
  game:GetService("TeleportService"):Teleport(1869597719, LocalPlayer)
  library.pointers.MiscellaneousTabCategoryMainPlacesTeleport:Set("-")
 elseif val == "Trading" then
  game:GetService("TeleportService"):Teleport(5325113759, LocalPlayer)
  library.pointers.MiscellaneousTabCategoryMainPlacesTeleport:Set("-")
 end
end)

MiscellaneousTabCategoryMain:AddDropdown("Barriers", {"Normal", "Visible", "Remove"}, "-", "MiscellaneousTabCategoryMainBarriers", function(val)
 pcall(function()
 if val ~= "-" then
  local Clips = workspace.Map.Clips; Clips.Name = "FAT"; Clips.Parent = nil
  local Killers = workspace.Map.Killers; Killers.Name = "FAT"; Killers.Parent = nil

  if val == "Normal" then 
   for i,v in pairs(Clips:GetChildren()) do
    if v:IsA("BasePart") then
     v.Transparency = 1
     v.CanCollide = true
    end
   end
   for i,v in pairs(Killers:GetChildren()) do
    if v:IsA("BasePart") then
     v.Transparency = 1
     v.CanCollide = true
    end
   end
  elseif val == "Visible" then
   for i,v in pairs(Clips:GetChildren()) do
    if v:IsA("BasePart") then
     v.Transparency = 0.9
     v.Material = "Neon"
     v.Color = Color3.fromRGB(255, 0, 255)
    end
   end
   for i,v in pairs(Killers:GetChildren()) do
    if v:IsA("BasePart") then
     v.Transparency = 0.9
     v.Material = "Neon"
     v.Color = Color3.fromRGB(255, 0, 0)
    end
   end
  elseif val == "Remove" then
   for i,v in pairs(Clips:GetChildren()) do
    if v:IsA("BasePart") then
     v:Remove()
    end
   end
   for i,v in pairs(Killers:GetChildren()) do
    if v:IsA("BasePart") then
     v:Remove()
    end
   end
  end

  Killers.Name = "Killers"; Killers.Parent = workspace.Map
  Clips.Name = "Clips"; Clips.Parent = workspace.Map
  
  library.pointers.MiscellaneousTabCategoryMainBarriers:Set("-")
 end
 end)
end)

MiscellaneousTabCategoryMain:AddDropdown("Spawn Item", Weapons, "-", "MiscellaneousTabCategoryMainSpawnItem", function(val)
 if game.ReplicatedStorage.Weapons:FindFirstChild(val) then
  game.ReplicatedStorage.Events.Drop:FireServer(
   game.ReplicatedStorage.Weapons[val],
   LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4),
   game.ReplicatedStorage.Weapons[val].Ammo.Value,
   game.ReplicatedStorage.Weapons[val].StoredAmmo.Value,
   false,
   LocalPlayer,
   false,
   false
  )
  library.pointers.MiscellaneousTabCategoryMainSpawnItem:Set("-")
 end
end)

MiscellaneousTabCategoryMain:AddDropdown("Play Sound", TableToNames(Sounds), "-", "MiscellaneousTabCategoryMainPlaySound", function(val)
 if Sounds[val] ~= nil and Sounds[val]:IsA("Sound") then
  Sounds[val]:Play()
  library.pointers.MiscellaneousTabCategoryMainPlaySound:Set("-")
 end
end)

MiscellaneousTabCategoryMain:AddDropdown("Open Case", Cases, "-", "MiscellaneousTabCategoryMainOpenCase", function(val)
 if game.ReplicatedStorage.Cases:FindFirstChild(val) then
  for i=1,library.pointers.MiscellaneousTabCategoryMainOpenCaseAmount.value do
   game.ReplicatedStorage.Events.DataEvent:FireServer({"BuyCase", val})
  end
  library.pointers.MiscellaneousTabCategoryMainOpenCase:Set("-")
 end
end)

MiscellaneousTabCategoryMain:AddSlider("Open Case Amount", {1, 100, 1, 1, ""}, "MiscellaneousTabCategoryMainOpenCaseAmount")

local a,b = pcall(function()
 MiscellaneousTabCategoryMain:AddMultiDropdown("Custom Models", TableToNames(loadstring("return "..readfile("hexagon/custom_models.txt"))(), true), {}, "MiscellaneousTabCategoryMainCustomModels", function(val)
  if not ViewmodelsBackup then
   ViewmodelsBackup = game.ReplicatedStorage.Viewmodels:Clone()
  end
  
  game.ReplicatedStorage.Viewmodels:Destroy()
  
  ViewmodelsBackup:Clone().Parent = game.ReplicatedStorage
  
  for i,v in pairs(loadstring("return "..readfile("hexagon/custom_models.txt"))()) do
   if table.find(val, v.weaponname) then
    AddCustomModel(v)
   end
  end
 end)
end)

if not a then
 print(a, b)
 game.Players.LocalPlayer:Kick("Hexagon | Your custom models file is fucked up lol! "..b)
end

MiscellaneousTabCategoryMain:AddDropdown("Inventory Changer", TableToNames(Inventories), "-", "MiscellaneousTabCategoryMainInventoryChanger", function(val)
 local InventoryLoadout = LocalPlayer.PlayerGui.GUI["Inventory&Loadout"]
 local InventoriesData = loadstring("return "..readfile("hexagon/inventories.txt"))()
 
 if typeof(InventoriesData[val]) == "table" then
  cbClient.CurrentInventory = InventoriesData[val]
 elseif typeof(InventoriesData[val]) == "string" then
  if InventoriesData[val] == "table_def" then
   cbClient.CurrentInventory = oldInventory
  elseif InventoriesData[val] == "table_cus" then
   cbClient.CurrentInventory = nocw_s
  elseif InventoriesData[val] == "table_all" then
   AllSkinsTable = {}

   for i,v in pairs(game.ReplicatedStorage.Skins:GetChildren()) do
    if v:IsA("Folder") and game.ReplicatedStorage.Weapons:FindFirstChild(v.Name) then
     table.insert(AllSkinsTable, {v.Name.."_Stock"})
     
     for i2,v2 in pairs(v:GetChildren()) do
      if v2.Name ~= "Stock" then
       table.insert(AllSkinsTable, {v.Name.."_"..v2.Name})
      end
     end
    end
   end
   
   for i,v in pairs(game.ReplicatedStorage.Gloves:GetChildren()) do
    if v:IsA("Folder") and v.Name ~= "Models" then
     for i2,v2 in pairs(v:GetChildren()) do
      table.insert(AllSkinsTable, {v.Name.."_"..v2.Name})
     end
    end
   end
   
   cbClient.CurrentInventory = AllSkinsTable
  end
 end
 
 if InventoryLoadout.Visible == true then
  InventoryLoadout.Visible = false
  InventoryLoadout.Visible = true
 end
 
 pcall(function()
  library.pointers.MiscellaneousTabCategoryMainInventoryChanger:Refresh(TableToNames(Inventories))
 end)
end)

MiscellaneousTabCategoryMain:AddButton("Inject Custom Skins", function()
 if #nocw_s == 0 then
  for i,v in pairs(loadstring("return "..readfile("hexagon/custom_skins.txt"))()) do
   AddCustomSkin(v)
   game:GetService("RunService").Stepped:Wait()
  end
 end
end)

MiscellaneousTabCategoryMain:AddButton("Crash Server", function()
 if LocalPlayer.Character then
  game:GetService("RunService").RenderStepped:Connect(function()
   game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["Molotov"].Model, nil, 25, 35, Vector3.new(0,-100,0), nil, nil)
   game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["HE Grenade"].Model, nil, 25, 35, Vector3.new(0,-100,0), nil, nil)
   game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["Decoy Grenade"].Model, nil, 25, 35, Vector3.new(0,-100,0), nil, nil)
   game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["Smoke Grenade"].Model, nil, 25, 35, Vector3.new(0,-100,0), nil, nil)
   game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["Flashbang"].Model, nil, 25, 35, Vector3.new(0,-100,0), nil, nil)
  end)
 end
end)

MiscellaneousTabCategoryMain:AddButton("Inf HP", function() pcall(function()
 game.ReplicatedStorage.Events.FallDamage:FireServer(0/0)
 LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
  LocalPlayer.Character.Humanoid.Health = 100
 end)
end) end)

MiscellaneousTabCategoryMain:AddButton("FE God", function() pcall(function()
 LocalPlayer.Character.Humanoid.Parent = nil
 Instance.new("Humanoid", LocalPlayer.Character)
end) end)

MiscellaneousTabCategoryMain:AddButton("Invisibility [dont defuse]", function() pcall(function()
 local oldpos = LocalPlayer.Character.HumanoidRootPart.CFrame
 LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999,9999,9999)
 local NewRoot = LocalPlayer.Character.LowerTorso.Root:Clone()
 LocalPlayer.Character.LowerTorso.Root:Destroy()
 NewRoot.Parent = LocalPlayer.Character.LowerTorso
 wait()
 LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
end) end)

MiscellaneousTabCategoryMain:AddButton("Vote Kick Yourself", function()
 game.ReplicatedStorage.Events.Vote:FireServer(game.Players.LocalPlayer.Name)
end)

MiscellaneousTabCategoryMain:AddToggle("Anti Vote Kick", false, "MiscellaneousTabCategoryMainAntiVoteKick")

MiscellaneousTabCategoryMain:AddToggle("Anti Spectators", false, "MiscellaneousTabCategoryMainAntiSpectators")

MiscellaneousTabCategoryMain:AddToggle("Unlock Reset Character", false, "MiscellaneousTabCategoryMainUnlockResetCharacter", function(val)
 game:GetService("StarterGui"):SetCore("ResetButtonCallback", val)
end)

MiscellaneousTabCategoryMain:AddToggle("Unlock Shop While Alive", false, "MiscellaneousTabCategoryMainUnlockShopWhileAlive")

MiscellaneousTabCategoryMain:AddToggle("Show Spectators", false, "MiscellaneousTabCategoryMainShowSpectators", function(val)
 ShowSpectators = val
 
 library.base.Spectators.Visible = val
 
 while ShowSpectators do
  for i,v in pairs(library.base.Spectators.SpectatorsFrame:GetChildren()) do
   if v:IsA("TextLabel") then
    v:Destroy()
   end
  end
  
  for i,v in pairs(GetSpectators()) do
   local SpectatorLabel = Instance.new("TextLabel")
   SpectatorLabel.BackgroundTransparency = 1
   SpectatorLabel.Size = UDim2.new(1, 0, 0, 18)
   SpectatorLabel.Text = v.Name
   SpectatorLabel.TextColor3 = Color3.new(1, 1, 1)
   SpectatorLabel.Parent = library.base.Spectators.SpectatorsFrame
  end
  
  wait(0.25)
 end
end)

MiscellaneousTabCategoryMain:AddToggle("Inf Jump", false, "MiscellaneousTabCategoryMainInfJump", function(val)
 if val == true then
  JumpHook = game:GetService("UserInputService").JumpRequest:connect(function()
   game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") 
  end)
 elseif val == false and JumpHook then
  JumpHook:Disconnect()
 end
end)

MiscellaneousTabCategoryMain:AddToggle("Inf Cash", false, "MiscellaneousTabCategoryMainInfCash", function(val)
 if val == true then
  LocalPlayer.Cash.Value = 16000
  CashHook = LocalPlayer.Cash:GetPropertyChangedSignal("Value"):connect(function()
   LocalPlayer.Cash.Value = 16000
  end)
 elseif val == false and CashHook then
  CashHook:Disconnect()
 end
end)

MiscellaneousTabCategoryMain:AddToggle("Inf Stamina", false, "MiscellaneousTabCategoryMainInfStamina", function(val)
 if val == true then
  game:GetService("RunService"):BindToRenderStep("Stamina", 100, function()
   if cbClient.crouchcooldown ~= 0 then
    cbClient.crouchcooldown = 0
   end
  end)
 elseif val == false then
  game:GetService("RunService"):UnbindFromRenderStep("Stamina")
 end
end)

MiscellaneousTabCategoryMain:AddToggle("NNS Dont Talk", false, "MiscellaneousTabCategoryMainNNSDontTalk")

MiscellaneousTabCategoryMain:AddToggle("No Chat Filter", false, "MiscellaneousTabCategoryMainNoChatFilter")

MiscellaneousTabCategoryMain:AddToggle("No Fall Damage", false, "MiscellaneousTabCategoryMainNoFallDamage")

MiscellaneousTabCategoryMain:AddToggle("No Fire Damage", false, "MiscellaneousTabCategoryMainNoFireDamage")

MiscellaneousTabCategoryMain:AddToggle("Kill All", false, "MiscellaneousTabCategoryMainKillAll", function(val)
 if val == true then
  KillAllLoop = game:GetService("RunService").RenderStepped:Connect(function()
   wait()
   pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
     if v ~= LocalPlayer and IsAlive(v) and IsAlive(LocalPlayer) then
      local Arguments = {
       [1] = v.Character.Head,
       [2] = v.Character.Head.Position,
       [3] = "Banana",
       [4] = 100,
       [5] = LocalPlayer.Character.Gun,
       [8] = 100,
       [9] = false,
       [10] = false,
       [11] = Vector3.new(),
       [12] = 100,
       [13] = Vector3.new()
      }
      game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
     end
    end
   end)
  end)
 elseif val == false and KillAllLoop then
  KillAllLoop:Disconnect()
 end
end)

MiscellaneousTabCategoryMain:AddToggle("Kill Enemies", false, "MiscellaneousTabCategoryMainKillEnemies", function(val)
 if val == true then
  KillEnemiesLoop = game:GetService("RunService").RenderStepped:Connect(function()
   pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
     if v ~= LocalPlayer and IsAlive(v) and IsAlive(LocalPlayer) and GetTeam(v) ~= GetTeam(LocalPlayer) then
      local Arguments = {
       [1] = v.Character.Head,
       [2] = v.Character.Head.Position,
       [3] = "Banana",
       [4] = 100,
       [5] = LocalPlayer.Character.Gun,
       [8] = 100,
       [9] = false,
       [10] = false,
       [11] = Vector3.new(),
       [12] = 100,
       [13] = Vector3.new()
      }
      game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
     end
    end
   end)
  end)
 elseif val == false and KillEnemiesLoop then
  KillEnemiesLoop:Disconnect()
 end
end)

MiscellaneousTabCategoryMain:AddTextBox("Hit Sound", "", "MiscellaneousTabCategoryMainHitSound")

MiscellaneousTabCategoryMain:AddTextBox("Kill Sound", "", "MiscellaneousTabCategoryMainKillSound")

local MiscellaneousTabCategoryNoclip = MiscellaneousTab:AddCategory("Noclip", 1)

MiscellaneousTabCategoryNoclip:AddToggle("Enabled", false, "MiscellaneousTabCategoryNoclipEnabled", function(val)
 if val == true then
  FlyLoop = game:GetService("RunService").Stepped:Connect(function()
   if IsAlive(LocalPlayer) then
    spawn(function()
     pcall(function()
      local speed = library.pointers.MiscellaneousTabCategoryNoclipSpeed.value
      local velocity = Vector3.new(0, 1, 0)
      
      if UserInputService:IsKeyDown(Enum.KeyCode.W) then
       velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed)
      end
      if UserInputService:IsKeyDown(Enum.KeyCode.A) then
       velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.rightVector * -speed)
      end
      if UserInputService:IsKeyDown(Enum.KeyCode.S) then
       velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.lookVector * -speed)
      end
      if UserInputService:IsKeyDown(Enum.KeyCode.D) then
       velocity = velocity + (workspace.CurrentCamera.CoordinateFrame.rightVector * speed)
      end
      
      LocalPlayer.Character.HumanoidRootPart.Velocity = velocity
      LocalPlayer.Character.Humanoid.PlatformStand = true
     end)
    end)
   end
  end)
  
  NoclipLoop = game:GetService("RunService").Stepped:Connect(function()
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("BasePart") and v.CanCollide == true then
     v.CanCollide = false
    end
   end
  end)
 elseif val == false and FlyLoop and NoclipLoop then
  pcall(function()
   FlyLoop:Disconnect()
   NoclipLoop:Disconnect()
   LocalPlayer.Character.Humanoid.PlatformStand = false
  end)
 end
end)

MiscellaneousTabCategoryNoclip:AddKeybind("Keybind", nil, "MiscellaneousTabCategoryNoclipKeybind", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then
  library.pointers.MiscellaneousTabCategoryNoclipEnabled:Set(not library.pointers.MiscellaneousTabCategoryNoclipEnabled.value)
 end
end)

MiscellaneousTabCategoryNoclip:AddSlider("Speed", {0, 100, 16, 1, ""}, "MiscellaneousTabCategoryNoclipSpeed")

local MiscellaneousTabCategoryGunMods = MiscellaneousTab:AddCategory("Gun Mods", 2)

MiscellaneousTabCategoryGunMods:AddSlider("Damage Multiplier", {0, 100, 1, 0.01, "x"}, "MiscellaneousTabCategoryGunModsDamageMultiplier")

MiscellaneousTabCategoryGunMods:AddToggle("Wallbang", false, "MiscellaneousTabCategoryGunModsWallbang")

MiscellaneousTabCategoryGunMods:AddToggle("No Recoil", false, "MiscellaneousTabCategoryGunModsNoRecoil", function(val)
 if val == true then
  game:GetService("RunService"):BindToRenderStep("NoRecoil", 100, function()
   cbClient.resetaccuracy()
   cbClient.RecoilX = 0
   cbClient.RecoilY = 0
  end)
 elseif val == false then
  game:GetService("RunService"):UnbindFromRenderStep("NoRecoil")
 end
end)

MiscellaneousTabCategoryGunMods:AddToggle("No Spread", false, "MiscellaneousTabCategoryGunModsNoSpread")

MiscellaneousTabCategoryGunMods:AddToggle("Rapid Fire", false, "MiscellaneousTabCategoryGunModsRapidFire")

MiscellaneousTabCategoryGunMods:AddToggle("Full Auto", false, "MiscellaneousTabCategoryGunModsFullAuto")

MiscellaneousTabCategoryGunMods:AddToggle("Instant Reload", false, "MiscellaneousTabCategoryGunModsInstantReload")

MiscellaneousTabCategoryGunMods:AddToggle("Instant Equip", false, "MiscellaneousTabCategoryGunModsInstantEquip")

MiscellaneousTabCategoryGunMods:AddToggle("Infinite Ammo", false, "MiscellaneousTabCategoryGunModsInfiniteAmmo")

MiscellaneousTabCategoryGunMods:AddToggle("Infinite Range", false, "MiscellaneousTabCategoryGunModsInfiniteRange")

MiscellaneousTabCategoryGunMods:AddToggle("Infinite Penetration", false, "MiscellaneousTabCategoryGunModsInfinitePenetration")

-- MiscellaneousTabCategoryGunMods:AddSlider("Recoil", {0, 100, 100, 1, "%"}, "MiscellaneousTabCategoryGunModsRecoil")

MiscellaneousTabCategoryGunMods:AddDropdown("Plant", {"Normal", "Instant", "Anywhere"}, "Normal", "MiscellaneousTabCategoryGunModsPlant")

MiscellaneousTabCategoryGunMods:AddDropdown("Defuse", {"Normal", "Instant", "Anywhere"}, "Normal", "MiscellaneousTabCategoryGunModsDefuse")

MiscellaneousTabCategoryGunMods:AddButton("Plant C4", PlantC4)

MiscellaneousTabCategoryGunMods:AddButton("Defuse C4", DefuseC4)

local MiscellaneousTabCategoryBunnyHop = MiscellaneousTab:AddCategory("Bunny Hop", 2)

MiscellaneousTabCategoryBunnyHop:AddToggle("Enabled", false, "MiscellaneousTabCategoryBunnyHopEnabled")

MiscellaneousTabCategoryBunnyHop:AddSlider("Acceleration", {0, 100, 3, 1, ""}, "MiscellaneousTabCategoryBunnyHopAcceleration")

MiscellaneousTabCategoryBunnyHop:AddSlider("Minimum Velocity", {0, 100, 16, 1, ""}, "MiscellaneousTabCategoryBunnyHopMinVelocity")

MiscellaneousTabCategoryBunnyHop:AddSlider("Maximum Velocity", {0, 100, 40, 1, ""}, "MiscellaneousTabCategoryBunnyHopMaxVelocity")

local MiscellaneousTabCategoryBacktrack = MiscellaneousTab:AddCategory("Backtrack", 2)

MiscellaneousTabCategoryBacktrack:AddToggle("Enabled", false, "MiscellaneousTabCategoryBacktrackEnabled", function(val)
 if val == true then
  Backtracking = RunService.RenderStepped:Connect(function()
   if IsAlive(LocalPlayer) then
    for i,v in pairs(game.Players:GetPlayers()) do
     if IsAlive(v) and GetTeam(v) ~= GetTeam(LocalPlayer) then
      local NewBacktrackPart = Instance.new("Part")
      NewBacktrackPart.Name = v.Name
      NewBacktrackPart.Anchored = true
      NewBacktrackPart.CanCollide = false
      NewBacktrackPart.Transparency = library.pointers.MiscellaneousTabCategoryBacktrackTransparency.value
      NewBacktrackPart.Color = library.pointers.MiscellaneousTabCategoryBacktrackColor.value
      NewBacktrackPart.Size = v.Character.Head.Size
      NewBacktrackPart.CFrame = v.Character.Head.CFrame
      NewBacktrackPart.Parent = HexagonFolder
      
      local BacktrackTag = Instance.new("ObjectValue")
      BacktrackTag.Parent = NewBacktrackPart
      BacktrackTag.Name = "PlayerName"
      BacktrackTag.Value = v
      
      spawn(function()
       wait(library.pointers.MiscellaneousTabCategoryBacktrackTime.value/1000)
       NewBacktrackPart:Destroy()
      end)
     end
    end
   end
  end)
 elseif val == false and Backtracking then
  Backtracking:Disconnect()
 end
end)

MiscellaneousTabCategoryBacktrack:AddSlider("Time", {0, 1000, 200, 1, "ms"}, "MiscellaneousTabCategoryBacktrackTime")

MiscellaneousTabCategoryBacktrack:AddSlider("Transparency", {0, 1, 0, 0.01, ""}, "MiscellaneousTabCategoryBacktrackTransparency")

MiscellaneousTabCategoryBacktrack:AddColorPicker("Color", Color3.new(1,1,1), "MiscellaneousTabCategoryBacktrackColor")

local MiscellaneousTabCategoryGrenade = MiscellaneousTab:AddCategory("Grenade", 2)

MiscellaneousTabCategoryGrenade:AddKeybind("Keybind", nil, "MiscellaneousTabCategoryGrenadeKeybind", function(val)
 if val == true and UserInputService:GetFocusedTextBox() == nil then
  game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(
   game.ReplicatedStorage.Weapons[library.pointers.MiscellaneousTabCategoryGrenadeType.value].Model,
   nil,
   25,
   35,
   workspace.CurrentCamera.CFrame.lookVector * (5 * library.pointers.MiscellaneousTabCategoryGrenadeVelocity.value),
   nil,
   nil
  )
 end
end)

MiscellaneousTabCategoryGrenade:AddSlider("Velocity", {0, 100, 10, 1, ""}, "MiscellaneousTabCategoryGrenadeVelocity")

MiscellaneousTabCategoryGrenade:AddDropdown("Type", {"Molotov","HE Grenade","Decoy Grenade","Smoke Grenade","Incendiary Grenade","Flashbang"}, "Molotov", "MiscellaneousTabCategoryGrenadeType")

local MiscellaneousTabCategoryChatSpam = MiscellaneousTab:AddCategory("Chat Spam", 2)

MiscellaneousTabCategoryChatSpam:AddToggle("Enabled", false, "MiscellaneousTabCategoryChatSpamEnabled", function(val)
 ChatSpam = val
 
 while ChatSpam do
  game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(
   library.pointers.MiscellaneousTabCategoryChatSpamMessage.value,
   false,
   "Innocent",
   false,
   true
  )
  wait(3)
 end
end)

MiscellaneousTabCategoryChatSpam:AddTextBox("Message", "Hexagon is the best!", "MiscellaneousTabCategoryChatSpamMessage")

local MiscellaneousTabCategoryKeybinds = MiscellaneousTab:AddCategory("Keybinds", 2)

MiscellaneousTabCategoryKeybinds:AddKeybind("Airstuck", nil, "MiscellaneousTabCategoryKeybindsAirStuck", function(val)
 if IsAlive(LocalPlayer) and UserInputService:GetFocusedTextBox() == nil then
  for i,v in pairs(LocalPlayer.Character:GetChildren()) do
   if v:IsA("BasePart") then
    v.Anchored = val
   end
  end
 end
end)

MiscellaneousTabCategoryKeybinds:AddKeybind("Edge Jump", nil, "MiscellaneousTabCategoryKeybindsEdgeJump", function(val)
 if val == true then
  if IsAlive(LocalPlayer) and UserInputService:GetFocusedTextBox() == nil and game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Running then
   EdgeJump = true
   repeat
    wait()
    if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
     game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
    end
   until not IsAlive(LocalPlayer) or EdgeJump == false or game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
   EdgeJump = false
  end
 elseif val == false and EdgeJump == true then
  EdgeJump = false
 end
end)

MiscellaneousTabCategoryKeybinds:AddKeybind("Jump Bug", nil, "MiscellaneousTabCategoryKeybindsJumpBug", function(val)
 JumpBug = val
end)

MiscellaneousTabCategoryKeybinds:AddKeybind("Teleport", nil, "MiscellaneousTabCategoryKeybindsTeleport", function(val)
 if val == true and IsAlive(LocalPlayer) and UserInputService:GetFocusedTextBox() == nil and Mouse.Target ~= nil then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0, 2.5, 0))
 end
end)



local SettingsTab = Window:CreateTab("Settings")

local SettingsTabCategoryMain = SettingsTab:AddCategory("Main", 1)

SettingsTabCategoryMain:AddKeybind("Toggle Keybind", Enum.KeyCode.RightShift, "SettingsTabCategoryUIToggleKeybind")

SettingsTabCategoryMain:AddButton("Server Rejoin", function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

SettingsTabCategoryMain:AddButton("Copy Discord Invite", function()
 setclipboard("https://discord.gg/47YH2Ay")
end)

SettingsTabCategoryMain:AddButton("Copy Roblox Game Invite", function()
 setclipboard("Roblox.GameLauncher.joinGameInstance("..game.PlaceId..", '"..game.JobId.."')")
end)

SettingsTabCategoryMain:AddButton("Fix Vote Bug", function()
    LocalPlayer.PlayerGui.GUI.MapVote.Visible = false
 LocalPlayer.PlayerGui.GUI.Scoreboard.Visible = false
end)

SettingsTabCategoryMain:AddTextBox("Clantag", "", "SettingsTabCategoryMainClantag", function(val, focus)
 if val == "" then
  game.Players.LocalPlayer.OsPlatform = oldOsPlatform
 else
  while library.pointers.SettingsTabCategoryMainClantag.value == val do
   for i=1,#val do
    game.Players.LocalPlayer.OsPlatform = "|"..val:sub(1,i)
    wait(0.25)
   end
   wait(1)
   for i=1,4 do
    game.Players.LocalPlayer.OsPlatform = "|"..val
    wait(0.15)
    game.Players.LocalPlayer.OsPlatform = "|"..string.rep("*", #val)
    wait(0.15)
   end
   wait(0.5)
   game.Players.LocalPlayer.OsPlatform = "|"
   wait(0.5)
  end
 end
end)

local SettingsTabCategoryPlayers = SettingsTab:AddCategory("Players", 1)

SettingsTabCategoryPlayers:AddTextBox("Username", "", "SettingsTabCategoryPlayersUsername", function(val, focus)
 if game.Players:FindFirstChild(val) then
  local plr = game.Players:FindFirstChild(val)
  
  while game.Players:FindFirstChild(library.pointers.SettingsTabCategoryPlayersUsername.value) do
   wait(0.1)
   library.pointers.SettingsTabCategoryPlayersAge:Set("Age: "..plr.AccountAge.." days")
   library.pointers.SettingsTabCategoryPlayersAlive:Set("Alive: "..(IsAlive(plr) and "yes" or "no"))
   library.pointers.SettingsTabCategoryPlayersTeam:Set("Team: "..GetTeam(plr).Name)
  end
  
  library.pointers.SettingsTabCategoryPlayersAge:Set("Age: ")
  library.pointers.SettingsTabCategoryPlayersAlive:Set("Alive: ")
  library.pointers.SettingsTabCategoryPlayersTeam:Set("Team: ")
 end
end)

SettingsTabCategoryPlayers:AddLabel("Age: ", "SettingsTabCategoryPlayersAge")

SettingsTabCategoryPlayers:AddLabel("Alive: ", "SettingsTabCategoryPlayersAlive")

SettingsTabCategoryPlayers:AddLabel("Team: ", "SettingsTabCategoryPlayersTeam")

local SettingsTabCategoryConfigs = SettingsTab:AddCategory("Configs", 2)

SettingsTabCategoryConfigs:AddTextBox("Name", "", "SettingsTabCategoryConfigsName")

SettingsTabCategoryConfigs:AddDropdown("Config", {"-"}, "-", "SettingsTabCategoryConfigsConfig")

SettingsTabCategoryConfigs:AddButton("Create", function()
    writefile("hexagon/configs/"..library.pointers.SettingsTabCategoryConfigsName.value..".cfg", library:SaveConfiguration())
end)

SettingsTabCategoryConfigs:AddButton("Save", function()
    writefile("hexagon/configs/"..library.pointers.SettingsTabCategoryConfigsConfig.value..".cfg", library:SaveConfiguration())
end)

SettingsTabCategoryConfigs:AddButton("Load", function()
 local a,b = pcall(function()
  cfg = loadstring("return "..readfile("hexagon/configs/"..library.pointers.SettingsTabCategoryConfigsConfig.value..".cfg"))()
 end)
 
 if a == false then
  warn("Config Loading Error", a, b)
 elseif a == true then
  library:LoadConfiguration(cfg)
 end
end)

SettingsTabCategoryConfigs:AddButton("Refresh", function()
 local cfgs = {}

 for i,v in pairs(listfiles("hexagon/configs")) do
  if v:sub(-4) == ".cfg" then
   table.insert(cfgs, v:sub(17, -5))
  end
 end
 
 library.pointers.SettingsTabCategoryConfigsConfig.options = cfgs
end)

SettingsTabCategoryConfigs:AddButton("Set as default", function()
 if isfile("hexagon/configs/"..library.pointers.SettingsTabCategoryConfigsConfig.value..".cfg") then
  writefile("hexagon/autoload.txt", library.pointers.SettingsTabCategoryConfigsConfig.value..".cfg")
 else
  writefile("hexagon/autoload.txt", "")
 end
end)

local SettingsTabCategoryCredits = SettingsTab:AddCategory("Credits", 2)

SettingsTabCategoryCredits:AddLabel("Script - Pawel12d#0272")

SettingsTabCategoryCredits:AddLabel("ESP - Modified Kiriot ESP")

SettingsTabCategoryCredits:AddLabel("UI Library - Modified Phantom Ware")

SettingsTabCategoryCredits:AddLabel("")

SettingsTabCategoryCredits:AddLabel("Special Thanks To:")

SettingsTabCategoryCredits:AddLabel("ny#2817")

SettingsTabCategoryCredits:AddLabel("neeX#3712")

SettingsTabCategoryCredits:AddLabel("MrPolaczekPL#1884")

SettingsTabCategoryCredits:AddLabel("")

SettingsTabCategoryCredits:AddLabel("Don't steal credits or burn in hell.")



-- Other
game.Players.LocalPlayer.Additionals.TotalDamage.Changed:Connect(function(val)
 if library.pointers.MiscellaneousTabCategoryMainHitSound.value ~= "" and val ~= 0 then
  local marker = Instance.new("Sound")
  marker.Parent = game:GetService("SoundService")
  marker.SoundId = "rbxassetid://"..library.pointers.MiscellaneousTabCategoryMainHitSound.value
  marker.Volume = 3
  marker:Play()
 end
end)

game.Players.LocalPlayer.Status.Kills.Changed:Connect(function(val)
 if library.pointers.MiscellaneousTabCategoryMainKillSound.value ~= "" and val ~= 0 then
  local marker = Instance.new("Sound")
  marker.Parent = game:GetService("SoundService")
  marker.SoundId = "rbxassetid://"..library.pointers.MiscellaneousTabCategoryMainKillSound.value
  marker.Volume = 3
  marker:Play()
 end
end)

workspace.CurrentCamera.ChildAdded:Connect(function(new)
 if library.pointers.MiscellaneousTabCategoryGunModsInfiniteAmmo.value == true then
  cbClient.ammocount = 999999 -- primary ammo
  cbClient.primarystored = 999999 -- primary stored
  cbClient.ammocount2 = 999999 -- secondary ammo
  cbClient.secondarystored = 999999 -- secondary stored
 end
 spawn(function()
 if new.Name == "Arms" and new:IsA("Model") and library.pointers.VisualsTabCategoryViewmodelColorsEnabled.value == true then
  for i,v in pairs(new:GetChildren()) do
   if v:IsA("Model") and v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm") then
    local RightArm = v:FindFirstChild("Right Arm") or nil
    local LeftArm = v:FindFirstChild("Left Arm") or nil
     
    local RightGlove = (RightArm and (RightArm:FindFirstChild("Glove") or RightArm:FindFirstChild("RGlove"))) or nil
    local LeftGlove = (LeftArm and (LeftArm:FindFirstChild("Glove") or LeftArm:FindFirstChild("LGlove"))) or nil
     
    local RightSleeve = RightArm and RightArm:FindFirstChild("Sleeve") or nil
    local LeftSleeve = LeftArm and LeftArm:FindFirstChild("Sleeve") or nil
    
    if library.pointers.VisualsTabCategoryViewmodelColorsArms.value == true then
     if RightArm ~= nil then
      RightArm.Mesh.TextureId = ""
      RightArm.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsArmsTransparency.value
      RightArm.Color = library.pointers.VisualsTabCategoryViewmodelColorsArmsColor.value
     end
     if LeftArm ~= nil then
      LeftArm.Mesh.TextureId = ""
      LeftArm.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsArmsTransparency.value
      LeftArm.Color = library.pointers.VisualsTabCategoryViewmodelColorsArmsColor.value
     end
    end
    
    if library.pointers.VisualsTabCategoryViewmodelColorsGloves.value == true then
     if RightGlove ~= nil then
      RightGlove.Mesh.TextureId = ""
      RightGlove.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsGlovesTransparency.value
      RightGlove.Color = library.pointers.VisualsTabCategoryViewmodelColorsGlovesColor.value
     end
     if LeftGlove ~= nil then
      LeftGlove.Mesh.TextureId = ""
      LeftGlove.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsGlovesTransparency.value
      LeftGlove.Color = library.pointers.VisualsTabCategoryViewmodelColorsGlovesColor.value
     end
    end

    if library.pointers.VisualsTabCategoryViewmodelColorsSleeves.value == true then
     if RightSleeve ~= nil then
      RightSleeve.Mesh.TextureId = ""
      RightSleeve.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsSleevesTransparency.value
      RightSleeve.Color = library.pointers.VisualsTabCategoryViewmodelColorsSleevesColor.value
      RightSleeve.Material = "ForceField"
     end
     if LeftSleeve ~= nil then
      LeftSleeve.Mesh.TextureId = ""
      LeftSleeve.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsSleevesTransparency.value
      LeftSleeve.Color = library.pointers.VisualsTabCategoryViewmodelColorsSleevesColor.value
      LeftSleeve.Material = "ForceField"
     end
    end
   elseif library.pointers.VisualsTabCategoryViewmodelColorsWeapons.value == true and v:IsA("BasePart") and not table.find({"Right Arm", "Left Arm", "Flash"}, v.Name) and v.Transparency ~= 1 then
    if v:IsA("MeshPart") then v.TextureID = "" end
    if v:FindFirstChildOfClass("SpecialMesh") then v:FindFirstChildOfClass("SpecialMesh").TextureId = "" end

    v.Transparency = library.pointers.VisualsTabCategoryViewmodelColorsWeaponsTransparency.value
    v.Color = library.pointers.VisualsTabCategoryViewmodelColorsWeaponsColor.value
    v.Material = library.pointers.VisualsTabCategoryViewmodelColorsWeaponsMaterial.value
   end
  end
 end
 end)
end)

workspace.ChildAdded:Connect(function(new)
 if new.Name == "C4" and new:IsA("Model") and library.pointers.VisualsTabCategoryBombESPEnabled.value == true then
  local BombTimer = 40
  
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Parent = new
  BillboardGui.Adornee = new
  BillboardGui.Active = true
  BillboardGui.AlwaysOnTop = true
  BillboardGui.LightInfluence = 1
  BillboardGui.Size = UDim2.new(0, 50, 0, 50)
  
  if table.find(library.pointers.VisualsTabCategoryBombESPInfo.value, "Text") then
   local TextLabelText = Instance.new("TextLabel")
   TextLabelText.Parent = BillboardGui
   TextLabelText.ZIndex = 2
   TextLabelText.BackgroundTransparency = 1
   TextLabelText.Size = UDim2.new(1, 0, 1, 0)
   TextLabelText.Font = Enum.Font.SourceSansBold
   TextLabelText.TextColor3 = library.pointers.VisualsTabCategoryBombESPColor.value
   TextLabelText.TextSize = 14
   TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
   TextLabelText.Text = tostring(new.Name)
  end
  
  if table.find(library.pointers.VisualsTabCategoryBombESPInfo.value, "Icon") then
   local ImageLabel = Instance.new("ImageLabel")
   ImageLabel.Parent = BillboardGui
   ImageLabel.ZIndex = 1
   ImageLabel.BackgroundTransparency = 1
   ImageLabel.Size = UDim2.new(1, 0, 1, 0)
   ImageLabel.ImageColor3 = library.pointers.VisualsTabCategoryBombESPColor.value
   ImageLabel.Image = tostring(require(game.ReplicatedStorage.GetIcon).getWeaponOfKiller(new.Name))
   ImageLabel.ScaleType = Enum.ScaleType.Fit
  end
  
  if table.find(library.pointers.VisualsTabCategoryBombESPInfo.value, "Timer") then
   local TextLabelBombTimer = Instance.new("TextLabel")
   TextLabelBombTimer.Parent = BillboardGui
   TextLabelBombTimer.ZIndex = 2
   TextLabelBombTimer.BackgroundTransparency = 1
   TextLabelBombTimer.Size = UDim2.new(1, 0, 1, 0)
   TextLabelBombTimer.Font = Enum.Font.SourceSansBold
   TextLabelBombTimer.TextColor3 = library.pointers.VisualsTabCategoryBombESPColor.value
   TextLabelBombTimer.TextSize = 14
   TextLabelBombTimer.TextYAlignment = Enum.TextYAlignment.Bottom
   TextLabelBombTimer.Text = tostring(BombTimer.. "/40")
   
   spawn(function()
    repeat
     wait(1)
     BombTimer = BombTimer - 1
     TextLabelBombTimer.Text = tostring(BombTimer.. "/40")
    until BombTimer == 0 or workspace.Status.RoundOver.Value == true
   end)
  end
 end
end)

LocalPlayer.CharacterAdded:Connect(CharacterAdded)

workspace.Ray_Ignore.Smokes.ChildAdded:Connect(function(child)
 if child.Name == "Smoke" and table.find(library.pointers.VisualsTabCategoryOthersRemoveEffects.value, "Smoke") then
  wait()
  child:Remove()
 end
end)

workspace.Debris.ChildAdded:Connect(function(child)
 if child:IsA("BasePart") and game.ReplicatedStorage.Weapons:FindFirstChild(child.Name) and library.pointers.VisualsTabCategoryDroppedESPEnabled.value == true then
  wait()
  
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Parent = child
  BillboardGui.Adornee = child
  BillboardGui.Active = true
  BillboardGui.AlwaysOnTop = true
  BillboardGui.LightInfluence = 1
  BillboardGui.Size = UDim2.new(0, 50, 0, 50)
  
  if table.find(library.pointers.VisualsTabCategoryDroppedESPInfo.value, "Icon") then
   local ImageLabel = Instance.new("ImageLabel")
   ImageLabel.Parent = BillboardGui
   ImageLabel.ZIndex = 1
   ImageLabel.BackgroundTransparency = 1
   ImageLabel.Size = UDim2.new(1, 0, 1, 0)
   ImageLabel.ImageColor3 = library.pointers.VisualsTabCategoryDroppedESPColor.value
   ImageLabel.Image = tostring(require(game.ReplicatedStorage.GetIcon).getWeaponOfKiller(child.Name))
   ImageLabel.ScaleType = Enum.ScaleType.Fit
  end
  
  if table.find(library.pointers.VisualsTabCategoryDroppedESPInfo.value, "Text") then
   local TextLabelText = Instance.new("TextLabel")
   TextLabelText.Parent = BillboardGui
   TextLabelText.ZIndex = 2
   TextLabelText.BackgroundTransparency = 1
   TextLabelText.Size = UDim2.new(1, 0, 1, 0)
   TextLabelText.Font = Enum.Font.SourceSansBold
   TextLabelText.TextColor3 = library.pointers.VisualsTabCategoryDroppedESPColor.value
   TextLabelText.TextSize = 14
   TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
   TextLabelText.Text = tostring(child.Name)
  end
  
  if table.find(library.pointers.VisualsTabCategoryDroppedESPInfo.value, "Ammo") and game.ReplicatedStorage.Weapons[child.Name].StoredAmmo.Value ~= 0 then
   local TextLabelAmmo = Instance.new("TextLabel")
   TextLabelAmmo.Parent = BillboardGui
   TextLabelAmmo.ZIndex = 2
   TextLabelAmmo.BackgroundTransparency = 1
   TextLabelAmmo.Size = UDim2.new(1, 0, 1, 0)
   TextLabelAmmo.Font = Enum.Font.SourceSansBold
   TextLabelAmmo.TextColor3 = library.pointers.VisualsTabCategoryDroppedESPColor.value
   TextLabelAmmo.TextSize = 14
   TextLabelAmmo.TextYAlignment = Enum.TextYAlignment.Bottom
   TextLabelAmmo.Text = tostring(child:WaitForChild("Ammo").Value.. "/" ..child:WaitForChild("StoredAmmo").Value)
  end
 elseif child:IsA("MeshPart") and not game.ReplicatedStorage.Weapons:FindFirstChild(child.Name) and child:WaitForChild("Handle2") and library.pointers.VisualsTabCategoryGrenadeESPEnabled.value == true then
  wait()
  
  gtype = nil
  
  if child.Handle2.TextureID == game.ReplicatedStorage.Weapons["HE Grenade"].Model.Handle2.TextureID then
   gtype = "HE Grenade"
  elseif child.Handle2.TextureID == game.ReplicatedStorage.Weapons["Smoke Grenade"].Model.Handle2.TextureID then
   gtype = "Smoke Grenade"
  elseif child.Handle2.TextureID == game.ReplicatedStorage.Weapons["Incendiary Grenade"].Model.Handle2.TextureID then
   gtype = "Incendiary Grenade"
  elseif child.Handle2.TextureID == game.ReplicatedStorage.Weapons["Molotov"].Model.Handle2.TextureID then
   gtype = "Molotov"
  elseif child.Handle2.TextureID == game.ReplicatedStorage.Weapons["Flashbang"].Model.Handle2.TextureID then
   gtype = "Flashbang"
  elseif child.Handle2.TextureID == game.ReplicatedStorage.Weapons["Decoy Grenade"].Model.Handle2.TextureID then
   gtype = "Decoy Grenade"
  end
  
  if gtype ~= nil then
   local BillboardGui = Instance.new("BillboardGui")
   BillboardGui.Parent = child
   BillboardGui.Adornee = child
   BillboardGui.Active = true
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1
   BillboardGui.Size = UDim2.new(0, 50, 0, 50)
   
   if table.find(library.pointers.VisualsTabCategoryGrenadeESPInfo.value, "Icon") then
    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Parent = BillboardGui
    ImageLabel.ZIndex = 1
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Size = UDim2.new(1, 0, 1, 0)
    ImageLabel.ImageColor3 = library.pointers.VisualsTabCategoryGrenadeESPColor.value
    ImageLabel.Image = tostring(require(game.ReplicatedStorage.GetIcon).getWeaponOfKiller(gtype))
    ImageLabel.ScaleType = Enum.ScaleType.Fit
   end
   
   if table.find(library.pointers.VisualsTabCategoryGrenadeESPInfo.value, "Text") then
    local TextLabelText = Instance.new("TextLabel")
    TextLabelText.Parent = BillboardGui
    TextLabelText.ZIndex = 2
    TextLabelText.BackgroundTransparency = 1
    TextLabelText.Size = UDim2.new(1, 0, 1, 0)
    TextLabelText.Font = Enum.Font.SourceSansBold
    TextLabelText.TextColor3 = library.pointers.VisualsTabCategoryGrenadeESPColor.value
    TextLabelText.TextSize = 14
    TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
    TextLabelText.Text = tostring(gtype)
   end
  end
 elseif child.Name == "Bullet" and table.find(library.pointers.VisualsTabCategoryOthersRemoveEffects.value, "Bullet Holes") then
  wait()
  child:Remove()
 elseif child.Name == "SurfaceGui" and table.find(library.pointers.VisualsTabCategoryOthersRemoveEffects.value, "Blood") then
  wait()
  child:Remove()
 end
end)

game.ReplicatedStorage.Events.SendMsg.OnClientEvent:Connect(function(message)
 if library.pointers.MiscellaneousTabCategoryMainAntiVoteKick.value == true then
  local msg = string.split(message, " ")
  
  if game.Players:FindFirstChild(msg[1]) and msg[7] == "1" and msg[12] == game.Players.LocalPlayer.Name then
   game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
  end
 end
end)

LocalPlayer.PlayerGui.Menew.MainFrame.SkinShop.MouseButton1Click:Connect(function()
 if LocalPlayer.PlayerGui.Menew.MainFrame.SkinShop.Warn.Visible == true and library.pointers.MiscellaneousTabCategoryMainUnlockShopWhileAlive.value == true then
  LocalPlayer.PlayerGui.Menew.ShopFrame.Position = UDim2.new(1, 0, 0, 0)
  LocalPlayer.PlayerGui.Menew.ShopFrame.Visible = true
  LocalPlayer.PlayerGui.Menew.ShopFrame:TweenPosition(UDim2.new(0, 0, 0, 0))
  LocalPlayer.PlayerGui.Menew.MainFrame:TweenPosition(UDim2.new(-1, 0, 0, 0))
 end
end)

UserInputService.InputBegan:Connect(function(key, isFocused)
 if key.UserInputType == Enum.UserInputType.MouseButton1 and UserInputService:GetFocusedTextBox() == nil then
  if library.pointers.MiscellaneousTabCategoryGunModsPlant.value == "Instant" and IsAlive(LocalPlayer) and LocalPlayer.Character.EquippedTool.Value == "C4" then
   game.ReplicatedStorage.Events.PlantC4:FireServer((LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -2.75, 0)) * CFrame.Angles(math.rad(90), 0, math.rad(180)), GetSite())
  elseif library.pointers.MiscellaneousTabCategoryGunModsPlant.value == "Anywhere" and IsAlive(LocalPlayer) and LocalPlayer.Character.EquippedTool.Value == "C4" then
   PlantC4()
  end
 elseif key.KeyCode == Enum.KeyCode.E then
  if library.pointers.MiscellaneousTabCategoryGunModsDefuse.value == "Instant" and workspace:FindFirstChild("C4") then
   spawn(function()
    wait(0.25)
    if IsAlive(LocalPlayer) and workspace:FindFirstChild("C4") and workspace.C4:FindFirstChild("Defusing") and LocalPlayer.PlayerGui.GUI.Defusal.Visible == true and workspace.C4.Defusing.Value == LocalPlayer then
     LocalPlayer.Backpack.Defuse:FireServer(workspace.C4)
    end
   end)
  elseif library.pointers.MiscellaneousTabCategoryGunModsDefuse.value == "Anywhere" and IsAlive(LocalPlayer) then
   DefuseC4()
  end
 elseif key.KeyCode == library.pointers.SettingsTabCategoryUIToggleKeybind.value then
  library.base.Window.Visible = not library.base.Window.Visible
 end
end)

Mouse.Move:Connect(function()
 if FOVCircle.Visible then
  FOVCircle.Position = UserInputService:GetMouseLocation()
 end
end)

Hint.Text = "Hexagon | Setting up hooks..."

hookfunc(getrenv().xpcall, function() end)

--print(library, LocalPlayer, IsAlive, SilentRagebot, SilentLegitbot, isBhopping, JumpBug, cbClient)

local mt = getrawmetatable(game)
local createNewMessage = getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage

local oldNamecall = mt.__namecall
local oldNewIndex = getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__newindex
local oldIndex = getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__index

if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
 local callingscript = getcallingscript()
    local args = {...}
 
 if not checkcaller() then
  if method == "Kick" then
   return
  elseif method == "FireServer" then
   if self.Name == "ReplicateCamera" then
    if library.pointers.MiscellaneousTabCategoryMainAntiSpectators.value == true then
     args[1] = CFrame.new()
    elseif library.pointers.VisualsTabCategoryThirdPersonEnabled.value == true then
     args[1] = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -library.pointers.VisualsTabCategoryThirdPersonDistance.value)
    end
   elseif self.Name == "ControlTurn" and library.pointers.AimbotTabCategoryAntiAimbotEnabled.value == true and library.pointers.AimbotTabCategoryAntiAimbotPitch.value ~= "Default" then
    local angle = (
     library.pointers.AimbotTabCategoryAntiAimbotPitch.value == "Up" and 1 or
     library.pointers.AimbotTabCategoryAntiAimbotPitch.value == "Down" and -1 or
     library.pointers.AimbotTabCategoryAntiAimbotPitch.value == "Boneless" and -5 or
     library.pointers.AimbotTabCategoryAntiAimbotPitch.value == "Random" and (math.random(1,2) == 1 and 1 or -1)
    )
    if angle then
     args[1] = angle
    end
   elseif string.len(self.Name) == 38 then
    return wait(99e99)
   elseif self.Name == "ApplyGun" and args[1] == game.ReplicatedStorage.Weapons.Banana or args[1] == game.ReplicatedStorage.Weapons["Flip Knife"] then
    args[1] = game.ReplicatedStorage.Weapons.Karambit
   elseif self.Name == "HitPart" then
    args[8] = args[8] * library.pointers.MiscellaneousTabCategoryGunModsDamageMultiplier.value

    if library.pointers.VisualsTabCategoryOthersBulletTracers.value == true then
     spawn(function()
      local BulletTracers = Instance.new("Part")
      BulletTracers.Anchored = true
      BulletTracers.CanCollide = false
      BulletTracers.Material = "ForceField"
      BulletTracers.Color = library.pointers.VisualsTabCategoryOthersBulletTracersColor.value
      BulletTracers.Size = Vector3.new(0.1, 0.1, (LocalPlayer.Character.Head.CFrame.p - args[2]).magnitude)
      BulletTracers.CFrame = CFrame.new(LocalPlayer.Character.Head.CFrame.p, args[2]) * CFrame.new(0, 0, -BulletTracers.Size.Z / 2)
      BulletTracers.Name = "BulletTracers"
      BulletTracers.Parent = workspace.CurrentCamera
      wait(3)
      BulletTracers:Destroy()
     end)
    end
    
    if library.pointers.VisualsTabCategoryOthersBulletImpacts.value == true then
     spawn(function()
      local BulletImpacts = Instance.new("Part")
      BulletImpacts.Anchored = true
      BulletImpacts.CanCollide = false
      BulletImpacts.Material = "ForceField"
      BulletImpacts.Color = library.pointers.VisualsTabCategoryOthersBulletImpactsColor.value
      BulletImpacts.Size = Vector3.new(0.25, 0.25, 0.25)
      BulletImpacts.CFrame = CFrame.new(args[2])
      BulletImpacts.Name = "BulletImpacts"
      BulletImpacts.Parent = workspace.CurrentCamera
      wait(3)
      BulletImpacts:Destroy()
     end)
    end
    
    if args[1].Parent == workspace.HexagonFolder then
     if args[1].PlayerName.Value.Character and args[1].PlayerName.Value.Character.Head ~= nil then
      args[1] = args[1].PlayerName.Value.Character.Head
     end
    end
   elseif self.Name == "test" then
    return wait(99e99)
   elseif self.Name == "FallDamage" and (library.pointers.MiscellaneousTabCategoryMainNoFallDamage.value == true or JumpBug == true) then
    return
   elseif self.Name == "BURNME" and library.pointers.MiscellaneousTabCategoryMainNoFireDamage.value == true then
    return
   elseif self.Name == "DataEvent" and args[1][1] == "EquipItem" then
    local Weapon,Skin = args[1][3], string.split(args[1][4][1], "_")[2]
    local EquipTeams = (args[1][2] == "Both" and {"T", "CT"}) or {args[1][2]}

    for i,v in pairs(EquipTeams) do
     LocalPlayer.SkinFolder[v.."Folder"][Weapon]:ClearAllChildren()
     LocalPlayer.SkinFolder[v.."Folder"][Weapon].Value = Skin
     
     if args[1][4][2] == "StatTrak" then
      local Marker = Instance.new("StringValue")
      Marker.Name = "StatTrak"
      Marker.Value = args[1][4][3]
      Marker.Parent = LocalPlayer.SkinFolder[v.."Folder"][Weapon]
      
      local Count = Instance.new("IntValue")
      Count.Name = "Count"
      Count.Value = args[1][4][4]
      Count.Parent = Marker
     end
    end
   end
  elseif method == "InvokeServer" then
   if self.Name == "Moolah" then
    return wait(99e99)
   elseif self.Name == "Hugh" then
    return wait(99e99)
   elseif self.Name == "Filter" and callingscript == LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat and library.pointers.MiscellaneousTabCategoryMainNoChatFilter.value == true then
    return args[1]
   end
  elseif method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then
   if library.pointers.MiscellaneousTabCategoryGunModsWallbang.value == true then
    table.insert(args[2], workspace.Map)
   end
   
   if IsAlive(LocalPlayer) and SilentRagebot.target ~= nil then
    args[1] = Ray.new(LocalPlayer.Character.Head.Position, (SilentRagebot.target.Position - LocalPlayer.Character.Head.Position).unit * (game.ReplicatedStorage.Weapons[game.Players.LocalPlayer.Character.EquippedTool.Value].Range.Value * 0.1))
   elseif IsAlive(LocalPlayer) and SilentLegitbot.target ~= nil then
    local hitchance = math.random(0, 100)
    
    if hitchance <= library.pointers.AimbotTabCategoryLegitbotHitchance.value then
     args[1] = Ray.new(LocalPlayer.Character.Head.Position, (SilentLegitbot.target.Position - LocalPlayer.Character.Head.Position).unit * (game.ReplicatedStorage.Weapons[game.Players.LocalPlayer.Character.EquippedTool.Value].Range.Value * 0.1))
    end
   end
  elseif method == "SetPrimaryPartCFrame" and self.Name == "Arms" and library.pointers.VisualsTabCategoryViewmodelEnabled.value == true then
   args[1] = args[1] * CFrame.new(Vector3.new(math.rad(library.pointers.VisualsTabCategoryViewmodelOffsetX.value-180),math.rad(library.pointers.VisualsTabCategoryViewmodelOffsetY.value-180),math.rad(library.pointers.VisualsTabCategoryViewmodelOffsetZ.value-180))) * CFrame.Angles(0, 0, math.rad(library.pointers.VisualsTabCategoryViewmodelOffsetRoll.value-180))
  end
 end
 
 return oldNamecall(self, unpack(args))
end)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if game.Players.LocalPlayer.UserId == 1858923608 then game.Players.LocalPlayer:Kick("🤡") end -- anti skid security system :sunglasses:

getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__newindex = newcclosure(function(self, idx, val)
 if not checkcaller() then
  if self.Name == "Humanoid" and idx == "WalkSpeed" and val ~= 0 and isBhopping == true then 
   val = curVel
  elseif self.Name == "Humanoid" and idx == "JumpPower" and val ~= 0 and JumpBug == true then
   spawn(function() cbClient.UnCrouch() end)
   val = val * 1.25
  elseif self.Name == "Crosshair" and idx == "Visible" and val == false and LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Visible == false and library.pointers.VisualsTabCategoryOthersForceCrosshair.value == true then
   val = true
  end
 end
 
    return oldNewIndex(self, idx, val)
end)

getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__index = newcclosure(function(self, idx)
 if idx == "Value" then
  if self.Name == "Auto" and library.pointers.MiscellaneousTabCategoryGunModsFullAuto.value == true then
   return true
  elseif self.Name == "FireRate" and library.pointers.MiscellaneousTabCategoryGunModsRapidFire.value == true then
   return 0.001
  elseif self.Name == "ReloadTime" and library.pointers.MiscellaneousTabCategoryGunModsInstantReload.value == true then
   return 0.001
  elseif self.Name == "EquipTime" and library.pointers.MiscellaneousTabCategoryGunModsInstantEquip.value == true then
   return 0.001
  elseif self.Name == "Penetration" and library.pointers.MiscellaneousTabCategoryGunModsInfinitePenetration.value == true then
   return 200
  elseif self.Name == "Range" and library.pointers.MiscellaneousTabCategoryGunModsInfiniteRange.value == true then
   return 9999
  elseif self.Name == "RangeModifier" and library.pointers.MiscellaneousTabCategoryGunModsInfiniteRange.value == true then
   return 100
  elseif (self.Name == "Spread" or self.Parent.Name == "Spread") and library.pointers.MiscellaneousTabCategoryGunModsNoSpread.value == true then
   return 0
  elseif (self.Name == "AccuracyDivisor" or self.Name == "AccuracyOffset") and library.pointers.MiscellaneousTabCategoryGunModsNoSpread.value == true then
   return 0.001
  end
 end

    return oldIndex(self, idx)
end)

getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage = function(plr, msg, teamcolor, msgcolor, offset, line)
 if library.pointers.MiscellaneousTabCategoryMainNNSDontTalk.value == true and plr ~= game.Players.LocalPlayer.Name then
  msg = "I am retarded."
 end
 
 return createNewMessage(plr, msg, teamcolor, msgcolor, offset, line)
end

CharacterAdded()

table.foreach(game.Players:GetPlayers(), PlayerAdded)
game.Players.PlayerAdded:Connect(PlayerAdded)

for i,v in pairs({"CT", "T"}) do
 LocalPlayer.PlayerGui.GUI.Scoreboard[v].ChildAdded:Connect(function(child)
  wait(0.1)
  
  if child.Parent == LocalPlayer.PlayerGui.GUI.Scoreboard[v] and child:FindFirstChild("player") and child.player.Text ~= "PLAYER" and UserInputService:IsKeyDown(Enum.KeyCode.Tab) then
   if game.Players:FindFirstChild(child.player.Text) and game.Players[child.player.Text].OsPlatform:sub(1,1) == "|" then
    plr = game.Players[child.player.Text]
    child.player.Text = plr.OsPlatform:sub(2, 41).." "..plr.Name
    
    updater = plr:GetPropertyChangedSignal("OsPlatform"):Connect(function()
     if child and child.Parent and child:FindFirstChild("player") or UserInputService:IsKeyDown(Enum.KeyCode.Tab) and plr.OsPlatform:sub(1,1) == "|" then
      child.player.Text = plr.OsPlatform:sub(2, 41).." "..plr.Name
     else
      updater:Disconnect()
     end
    end)
   end
  end
 end)
end

if readfile("hexagon/autoload.txt") ~= "" and isfile("hexagon/configs/"..readfile("hexagon/autoload.txt")) then
 local a,b = pcall(function()
  cfg = loadstring("return "..readfile("hexagon/configs/"..readfile("hexagon/autoload.txt")))()
 end)
 
 if a == false then
  warn("Config Loading Error", a, b)
 elseif a == true then
  library:LoadConfiguration(cfg)
 end
end

print("Hexagon finished loading!")

Hint.Text = "Hexagon | Loading finished!"
wait(1.5)
Hint:Destroy()