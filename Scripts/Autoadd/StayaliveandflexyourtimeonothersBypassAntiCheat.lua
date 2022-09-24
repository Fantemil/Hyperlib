--[[ Variables ]]
local PS = game:GetService("Players")
local Player = PS.LocalPlayer 

function Reconnect()
local RealNumber = 0
repeat wait(1)
for _,Func in pairs(getreg()) do
if type(Func) == "function" then
local Debug = debug.getupvalues(Func)
for Number,Instance in pairs(Debug) do
if typeof(Instance) == "Instance" and Instance:IsA("RemoteEvent") then
debug.setupvalue(Func, Number, nil)
RealNumber = RealNumber + 1
end
end
end
end
until RealNumber > 5
end
Player.CharacterAdded:Connect(function()
Reconnect()
end)
Reconnect()