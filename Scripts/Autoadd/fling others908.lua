_G.enabled = true
local rotspeed = 50 --rotation speed
local lplr = game.Players.LocalPlayer
while task.wait() do
	if _G.enabled then
		lplr.Character.Humanoid.RootPart.CFrame = lplr.Character.Humanoid.RootPart.CFrame * CFrame.Angles(0, math.rad(rotspeed % 150), 0)
	end
end