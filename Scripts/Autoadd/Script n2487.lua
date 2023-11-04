for i = 1, 100 do -- you can change the '100'
	local ohNumber1 = 16 -- dropper level / 1 - 16
	local ohVector32 = Vector3.new(-320.94677734375, 7.8002824783325195, 16.48503303527832)
	game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(ohNumber1, ohVector32)
	wait(0.01)
end