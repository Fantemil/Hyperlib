local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
while wait(0.01) do
    local range = 25  -- set your range here
    local tplr = nil
    local cdist = math.huge
    for _, plrs in ipairs(Players:GetPlayers()) do
        if plrs ~= LocalPlayer and plrs.Character and plrs.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (plrs.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if dist < cdist and dist <= range and plrs.Character:FindFirstChild("Humanoid") and plrs.Character.Humanoid.Health > 0 then
                tplr = plrs
                cdist = dist
            end
        end
    end
	if tplr then
    	LocalPlayer.Character.Glock.RemoteEvent:FireServer(tplr.Character.HumanoidRootPart.Position, tplr.Character.HumanoidRootPart.Position)
	end
end
