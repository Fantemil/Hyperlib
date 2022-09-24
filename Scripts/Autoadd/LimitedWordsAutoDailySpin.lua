--Credits to Wxer Softworks

if fireproximityprompt then
game:GetService"RunService".RenderStepped:Connect(function()
for i,v in pairs(game.Workspace.Spin2Win:GetDescendants()) do
if v.Name == "Spin2Win" and v.ClassName == "Part" then
local s_position = v.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(s_position)
fireproximityprompt(v.ProximityPrompt, 1)
end