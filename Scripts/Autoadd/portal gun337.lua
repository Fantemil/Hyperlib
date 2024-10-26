local lp = game.Players.LocalPlayer
local chr = lp.Character

local teleportpart1 = Instance.new("Part", workspace)
teleportpart1.Color = Color3.new(1, 0, 0)
teleportpart1.RightSurface = Enum.SurfaceType.Smooth
teleportpart1.BackSurface = Enum.SurfaceType.Smooth
teleportpart1.BottomSurface = Enum.SurfaceType.Smooth
teleportpart1.LeftSurface = Enum.SurfaceType.Smooth
teleportpart1.FrontSurface = Enum.SurfaceType.Smooth
teleportpart1.TopSurface = Enum.SurfaceType.Smooth
teleportpart1.Anchored = true
teleportpart1.Size = Vector3.new(5.38, 0.66, 4.46)
teleportpart1.Position = Vector3.new(math.huge, math.huge, math.huge)

local teleportpart2 = Instance.new("Part", workspace)
teleportpart2.Color = Color3.new(0, 1, 0)
teleportpart2.RightSurface = Enum.SurfaceType.Smooth
teleportpart2.BackSurface = Enum.SurfaceType.Smooth
teleportpart2.BottomSurface = Enum.SurfaceType.Smooth
teleportpart2.LeftSurface = Enum.SurfaceType.Smooth
teleportpart2.FrontSurface = Enum.SurfaceType.Smooth
teleportpart2.TopSurface = Enum.SurfaceType.Smooth
teleportpart2.Anchored = true
teleportpart2.Size = Vector3.new(5.38, 0.66, 4.46)
teleportpart2.Position = Vector3.new(math.huge, math.huge, math.huge)

local tpTool = Instance.new("Tool", lp.Backpack)
tpTool.Name = "teleportGun"

local w
teleportpart1.Touched:Connect(function(hit)
	local w = hit.Parent.HumanoidRootPart
	if w.Parent.Name == lp.Name then
		w.CFrame = teleportpart2.CFrame + Vector3.new(0, 5, 0)
		teleportpart2.CanTouch = false
		wait(1)
		teleportpart2.CanTouch = true
	end
end)

teleportpart2.Touched:Connect(function(hit)
	local w = hit.Parent:FindFirstChild("HumanoidRootPart")
	if w.Parent.Name == lp.Name then
		w.CFrame = teleportpart1.CFrame + Vector3.new(0, 5, 0)
		teleportpart1.CanTouch = false
		wait(1)
		teleportpart1.CanTouch = true
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
	if tpTool.Parent == chr then
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			teleportpart1.Position = lp:GetMouse().Hit.p
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			teleportpart2.Position = lp:GetMouse().Hit.p
		end
	end
end)