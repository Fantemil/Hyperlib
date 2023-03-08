getfenv().Clicks = true -- or false
while getfenv().Clicks do
local Event = game:GetService("Workspace").Events.AddClick
Event:FireServer()
wait()
end