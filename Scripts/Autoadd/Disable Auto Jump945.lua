local Game = game
local Players = Game:GetService("Players")
local Player = Players.LocalPlayer

local function setAutoJumpEnabled()
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    Humanoid.AutoJumpEnabled = false
end

setAutoJumpEnabled()

Player.CharacterAdded:Connect(setAutoJumpEnabled)