local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local spawnFolder = game.Workspace:FindFirstChild("Spawns")
if spawnFolder then
    local winnerSpawn = spawnFolder:FindFirstChild("WinnerSpawn")
    if winnerSpawn then
        local characterHeight = character:FindFirstChild("Humanoid").HipHeight
        character:SetPrimaryPartCFrame(CFrame.new(winnerSpawn.Position.X, winnerSpawn.Position.Y + characterHeight, winnerSpawn.Position.Z))
    else
        warn("WinnerSpawn not found in Spawns folder.")
    end
else
    warn("Spawns folder not found in Workspace.")
end