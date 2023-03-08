-- ultra, Cube Combination Cube Dumper Script

-- Description:
--   Automatically take cubes and drops them to the void. Press - (minus) to stop.
--  Recommended to not touch wait time or can break dumper (not dumping blocks even though can, etc).
--   You can change the minimum tier for a cube to be dumped. @ minimumTier (default: 1)
--   You can change the amount of cubes transported each dump. @ holdTwoPerTransfer (default: true)
--   Script stops if died / respawned.

local uis = game:GetService("UserInputService")
local lplr = game.Players.LocalPlayer
local char = lplr.Character
local hum = char.HumanoidRootPart
local spawnPosition = game.Workspace.Crystal:FindFirstChildWhichIsA("MeshPart")
local pickupRemote = game:GetService("ReplicatedStorage").Events.PickUp
local offhandRemote = workspace[game.Players.LocalPlayer.Name].OffhandFunction.RemoteEvent
local dropCharCFrame = CFrame.new(-22.2539, -4, -37.9416)
local minimumTier = 1 -- Change tier to desired amount (0-5)
local waitTime = 0.3
local disabled = false
local holdTwoPerTransfer = true -- Check to enabled 2 handed dropping transports. Riskier / buggier, but faster

-- nil preset vars
local dropRemote = nil
local dropRemote2 = nil

uis.InputBegan:Connect(function(input, x)
 if x then return end
 if input.KeyCode == Enum.KeyCode.Minus then
  disabled = true
 end
end)

char.HumanoidRootPart.CFrame = CFrame.new(spawnPosition.Position) -- reset pos

-- reset dumped cubes
for i,v in ipairs(game.Workspace.Cubes:GetChildren()) do
 if v:FindFirstChild("Dumped",1) then
  v:Destroy()
 end
end

-- cube functions
local function getCube()
 local randCube = nil
 for i,v in ipairs(game.Workspace.Cubes:GetChildren()) do
  if v:FindFirstChild(v.Name,1) and v[v.Name]:FindFirstChild("Tier",1).Value >= minimumTier and not game.Workspace.Cubes[v.Name]:FindFirstChild("Dumped",1) then
   randCube = game.Workspace.Cubes[v.Name]
  end
 end
 -- randCube:FindFirstChild(randCube.Name,1)
 if randCube then
  dropRemote = randCube.Drop:FindFirstChild("RemoteEvent",1)
  char.HumanoidRootPart.CFrame = CFrame.new(randCube[randCube.Name].Root.Position)
  task.wait(waitTime)
  pickupRemote:FireServer(randCube)
  local checkIfThrownAlready = Instance.new("StringValue", randCube)
  checkIfThrownAlready.Name = "Dumped"
 else
  return false
 end
end
local function getCube2()
 local randCube = nil
 for i,v in ipairs(game.Workspace.Cubes:GetChildren()) do
  if v:FindFirstChild(v.Name,1) and v[v.Name]:FindFirstChild("Tier",1).Value >= minimumTier and not game.Workspace.Cubes[v.Name]:FindFirstChild("Dumped",1) then
   randCube = game.Workspace.Cubes[v.Name]
  end
 end
 if randCube then
  dropRemote2 = randCube.Drop:FindFirstChild("RemoteEvent",1)
  char.HumanoidRootPart.CFrame = CFrame.new(randCube[randCube.Name].Root.Position)
  task.wait(waitTime)
  pickupRemote:FireServer(randCube)
  local checkIfThrownAlready = Instance.new("StringValue", randCube)
  checkIfThrownAlready.Name = "Dumped"
 else
  return false
 end
end
local function offHandCube()
 offhandRemote:FireServer(nil)
end

-- main function
local function DumpCubes()
 while not disabled do
  if holdTwoPerTransfer then
   getCube()
   offHandCube()
   getCube2()
  else
   getCube()
  end
  hum.CFrame = dropCharCFrame
  task.wait(0.2)
  if holdTwoPerTransfer then
   offHandCube()
   dropRemote:FireServer(CFrame.new(hum.Position))
   offHandCube()
   dropRemote2:FireServer(CFrame.new(hum.Position))
  else
   dropRemote:FireServer(CFrame.new(hum.Position))
  end
 end
 hum.CFrame = CFrame.new(spawnPosition.Position) -- reset pos
 offHandCube()
 dropRemote:FireServer(CFrame.new(hum.Position))
 offHandCube()
 dropRemote2:FireServer(CFrame.new(hum.Position))
end
DumpCubes()