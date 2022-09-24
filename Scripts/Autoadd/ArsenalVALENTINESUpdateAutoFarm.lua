platform = Instance.new('Part', workspace)
platform.Size = Vector3.new(1000,0,10200)
platform.Anchored = true
platform.Position = Vector3.new(100,-250,-200)
game.Workspace.Part.Name = "bro"
game.Workspace.bro.Locked = true
local lastpos = 100.168724, -246.475052, -190.264404
local me = game.Players.LocalPlayer.Character
game.Workspace.Debris.ChildAdded:Connect(function(v)
if v.Name == "Heart" then
me.HumanoidRootPart.CFrame = v.CFrame
else
game.Workspace.Debris.ChildRemoved:Connect(function(v2)
if v2.Name == "Heart" then
me:MoveTo(Vector3.new(lastpos))
end
end)
end
end)