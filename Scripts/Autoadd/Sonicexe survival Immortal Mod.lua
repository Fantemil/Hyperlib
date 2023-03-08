while true do
wait(0.6)

local name = game.Players.LocalPlayer.Name
local A_1 = "revive"
local A_2 = game.Workspace[name]
local Event = game:GetService("ReplicatedStorage").events.action
Event:FireServer(A_1, A_2)

end