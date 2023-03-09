--[[
        Script Name: Hoop Central 6 Auto Time
        Game Link: https://www.roblox.com/games/7075737729/Court-Streaks-Hoop-Central-6-Pre-Alpha
        Last Update: 4/26/2022
--]]

_G.Keybind = Enum.KeyCode.J -- https://developer.roblox.com/en-us/api-reference/enum/KeyCode

-- Variables
local UIS = game:GetService("UserInputService")
local SHOOT = game:GetService("ReplicatedStorage").Remotes.server.shoot

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Function
UIS.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == _G.Keybind and Character:FindFirstChild("Connect") then

        if Humanoid.MoveDirection.Magnitude > 0 then
            SHOOT:FireServer(true, "Idle", false)
            task.wait(0.5)
            SHOOT:FireServer(false, false)
        elseif Humanoid.MoveDirection.Magnitude == 0 then
            SHOOT:FireServer(true, "Idle", false)
            task.wait(0.4)
            SHOOT:FireServer(false, false)
        end

    end
end)