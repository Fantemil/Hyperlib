local ore = 'Ruby'
for i,v in pairs(game:GetService("Workspace").Rock:GetDescendants()) do
if v.ClassName == 'StringValue' and v.Value == ore then
game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame= v.Parent.Part.CFrame
end
end
