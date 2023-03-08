while wait() do
local ohNumber1 = 16
local ohVector32 = Vector3.new(1.3657619953155518, 5.57810115814209, 315.98724365234375)

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(ohNumber1, ohVector32)
end