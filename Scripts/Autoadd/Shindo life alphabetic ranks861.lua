local ranksToGain = 10 -- number of ranks you want to gain

for i = 1, ranksToGain do
game:GetService("Players").LocalPlayer.startevent:FireServer("rankup2")
wait()
end