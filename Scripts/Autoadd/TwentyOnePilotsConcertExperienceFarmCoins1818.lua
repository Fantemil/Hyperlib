local you = game.Players.LocalPlayer.Character.HumanoidRootPart
local oldpos = you.CFrame
for i,v in ipairs(game:GetService("ReplicatedStorage").Orchestra.Scenes.PSV.Environment.Server.ScavengerHunt:GetChildren()) do
    if v:IsA("MeshPart") then
    you.CFrame = v.CFrame
    wait(.1)
end
you.CFrame = oldpos
end