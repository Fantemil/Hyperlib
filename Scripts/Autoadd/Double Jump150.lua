local UIS = game:GetService("UserInputService")
local character = game.Players.LocalPlayer.Character
local humanoid = character.Humanoid

local jumps = 0
local maxJumps = 2
local jumpTick = tick()

humanoid.StateChanged:Connect(function(old, new)
	if new == Enum.HumanoidStateType.Landed then
		jumps = 0
	end
end)

UIS.JumpRequest:Connect(function()
	if jumps < maxJumps and tick() - jumpTick > 0.2 then
		jumpTick = tick()
		jumps += 1
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)