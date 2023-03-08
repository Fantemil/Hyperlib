-- ultra, Cube Combination Pickup Infinite Reach Script

-- Description:
--   Infinite reach anywhere. Can be buggy sometimes. Teleports you to the
--  cube to bypass dist check. Wait times are required to let event fire.
--   Default wait time: 0.2
--   Risky wait time: anything < 0.2s

local lplr = game.Players.LocalPlayer
local char = lplr.Character
local originalPlayerPosition = char.HumanoidRootPart.Position
local mouse = lplr:GetMouse()

local function onButton1Down()
 local result = mouse.Target
 originalPlayerPosition = char.HumanoidRootPart.Position
 if not result.Parent:FindFirstChild("Root") then
  return
 end
 if result.Parent.Root then
  char.HumanoidRootPart.CFrame = CFrame.new(result.Parent.Root.Position)
  task.wait(0.2)
  game:GetService("ReplicatedStorage").Events.PickUp:FireServer(result.Parent.Parent)
  task.wait(0.01)
  char.HumanoidRootPart.CFrame = CFrame.new(originalPlayerPosition)
 end
end

mouse.Button1Down:Connect(onButton1Down)