_G.Condition = true -- true turns it on, false turns it off
while _G.Condition == true do
local ohNumber1 = 14
local ohVector32 = Vector3.new(-185.56764221191406, 2.300734758377075, 265.1488952636719)

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(ohNumber1, ohVector32)
wait()
end