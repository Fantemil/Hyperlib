_G.Collect = true

while _G.Collect and task.wait() do
    for i,v in pairs(game:GetService("Workspace").GrassObjects:GetChildren()) do
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end