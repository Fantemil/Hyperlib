while wait(5) do
local AutoAdd = "AddToMachine"

game:GetService("ReplicatedStorage").RemoteEvents.ProximityPromptEvent:FireServer(AutoAdd)
end