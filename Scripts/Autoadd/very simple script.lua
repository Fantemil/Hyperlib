workspace.DescendantAdded:Connect(function(r)
	if r.Name == "GunDrop" then
		local plr = game.Players.LocalPlayer
		local oldc = plr.Character.HumanoidRootPart.CFrame
        task.wait()
		plr.Character.HumanoidRootPart.CFrame = r.CFrame
		task.wait(.3)
		plr.Character.HumanoidRootPart.CFrame = oldc
	end
end)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(key,istyping)
	if istyping then return end
	if key.KeyCode == Enum.KeyCode.V then
		for i,v in pairs(game.Players:GetDescendants()) do
			if v:IsA("Tool") and v.Name == "Knife" then
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = (string.format("%s is a murder.",v.Parent.Parent.Name)), -- Required
					Text = "Stay aware!", -- Required
					Icon = "rbxthumb://type=AvatarHeadShot&id=" .. v.Parent.Parent.UserId .. "&w=180&h=180 true" -- Optional
				})
			end
		end
	end
end)
uis.InputBegan:Connect(function(key,istyping)
	if istyping then return end
	if key.KeyCode == Enum.KeyCode.B then
		for i,v in pairs(game.Players:GetDescendants()) do
			if v:IsA("Tool") and v.Name == "Gun" then
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = (string.format("%s is Sheriff/Hero.",v.Parent.Parent.Name)), 
					Text = "Stay close with sheriff!", 
					Icon = "rbxthumb://type=AvatarHeadShot&id=" .. v.Parent.Parent.UserId .. "&w=180&h=180 true" 
				})
			end
		end
	end
end)