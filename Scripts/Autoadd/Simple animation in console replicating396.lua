Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://" .. math.random(1000000, 9999999) .. "\n3"
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
Anim:Destroy()

wait(1)

Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://" .. math.random(1000000, 9999999) .. "\n2"
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
Anim:Destroy()

wait(1)

Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://" .. math.random(1000000, 9999999) .. "\n1"
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
Anim:Destroy()

wait(1)

enters = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
i = 10
while wait(0.1) do
    i += 1
    message = enters
    if i == 11 then
        i = 1
    end
		for j = 1, 10 do
			if i == j then
				message = message .. "🟥"
			else
				message = message .. "⬛"
			end
		end
	Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://" .. math.random(1000000, 9999999) .. message
	game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
	Anim:Destroy()
end