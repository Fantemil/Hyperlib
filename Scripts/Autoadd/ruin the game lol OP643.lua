local args = {[1] = game:GetService("Players").LocalPlayer}



function all()
	task.wait()
	for _,v in pairs(game.ReplicatedStorage:GetDescendants()) do
		if v:IsA("RemoteEvent") then
			v:FireServer()
		end
	end
end


local inputservice = game:GetService("UserInputService")
inputservice.InputBegan:Connect(function(input, gamestuff)
	if gamestuff then return end
    if input.KeyCode == Enum.KeyCode.Q then
       for i = 1,5 do
			all()
			task.wait(.3)
		end
    end
end)


