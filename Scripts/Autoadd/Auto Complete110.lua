local current = game:GetService("Players").LocalPlayer.leaderstats.Stage.Value
local plr = game:GetService("Players").LocalPlayer.Character
local check = game.Workspace.Checkpoints
for i = current, 302 do
    plr.HumanoidRootPart.CFrame = check[i].CFrame
    wait(1.25)
end
-- Bac0nH1ckOff