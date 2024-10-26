for i,v in pairs(game.Workspace:GetChildren()) do
    local part = v
    if part:FindFirstChild("HitBox") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part.HitBox, 0)
    else
	end
end
workspace.ChildAdded:Connect(function(part)
	if part:FindFirstChild("HitBox") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part.HitBox, 0)
    else
	end
end)