 _G.busy = true

while wait() do

if _G.busy == true then
local Event = game:GetService("ReplicatedStorage").Events.AddSpeed
Event:InvokeServer()
   end
end