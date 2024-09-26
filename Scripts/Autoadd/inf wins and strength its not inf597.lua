for i = 1, 10000000 do

    game:GetService("ReplicatedStorage").Remotes.Gifts.RequestSpinReward:InvokeServer()

    local ohString1 = "Desert"
    local ohNumber2 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString1, ohNumber2)

    local ohString2 = "Castle"
    local ohNumber3 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString2, ohNumber3)

    local ohString4 = "Sewer"
    local ohNumber5 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString4, ohNumber5)

    local ohString6 = "Mars"
    local ohNumber7 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString6, ohNumber7)

    local ohString8 = "Sea"
    local ohNumber9 = 1

    game:GetService("ReplicatedStorage").Remotes.Race.AwardRace:FireServer(ohString8, ohNumber9)
end
