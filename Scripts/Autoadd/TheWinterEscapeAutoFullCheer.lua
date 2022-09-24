for i = 1000, 1, -1 do
   local Event = game:GetService("ReplicatedStorage").RuntimeEvents.Exploring
   Event:FireServer()
end