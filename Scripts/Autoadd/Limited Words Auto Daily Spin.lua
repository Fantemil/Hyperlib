--Credits to Wxer Softworks

if fireproximityprompt then
game:GetService"RunService".RenderStepped:Connect(function()
for i,v in pairs(game.Workspace.Spin2Win:GetDescendants()) do
if v.Name == "Spin2Win" then
local s_position = v.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(s_position)
fireproximityprompt(v.ProximityPrompt, 1)
end
end
end)
else
game.Players.LocalPlayer:Kick("Your Exploit Doesn't Supports FireProximityPrompt")
end