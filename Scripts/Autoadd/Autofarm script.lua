spawn(function()
    while true do
        local ohString1 = "Chromium"
        game:GetService("ReplicatedStorage").SetDimension:FireServer(ohString1)
        wait(1.7)
        local ohString2 = "Cosmic"
        game:GetService("ReplicatedStorage").SetDimension:FireServer(ohString2)
        wait(1.7)
    end
end)

while true do
    local ohString1 = "Level 32"
    local ohString2 = "Hard"
    local ohBoolean3 = true
    game:GetService("ReplicatedStorage").BeatLevel:FireServer(ohString1, ohString2, ohBoolean3)
    wait()
end
