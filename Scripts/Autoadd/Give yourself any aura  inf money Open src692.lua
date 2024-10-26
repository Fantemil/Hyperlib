local replicatedStorage = game:GetService("ReplicatedStorage")

-- load the OrionLib UI library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- create the main window
local Window = OrionLib:MakeWindow({
    Name = "RETARDWARE | Bims RNG | .gg/55kbQtFHSx",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "RETARDWARE",
    IntroEnabled = true,
    IntroText = "Welcome to RETARDWARE!",
    Icon = "https://example.com/window-icon.png",
    CloseCallback = function() end
})

local Tab = Window:MakeTab({
    Name = "Aura",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- function to get all aura names
local function getAllAuraNames()
    local aurasFolder = replicatedStorage:WaitForChild("Auras")
    local auraNames = {}
    for _, aura in pairs(aurasFolder:GetChildren()) do
        table.insert(auraNames, aura.Name)
    end
    return auraNames
end

-- get the list of aura names
local auraNames = getAllAuraNames()

-- function to equip an aura
local function equipAura(auraName)
    local args = {
        [1] = replicatedStorage:WaitForChild("Auras"):WaitForChild(auraName)
    }
    replicatedStorage:WaitForChild("Remotes"):WaitForChild("AuraEquip"):FireServer(unpack(args))
    OrionLib:MakeNotification({
        Name = "Aura Equipped",
        Content = "Equipped aura: " .. auraName,
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

Tab:AddDropdown({
    Name = "Select Aura",
    Default = auraNames,  -- default value
    Options = auraNames,  -- options from the aura names
    Callback = function(Value)
        equipAura(Value)
    end
})

-- notify all aura names (optional, for debugging)
for _, auraName in pairs(auraNames) do
    OrionLib:MakeNotification({
        Name = "Aura Available",
        Content = "Auras: " .. auraName,
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

Tab:AddTextbox({
        Name = "Cash Add (Dont do over 9QI Or It breaks!)",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        local cashAmount = tonumber(Value)
        if cashAmount then
            replicatedStorage:WaitForChild("Remotes"):WaitForChild("AddCash"):FireServer(cashAmount)
            OrionLib:MakeNotification({
                Name = "Cash Added",
                Content = "Added cash: " .. cashAmount,
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Invalid cash amount entered.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})