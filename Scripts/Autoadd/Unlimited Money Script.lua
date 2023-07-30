--Script By Fxxaiman

local ohInstance1 = game:GetService("Players").LocalPlayer
local ohTable2 = {
	[1] = "Starter Pistol"
}
local ohNumber3 = -1000000000 --money you want[keep the - sign]

game:GetService("ReplicatedStorage").RemoteEvents.DeliveryEvent:FireServer(ohInstance1, ohTable2, ohNumber3)