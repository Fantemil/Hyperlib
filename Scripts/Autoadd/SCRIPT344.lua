local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local spawnFolder = game.Workspace:FindFirstChild("Spawns")
if spawnFolder then
    local winnerSpawn = spawnFolder:FindFirstChild("WinnerSpawn")
    if winnerSpawn then
        character:SetPrimaryPartCFrame(winnerSpawn.CFrame)
    else
        warn("WinnerSpawn not found in Spawns folder.")
    end
else
    warn("Spawns folder not found in Workspace.")
end