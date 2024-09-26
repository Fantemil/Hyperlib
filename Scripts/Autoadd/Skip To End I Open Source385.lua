-- Zub Hub --
local player = game.Players.LocalPlayer
local destination = game.Workspace.tower.finishes.Finish

if player and destination then
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = destination.CFrame
    end
end
