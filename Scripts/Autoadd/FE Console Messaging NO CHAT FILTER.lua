local Players = game:GetService('Players')

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer:WaitForChild('Character')
local Humanoid = Character.Humanoid or Character:WaitForChild('Humanoid')

local Animation = Instance.new('Animation', Humanoid)
local Id = 'rbxassetid://'..tostring(math.random(1, 999999))

local function FakeAnim(Message)
	local FakeId = Id..' '..Message
	Animation.AnimationId = FakeId

	local Track = Humanoid:LoadAnimation(Animation)
	Track:Play()
end

FakeAnim([[Fill out your message here!]])