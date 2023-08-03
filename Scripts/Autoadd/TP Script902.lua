

coroutine.wrap(function()

local EB_CHAT_PLR = game.Players.LocalPlayer
EB_CHAT_PLR.Chatted:Connect(function(EB_CHATMSG1)
	EB_CHATMSG = EB_CHATMSG1
	EB_SENDER = EB_CHAT_PLR
	local EB_MSG_V = Instance.new("IntValue")
	EB_MSG_V.Name = "EB_MSG_"..tostring((tostring([[Chatted]])))
	EB_MSG_V.Parent = game.ReplicatedStorage
end)


end)()
coroutine.wrap(function()
	game.ReplicatedStorage.ChildAdded:Connect(function(EB_c)
	if EB_c.Name == "EB_MSG_"..tostring((tostring([[Chatted]]))) then
		spawn(function()
			task.wait(0.1)
			EB_c:Destroy()
		end)
		for EB_curr_index, EB_curr_item in ipairs(game.Players:GetPlayers()) do
if ((((tostring(EB_CHATMSG):split(tostring((tostring([[ ]])))))[tonumber((tonumber(1)))] == (tostring([[/tp]]))) and ((tostring(EB_CHATMSG):split(tostring((tostring([[ ]])))))[tonumber((tonumber(2)))] == EB_curr_item[tostring((tostring([[Name]])))]))) then
EB_foundChild = EB_curr_item.Character:FindFirstChild(tostring((tostring([[HumanoidRootPart]]))))
local EB_targetPos = EB_foundChild.Position
if game.Players.LocalPlayer.Character and typeof(EB_targetPos) == "Vector3" then
	local EB_currPivot = game.Players.LocalPlayer.Character:GetPivot()
	local EB_rotX, EB_rotY, EB_rotZ = EB_currPivot:ToOrientation() 
	game.Players.LocalPlayer.Character:PivotTo(CFrame.new(EB_targetPos) * CFrame.Angles(EB_rotX, EB_rotY, EB_rotZ))
end

end

end

	end
end)
end)()
