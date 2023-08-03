--made by McletsHacks
--for erlc only
--only work withe instand die: game.Players.LocalPlayer.Character.Humanoid.Health = 0
--shit script but does its job

while wait() do
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        local pos = game:GetService "Players".LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(9.3)
        game:GetService "Players".LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end
end