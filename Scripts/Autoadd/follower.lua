pathFinder = game:GetService("PathfindingService")
path = pathFinder:CreatePath()
local Me = game.Players.LocalPlayer
pathFolder = Instance.new("Folder")
pathFolder.Name = "pathFolder"
pathFolder.Parent = game.Workspace

while true do
pcall(function()
  num = math.random(1,#game.Players:GetChildren())
RandomPlayer = game.Players:GetChildren() [num]
while RandomPlayer == Me do
	num = math.random(1,#game.Players:GetChildren())
	RandomPlayer = game.Players:GetChildren() [num]
	wait(0)
end

PlrPos = RandomPlayer.Character.HumanoidRootPart.Position

--warn(RandomPlayer)
startPos=Me.Character.HumanoidRootPart.Position
endPos = PlrPos
path:ComputeAsync(startPos, endPos)

for i, wayPoint in pairs(path:GetWaypoints()) do
	sphere=Instance.new("Part")
    sphere.Color =  Color3.new(1, 0, 0)
    sphere.Material = Enum.Material.Neon
    sphere.Size = Vector3.new(1, 1, 1)
    sphere.Position = wayPoint.Position
    sphere.Shape = Enum.PartType.Ball
    sphere.Anchored = true
    sphere.CanCollide = false
    sphere.CanQuery = false
    sphere.CanTouch = false
    sphere.Parent = pathFolder
end

for i, wayPoint in pairs(path:GetWaypoints()) do
	Me.Character.Humanoid:MoveTo(wayPoint.Position)

	if wayPoint.Action == Enum.PathWaypointAction.Jump then
		Me.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end

	Me.Character.Humanoid.MoveToFinished:wait()
end
for i,v in pairs(pathFolder:GetChildren()) do
	v:Destroy()
end
--warn("end")
wait(5)
end)
end