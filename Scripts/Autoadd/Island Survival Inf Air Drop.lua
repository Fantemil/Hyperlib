--INF AirDrop
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait() -- waits for the character to spawn in
local remote = char.FlareGun.PlayerClicked -- waits for the instance
local mouse = player:GetMouse()

-- MAIN:

UserInputService.InputBegan:Connect(function(input, gameprocessed)
if gameprocessed then return end
if input.UserInputType == Enum.UserInputType.MouseButton1 then
remote:FireServer(mouse.Hit.p)
-- print(mouse.Hit.p) <-- dont mind this
end
end)