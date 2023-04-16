local args = {
   [1] = "500kfavs"
}

game:GetService("ReplicatedStorage").InsertCode:InvokeServer(unpack(args))
wait(1)
local args = {
   [1] = "190klikes"
}

game:GetService("ReplicatedStorage").InsertCode:InvokeServer(unpack(args))
wait(0.5)
getgenv().Loop = true --change to false if you want to turn off autofarm
local Part = Instance.new("Part")
Part.Position = Vector3.new(0,5000,0)
Part.Anchored = true
Part.CanCollide = true
Part.Color = Color3.new(27, 42, 53)
Part.Material = "Pavement"
Part.Parent = Workspace
Part.Size = Vector3.new(9e9,0,9e9)
while getgenv().Loop do
local Player = game.Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local vehicle = Workspace:FindFirstChild(Player.Name .. "Car",true)
local destinationCFrame = CFrame.new(0,5004,0)
local teleportDelay = 1.5
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.W, false, game)
function teleportToDestination()
   vehicle:SetPrimaryPartCFrame(destinationCFrame)
   wait(teleportDelay)
end

teleportToDestination()
end