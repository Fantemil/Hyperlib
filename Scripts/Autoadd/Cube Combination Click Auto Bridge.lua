-- ultra, Cube Combination Click Auto Bridge Script

-- Description:
--   Allows auto bridging past starter island. READ INSTRUCTIONS ON HOW TO USE.
--  Press minus (-) to stop script.
--   Step 1: Click on the END of the bridge (3 block wide separation  between upgrade and main connection which has the glowy circle).
--   Step 2: If done correctly it will automatically begin auto bridging.
--   Step 3: Once auto bridge is done, press minus (-) to stop.
--   Step 4: Profit?!

-- By "end of bridge" you click the very end of the bridge. That is because that is 
-- the "BridgeUpgrade" part, and you will know you did it right if it starts working.

-- predifined vars
local spawnPosition = game.Workspace.Crystal:FindFirstChildWhichIsA("MeshPart")
local pickupRemote = game:GetService("ReplicatedStorage").Events.PickUp
local offhandRemote = workspace[game.Players.LocalPlayer.Name].OffhandFunction.RemoteEvent
local waitTime = 0.2
local holdTwoPerTransfer = true -- Check to enabled 2 handed dropping transports. Riskier / buggier, but faster
local uis = game:GetService("UserInputService")
local lplr = game.Players.LocalPlayer
local char = lplr.Character
local hum = char.HumanoidRootPart
local mouse = lplr:GetMouse()
local minimumTier = 0 -- Change tier to desired amount (0-5)
local x = 0
local disabled = false

-- nil preset vars
local dropRemote = nil
local dropRemote2 = nil
local result = nil

-- disable script
uis.InputBegan:Connect(function(input, x)
 if x then return end
 if input.KeyCode == Enum.KeyCode.Minus then
  -- originally was going to add selection box around current auto bridging target
  -- but it seems it automatically deletes and refreshes all children so (:
  disabled = true
 end
end)

-- cube functions
local function getCube()
 local randCube = nil
 for i,v in ipairs(game.Workspace.Cubes:GetChildren()) do
  if v:FindFirstChild(v.Name,1) and v[v.Name]:FindFirstChild("Tier",1).Value >= minimumTier then
   randCube = game.Workspace.Cubes[v.Name]
  end
 end
 if randCube then
  dropRemote = randCube.Drop:FindFirstChild("RemoteEvent",1)
  char.HumanoidRootPart.CFrame = CFrame.new(randCube[randCube.Name].Root.Position)
  task.wait(waitTime)
  pickupRemote:FireServer(randCube)
 else
  return false
 end
end
local function getCube2()
 local randCube = nil
 for i,v in ipairs(game.Workspace.Cubes:GetChildren()) do
  if v:FindFirstChild(v.Name,1) and v[v.Name]:FindFirstChild("Tier",1).Value >= minimumTier then
   randCube = game.Workspace.Cubes[v.Name]
  end
 end
 if randCube then
  dropRemote2 = randCube.Drop:FindFirstChild("RemoteEvent",1)
  char.HumanoidRootPart.CFrame = CFrame.new(randCube[randCube.Name].Root.Position)
  task.wait(waitTime)
  pickupRemote:FireServer(randCube)
 else
  return false
 end
end
local function offHandCube()
 offhandRemote:FireServer(nil)
end

-- main function
local function onButton1Down()
 if x>0 then
  return
 end
 result = mouse.Target
 local resultTouch = nil
 if disabled then
  return
 end
 if not result.Name == "BridgeUpgrade" then
  return
 end
 x=x+1
 resultTouch = result.Parent:FindFirstChild("Root",1)
 local resultMain = result.Parent.Parent
 while not disabled do
  if holdTwoPerTransfer then
   getCube()
   offHandCube()
   getCube2()
  else
   getCube()
  end
  char.HumanoidRootPart.CFrame = CFrame.new(resultMain.BridgeUpgrade.Root.Position)
  task.wait(waitTime)
  if holdTwoPerTransfer then
   offHandCube()
   dropRemote:FireServer(CFrame.new(resultMain.BridgeUpgrade.Root.Position))
   offHandCube()
   char.HumanoidRootPart.CFrame = CFrame.new(resultMain.BridgeUpgrade.Root.Position)
   dropRemote2:FireServer(CFrame.new(resultMain.BridgeUpgrade.Root.Position))
  else
   dropRemote:FireServer(CFrame.new(resultMain.BridgeUpgrade.Root.Position))
  end
  dropRemote:FireServer(CFrame.new(resultMain.BridgeUpgrade.Root.Position))
  offHandCube()
  dropRemote2:FireServer(CFrame.new(resultMain.BridgeUpgrade.Root.Position))
 end
 char.HumanoidRootPart.CFrame = CFrame.new(spawnPosition.Position)
end

mouse.Button1Down:Connect(onButton1Down)