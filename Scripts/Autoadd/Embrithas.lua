local ayy = game:GetService("Workspace").Enemies
local rose = true
while rose do
wait()
for _,v in ipairs(ayy:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0,15,6)
end
end
end