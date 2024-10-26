local buttons = workspace.Buttons
local plr = game.Players.LocalPlayer.Character
for _,v in pairs(buttons:GetDescendants()) do
    if v:IsA("Part") and v.Color ~= Color3.new(170, 85, 0) then
        plr.HumanoidRootPart.CFrame = v.CFrame
        wait(.3)
        fireclickdetector(v.ClickDetector)
    end
end
for _,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end
-- Bac0nH1ckOff