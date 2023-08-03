while true do
    wait(0.1)

for i,v in pairs(getconnections(game.Players.LocalPlayer.Chatted)) do
   v:Disable()
end
end