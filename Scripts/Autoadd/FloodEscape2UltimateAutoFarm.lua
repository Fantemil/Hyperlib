x = 0
game.Players.LocalPlayer.Character.Humanoid.Changed:Connect(function(property)
    if property == "Health" then
      game.Players.LocalPlayer.Character.Humanoid.Health = 99999
    end
end)
while wait(.15) do
pcall(function()
game:GetService("ReplicatedStorage").Game.VoteForMap:InvokeServer("UnderSci")
game.Players.LocalPlayer.Character.Torso.Anchored = false
if x >= 25 then
x = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Multiplayer.Map.ExitRegion.Position)
wait(0.5)
end
x = x + 1
repeat wait() until not workspace:FindFirstChild("OldMap")
workspace.Multiplayer:WaitForChild("Map")
for i,v in next, workspace.Multiplayer.Map:GetDescendants() do
if string.find(v.Name,"Hitbox") then
if v then
if v.Parent.Name == "_Button" .. tostring(x) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position + Vector3.new(0.5,0.5,0.5))
wait(.1)
end
end
end
end
end)
end