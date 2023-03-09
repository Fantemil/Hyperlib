--[[
        Script Name: Hoops Life Auto Time (Semi-Aimbot)
        Game Link: https://www.roblox.com/games/7540727946/Basketball-park-Hoops-Life-Pre-Alpha
        Last Update: 6/26/2022
--]]

_G.Keybind = Enum.KeyCode.E

local UIS = game:GetService("UserInputService")
local RUN = game:GetService("RunService")
local Storage = game:GetService("ReplicatedStorage")
local Path = Storage:WaitForChild("Remotes").Shoot
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Cheat

local Cheat_AutoTime = function()
Character.Meter.SurfaceGui.ImageLabel.Shoot.Size = UDim2.new(1, 0, 1, 0)
end

UIS.InputBegan:Connect(function(input, gpe)
if input.KeyCode == _G.Keybind and not gpe then
Cheat = RUN.Stepped:Connect(Cheat_AutoTime)
end
end)

UIS.InputEnded:Connect(function(input, gpe)
if input.KeyCode == _G.Keybind and not gpe then
wait(3)
Cheat:Disconnect()
Character.Meter.SurfaceGui.ImageLabel.Shoot.Size = UDim2.new(1, 0, 0, 0)
end
end)