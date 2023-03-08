while true do wait(0.1)
local Event = game:GetService("ReplicatedStorage").Events.Remotes.Clean
Event:FireServer()
end