-- lol this script is made temporary for the in game event
-- so dont expect any good quality

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)


game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("ClientManager",20):Destroy() -- to prevent from in game anti afk
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("UI",20):Destroy()
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("PopUp",20):Destroy()
print("script started omGGG!!!!") -- pro debug real

local Char = Game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local Humanoid = Char:FindFirstChildOfClass("Humanoid") or Char:WaitForChild("Humanoid",20)
game:GetService("ReplicatedStorage").RemoteEvents.Spectate:FireServer()
function GoToSafeSpot()
local Char = Game.Players.LocalPlayer.Character
local PFS = game:GetService("PathfindingService")
local function getPath(destination)
local path = PFS:CreatePath()
	path:ComputeAsync(Char.HumanoidRootPart.Position, destination)
	return path
end

local function pathFindTo(destination)
	local path = getPath(destination)
	
		for i,waypoint in pairs(path:GetWaypoints()) do

			if waypoint.Action == Enum.PathWaypointAction.Jump then
				Humanoid.Jump =true
			end

			Humanoid:MoveTo(waypoint.Position)
			Humanoid.MoveToFinished:Wait()

		end
		end
	pathFindTo(Vector3.new(473.946533203125, 3.5, 66.75997161865234))
end
task.spawn(function()
GoToSafeSpot()
while task.wait(5) do
    task.spawn(function()
GoToSafeSpot()
end)
end
end)
workspace.ChildAdded:Connect(function(Child)
	if Child.Name == "ArcadeBunnyCrate" then
		print("Trying to get it")
		repeat 
		print("Tried")
		task.spawn(function()
		for i,v in pairs(Child:GetChildren()) do
			if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
					v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
		end
	end)
			task.wait()
			until Child == nil or task.wait(2.5)
	end
end)