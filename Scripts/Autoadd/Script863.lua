local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local touchPart = game.Workspace.RankGiverPads.Model:FindFirstChild("TouchPart")

if touchPart then
    humanoidRootPart.CFrame = touchPart.CFrame
else
    warn("TouchPart not found!")
end