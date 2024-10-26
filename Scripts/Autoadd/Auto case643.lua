local randomcase = {
    "USP Case",
    "AUG Case",
    "AWP Case",
    "Bayonet Case",
    "Butterfly Knife Case",
    "CZ Case",
    "Deagle Case",
    "Dual Case",
    "Falchion Knife Case",
    "Famas Case",
    "Fingerless Glove Case",
    "FiveSeven Case",
    "G3SG1 Case",
    "Galil Case",
    "Glock Case",
    "Handwraps Case",
    "Huntsman Case",
    "Karambit Case",
    "M4A1-S Case",
    "M4A4 Case",
    "MAC10 Case",
    "MAC7 Case",
    "MP7 Case",
    "MP9 Case",
    "P2000 Case",
    "P250 Case",
    "P90 Case",
    "R8 Case",
    "XM Case",
    "SG553 Case",
    "Scout Case",
    "Sports Glove Case",
    "Strapped Glove Case",
    "TEC9 Case",
    "UMP Case",
    "AK47 Case",
    "Winter Case"
}

local function getRandomCase()
    local randomIndex = math.random(1, #randomcase)
    return randomcase[randomIndex]
end

while true do
    wait(0.1)
    local randomValue = getRandomCase()
    local args = {
        [1] = {
            [1] = "BuyCase",
            [2] = randomValue
        }
    }
    game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(unpack(args))
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Opening Case",
        Text = "opening " .. randomValue,
        Duration = 5
    })
end