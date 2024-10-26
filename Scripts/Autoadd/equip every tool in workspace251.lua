local chr = game.Players.LocalPlayer.Character
local root = chr.HumanoidRootPart
local hummy = chr:FindFirstChildOfClass"Humanoid"
local oldpos = root.CFrame
for i, v in next, workspace:GetDescendants() do
	if v:IsA"Tool" then
		if v:FindFirstChild("Handle") then --u need a handle for the equipment to work
			if hummy.Parent:FindFirstChildOfClass("Tool") then
				hummy:UnequipTools()
			end
			wait(0.015) --fix unequiptools lag or smth
			root.CFrame = v.Handle.CFrame
			wait(0.017)
		end
	end
end
root.CFrame = oldpos