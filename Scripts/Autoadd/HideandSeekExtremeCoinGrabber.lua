local creditsPath = game.Workspace.GameObjects
local plr = game.Players.LocalPlayer
local char = plr.Character

for i,v in pairs(creditsPath:GetChildren()) do
    char.HumanoidRootPart.CFrame = CFrame.new(v.position)
    wait(0.2)
end