local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local part = game.Workspace:FindFirstChild("part")

if part then
    character:SetPrimaryPartCFrame(part.CFrame)
else
    warn("Part named 'part' not found in Workspace.")
end