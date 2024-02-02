getgenv().config = {
	adjustment = 3.7, 
	hit_range = 0.5, 

	mode = 'Hold', 
	deflect_type = 'Remote', 
	notifications = true,
	keybind = Enum.KeyCode.E
}


if getgenv().hasLoaded then return end

local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinneli/Dynissimo/main/Scripts/AkaliNoti.lua"))()
local LocalPlayer = game:GetService("Players").LocalPlayer
local Balls = game:GetService("Workspace").Balls

local IsTargeted = false
local CanHit = false

local getBall = function()
	local RealBall

	for i, v in pairs(Balls:GetChildren()) do
		if v:GetAttribute("realBall") == true then
			RealBall = v
		end
	end
	return RealBall
end

function LocalTarget()
	local Ball = getBall()


	if Ball and Ball:GetAttribute("target") == LocalPlayer.Name then
		return true
	end
	return false
end

function DetectBall()
	local Ball = getBall()

	if Ball then
		local BallVelocity,BallPosition  = Ball.Velocity.Magnitude, Ball.Position
		local PlayerPosition = LocalPlayer.Character.HumanoidRootPart.Position

		local Distance = (BallPosition - PlayerPosition).Magnitude

		Distance -= BallVelocity * (game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000)
		Distance -= getgenv().config.adjustment

		local Hit = Distance / BallVelocity

		if Hit <= getgenv().config.hit_range then
			return true
		end
	end
	return false
end

function DeflectBall()
	if IsTargeted and DetectBall() then
		if getgenv().config.deflect_type == 'Key Press' then
			keypress(0x46)
		else
			ReplicatedStorage.Remotes.ParryButtonPress:Fire()
		end
	end
end

UserInputService.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if getgenv().config.mode == 'Toggle' and Input.KeyCode == getgenv().config.keybind then
		CanHit = not CanHit
		if getgenv().config.notifications then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Blade Ball",
				Text = CanHit and 'Enabled!' or 'Disabled!',
			})
			
			Notifications.Notify({
				Title = "Blade Ball",
				Description = CanHit and 'Enabled!' or 'Disabled!',
				Duration = 1
			})
		end
	elseif getgenv().config.mode == 'Hold' and Input.KeyCode == getgenv().config.keybind and getgenv().config.notifications then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Blade Ball",
			Text = 'Holding keybind!',
		})
		
		Notifications.Notify({
			Title = "Blade Ball",
			Description = 'Holding keybind!',
			Duration = 1
		})
	end
end)

UserInputService.InputEnded:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if getgenv().config.mode == 'Hold' and Input.KeyCode == getgenv().config.keybind and getgenv().config.notifications then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Blade Ball",
			Text = 'No longer holding keybind!',
		})
		
		Notifications.Notify({
			Title = "Blade Ball",
			Description = 'No longer holding keybind!',
			Duration = 1
		})
	end
end)

game:GetService('RunService').PostSimulation:Connect(function()
	IsTargeted = LocalTarget()

	if getgenv().config.mode == 'Hold' and UserInputService:IsKeyDown(getgenv().config.keybind) then
		DeflectBall()
	elseif getgenv().config.mode == 'Toggle' and CanHit then
		DeflectBall()
	elseif getgenv().config.mode == 'Always' then
		DeflectBall()
	end
end)

getgenv().hasLoaded = true