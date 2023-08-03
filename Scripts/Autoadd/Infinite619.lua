for EB_curr_index, EB_curr_item in ipairs(game.Workspace:GetChildren()) do
if ((EB_curr_item[tostring((tostring([[Name]])))] == (tostring([[Coin]])))) then
task.wait(tonumber((tonumber(1))))
local EB_targetPos = EB_curr_item[tostring((tostring([[Position]])))]
if game.Players.LocalPlayer.Character and typeof(EB_targetPos) == "Vector3" then
	local EB_currPivot = game.Players.LocalPlayer.Character:GetPivot()
	local EB_rotX, EB_rotY, EB_rotZ = EB_currPivot:ToOrientation() 
	game.Players.LocalPlayer.Character:PivotTo(CFrame.new(EB_targetPos) * CFrame.Angles(EB_rotX, EB_rotY, EB_rotZ))
end
end
end