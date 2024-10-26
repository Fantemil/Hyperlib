local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")

while task.wait() do
	humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) * CFrame.Angles(0, math.rad(90), math.rad(90)) * CFrame.Angles(0, math.rad(90), math.rad(90))
end