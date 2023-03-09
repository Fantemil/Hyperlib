while true do
    wait(1)
local whatyouwant = {"Invincible","Legendary","Mythic","Daemon","Godly","Silver Chariot OVA","Jotaro's Star Platinum","Star Platinum OVA"}

for i,v in next, whatyouwant do
if game.Players.LocalPlayer.Data.Attribute.Value == v or 
game.Players.LocalPlayer.Data.Stand.Value == v
then do
    game.Players.LocalPlayer:Kick()
end
end
end
end