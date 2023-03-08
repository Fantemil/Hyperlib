-- ultra, Cube Combination Auto Bridge Script

-- Description:
--   Automatically bridges to islands to troll server. works best in
--  recent / new servers. Press - (minus) to stop the auto bridging script.
--   Default wait time: 0.2
--   Risky wait time: anything < 0.2s

local uis = game:GetService("UserInputService")
local lplr = game.Players.LocalPlayer
local char = lplr.Character
local spawnPosition = game.Workspace.Crystal:FindFirstChildWhichIsA("MeshPart")
local pickupRemote = game:GetService("ReplicatedStorage").Events.PickUp
local offhandRemote = workspace[game.Players.LocalPlayer.Name].OffhandFunction.RemoteEvent
local waitTime = 0.2 -- Change wait time here
local disabled = false
local holdTwoPerTransfer = true -- Check if want to hold 2 cubes per bridge transfer / teleport (faster) but risky
local chosenPath = 1 -- Change to go green, yellow, red, or blue bridges. (1 = green, 2 = yellow, 3 = red, 4 = blue)

-- nil preset vars
local bridge1 = nil
local bridge1Touch = nil
local bridge2 = nil
local bridge2Touch = nil
local bridge3 = nil
local bridge3Touch = nil
local bridge4 = nil
local bridge4Touch = nil

uis.InputBegan:Connect(function(input, x)
 if x then return end
 if input.KeyCode == Enum.KeyCode.Minus then
  disabled = true
 end
end)

local function setupBridges()
 for i,v in pairs(game.Workspace.Bridges:GetChildren()) do
  if v.BrickColor == BrickColor.new("Slime green") then -- cube destroyer
   bridge1 = v
   if v:FindFirstChild("BridgeUpgrade") then
    bridge1Touch = v:FindFirstChild("BridgeUpgrade").Root
   end
  end
  if v.BrickColor == BrickColor.new("Bronze") then -- raider
   bridge2 = v
   if v:FindFirstChild("BridgeUpgrade") then
    bridge2Touch = v:FindFirstChild("BridgeUpgrade").Root
   end
  end
  if v.BrickColor == BrickColor.new("Pine Cone") then -- raider
   bridge3 = v
   if v:FindFirstChild("BridgeUpgrade") then
    bridge3Touch = v:FindFirstChild("BridgeUpgrade").Root
   end
  end
  if v.BrickColor == BrickColor.new("Smoky grey") then -- raider
   bridge4 = v
   if v:FindFirstChild("BridgeUpgrade") then
    bridge4Touch = v:FindFirstChild("BridgeUpgrade").Root
   end
  end
 end
end
setupBridges()
char.HumanoidRootPart.CFrame = CFrame.new(spawnPosition.Position)

local function getCube()
 repeat
  task.wait(0.1)
  local a = game.Workspace.Cubes:GetChildren()
  local b = a[math.random(1, #a)]
 until b
 local cubes = game.Workspace.Cubes:GetChildren()
 local randCube = cubes[math.random(1, #cubes)]
 local randCubeRoot = randCube:FindFirstChild(randCube.Name).Root
 _G.dropRemote = randCube.Drop:FindFirstChild("RemoteEvent")
 char.HumanoidRootPart.CFrame = CFrame.new(randCubeRoot.Position)
 task.wait(waitTime)
 pickupRemote:FireServer(randCube)
end
local function getCube2()
 repeat
  task.wait(0.1)
  local a = game.Workspace.Cubes:GetChildren()
  local b = a[math.random(1, #a)]
 until b
 local cubes = game.Workspace.Cubes:GetChildren()
 local randCube = cubes[math.random(1, #cubes)]
 local randCubeRoot = randCube:FindFirstChild(randCube.Name).Root
 _G.dropRemote2 = randCube.Drop:FindFirstChild("RemoteEvent")
 char.HumanoidRootPart.CFrame = CFrame.new(randCubeRoot.Position)
 task.wait(waitTime)
 pickupRemote:FireServer(randCube)
end

local function offHandCube()
 offhandRemote:FireServer(nil)
end

local function AutoBridge()
 while not disabled do
  setupBridges()
  if holdTwoPerTransfer then
   getCube()
   offHandCube()
   getCube2()
  else
   getCube()
  end
  if chosenPath == 1 then
   char.HumanoidRootPart.CFrame = CFrame.new(bridge1Touch.Position)
   task.wait(waitTime)
   if holdTwoPerTransfer then
    offHandCube()
    _G.dropRemote:FireServer(CFrame.new(bridge1Touch.Position))
    offHandCube()
    setupBridges()
    char.HumanoidRootPart.CFrame = CFrame.new(bridge1Touch.Position)
    _G.dropRemote2:FireServer(CFrame.new(bridge1Touch.Position))
   else
    _G.dropRemote:FireServer(CFrame.new(bridge1Touch.Position))
   end
  elseif chosenPath == 2 then
   char.HumanoidRootPart.CFrame = CFrame.new(bridge2Touch.Position)
   task.wait(waitTime)
   if holdTwoPerTransfer then
    offHandCube()
    _G.dropRemote:FireServer(CFrame.new(bridge2Touch.Position))
    offHandCube()
    setupBridges()
    char.HumanoidRootPart.CFrame = CFrame.new(bridge2Touch.Position)
    _G.dropRemote2:FireServer(CFrame.new(bridge2Touch.Position))
   else
    _G.dropRemote:FireServer(CFrame.new(bridge2Touch.Position))
   end
  elseif chosenPath == 3 then
   char.HumanoidRootPart.CFrame = CFrame.new(bridge3Touch.Position)
   task.wait(waitTime)
   if holdTwoPerTransfer then
    offHandCube()
    _G.dropRemote:FireServer(CFrame.new(bridge3Touch.Position))
    offHandCube()
    setupBridges()
    char.HumanoidRootPart.CFrame = CFrame.new(bridge3Touch.Position)
    _G.dropRemote2:FireServer(CFrame.new(bridge3Touch.Position))
   else
    _G.dropRemote:FireServer(CFrame.new(bridge3Touch.Position))
   end
  elseif chosenPath == 4 then
   char.HumanoidRootPart.CFrame = CFrame.new(bridge4Touch.Position)
   task.wait(waitTime)
   if holdTwoPerTransfer then
    offHandCube()
    _G.dropRemote:FireServer(CFrame.new(bridge4Touch.Position))
    offHandCube()
    setupBridges()
    char.HumanoidRootPart.CFrame = CFrame.new(bridge4Touch.Position)
    _G.dropRemote2:FireServer(CFrame.new(bridge4Touch.Position))
   else
    _G.dropRemote:FireServer(CFrame.new(bridge4Touch.Position))
   end
  end
  task.wait(1)
 end
 char.HumanoidRootPart.CFrame = CFrame.new(spawnPosition.Position) -- reset
end
AutoBridge()