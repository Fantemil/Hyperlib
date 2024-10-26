local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local oldPos = hrp.CFrame
for _, v in pairs(workspace.GameObjects:GetChildren()) do
	if v.Name == "Credit" then
		hrp.CFrame = v.CFrame
		hrp.Velocity = Vector3.new(0,0,0)
		wait(0)
	end
end
hrp.CFrame = oldPos
hrp.Velocity = Vector3.new(0,0,0)