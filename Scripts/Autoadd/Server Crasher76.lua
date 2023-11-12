local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
while true do
    wait()
    local cplr = nil
    local cdist = math.huge
    for _, oplr in ipairs(Players:GetPlayers()) do
        if oplr ~= LocalPlayer and oplr.Character and oplr.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (oplr.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if dist < cdist then
                cplr = oplr
                cdist = dist
            end
        end
    end
	for i = 1, 50 do --remove this if you want a semi-killaura (this right now actually is a double use as it can also shoot the closest player)
    	LocalPlayer.Character.Glock.RemoteEvent:FireServer(cplr.Character.HumanoidRootPart.Position, cplr.Character.HumanoidRootPart.Position)
	end --remove this too if you want the killaura
end
