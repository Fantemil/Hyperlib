--click tp

--Join my discord server: https://discord.gg/Mb8MHNkzkP

coroutine.wrap(function()

game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function(EB_remPlr, EB_passed_v)
	local EB_MSG_V = Instance.new("IntValue")
	EB_MSG_V.Name = "EB_MSG_"..tostring((tostring([[string]])))
	EB_MSG_V.Parent = game.ReplicatedStorage
end)
_G.On = true


end)()
coroutine.wrap(function()
	game.ReplicatedStorage.ChildAdded:Connect(function(EB_c)
	if EB_c.Name == "EB_MSG_"..tostring((tostring([[string]]))) then
		spawn(function()
			task.wait(0.1)
			EB_c:Destroy()
		end)
		x = Vector3.new(tonumber(game.Players.LocalPlayer:GetMouse().Hit.Position.X), tonumber(game.Players.LocalPlayer:GetMouse().Hit.Position.Y), tonumber(game.Players.LocalPlayer:GetMouse().Hit.Position.Z))
if ((_G.On == true)) then
local EB_targetPos = x
if game.Players.LocalPlayer.Character and typeof(EB_targetPos) == "Vector3" then
	local EB_currPivot = game.Players.LocalPlayer.Character:GetPivot()
	local EB_rotX, EB_rotY, EB_rotZ = EB_currPivot:ToOrientation() 
	game.Players.LocalPlayer.Character:PivotTo(CFrame.new(EB_targetPos) * CFrame.Angles(EB_rotX, EB_rotY, EB_rotZ))
end

end

	end
end)
end)()
