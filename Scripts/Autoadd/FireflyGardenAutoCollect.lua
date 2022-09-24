_G.farm4 = true
while wait(.1) do 


local firefly = game.Players.LocalPlayer.PlayerData.Stats.PrestigeCreature.Value
firefly = firefly +1
    if _G.farm4 == true then 
game:GetService("ReplicatedStorage").Events.CaptureF:FireServer(firefly, "Normal")
end
end