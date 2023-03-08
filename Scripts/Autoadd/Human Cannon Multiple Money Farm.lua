_G.Condition = true -- true turns it on, false turns it off
while _G.Condition == true do
game:GetService("ReplicatedStorage").Remote.Event.Game["[C-S]PlayerWinGame"]:FireServer()
wait()
end