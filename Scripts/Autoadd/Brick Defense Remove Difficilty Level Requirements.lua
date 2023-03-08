for i = 1, 3 do
game:FindFirstChildOfClass("Workspace").InsaneWall:Destroy()
end
for i,v in pairs(game.Workspace.Map1:GetChildren()) do
if v.ClassName == "Part" then
if v.BrickColor == BrickColor.new("Burnt Sienna") then
if v.CFrame == CFrame.new(-189.806992, 6.17936611, 80.6227951, 0.774138629, -0, -0.633016169, 0, 1, -0, 0.633016169, 0, 0.774138629) then
v:Destroy()
end
end
end
end