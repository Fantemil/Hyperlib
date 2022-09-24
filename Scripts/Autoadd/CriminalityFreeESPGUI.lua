local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local MainUI = UILibrary.Load("CheatX - Criminality")
local Visuals = MainUI.AddPage("Visuals")

local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false 
ESP.Tracers = false 
ESP.Boxes = false 
ESP.Names = false

-- Med safes
for i,v in pairs(game:GetService("Workspace").Map.BredMakurz:GetDescendants()) do
 if string.find(v.Name,"MediumSafe") then 
     if v:FindFirstChild("MainPart") then 
            ESP:Add(v.MainPart, {
                Name = "Medium Safe",
                IsEnabled = "mediumSafe",
                Color = Color3.fromRGB(139, 203, 255)
            })
        end 
 end 
end

-- Small safes
for i,v in pairs(game:GetService("Workspace").Map.BredMakurz:GetDescendants()) do
 if string.find(v.Name,"SmallSafe") then 
     if v:FindFirstChild("MainPart") then 
            ESP:Add(v.MainPart, {
                Name = "Small Safe",
                IsEnabled = "smallSafe",
                Color = Color3.fromRGB(228, 236, 243)
            })
        end 
 end 
end

-- Registers
for i,v in pairs(game:GetService("Workspace").Map.BredMakurz:GetDescendants()) do
    if string.find(v.Name,"Register") then 
        if v:FindFirstChild("MainPart") then 
            ESP:Add(v.MainPart, {
                Name = "Register",
                IsEnabled = "registerSafe",
                Color = Color3.fromRGB(255, 0, 128)
            })
        end 
    end 
end

-- ATMs 
for i,v in pairs(game:GetService("Workspace").Map.ATMz:GetDescendants()) do
    if string.find(v.Name,"ATM") then 
        if v:FindFirstChild("MainPart") then 
            ESP:Add(v.MainPart, {
                Name = "ATM",
                IsEnabled = "atmPart",
                Color = Color3.fromRGB(0, 255, 42)
            })
        end 
    end 
end

-- Dealers
for i,v in pairs(game:GetService("Workspace").Map.Shopz:GetDescendants()) do
    if string.find(v.Name,"Dealer") then 
        if v:FindFirstChild("MainPart") then 
            ESP:Add(v.MainPart, {
                Name = "Dealer",
                IsEnabled = "dealerStore",
                Color = Color3.fromRGB(255, 189, 128)
            })
        end 
    end 
end


-- Scraps
ESP:AddObjectListener(game:GetService("Workspace").Filter.SpawnedPiles, {
    Type = "Model",
    CustomName = "Scrap",
    Color = Color3.fromRGB(216, 255, 164),
    IsEnabled = "scrapPart"
})


Visuals.AddToggle("ESP", false, function(Value)
    ESP:Toggle(Value)
end)

Visuals.AddToggle("ESP Boxes", false, function(Value)
    ESP.Boxes = Value  
end)

Visuals.AddToggle("ESP Tracers", false, function(Value)
    ESP.Tracers = Value 
end)

Visuals.AddToggle("ESP Nametags", false, function(Value)
    ESP.Names = Value 
end)

Visuals.AddToggle("Show Players", false, function(Value)
    ESP.Players = Value 
end)

Visuals.AddToggle("Show Medium Safes", false, function(Value)
    ESP.mediumSafe = Value 
end)

Visuals.AddToggle("Show Small Safes", false, function(Value)
    ESP.smallSafe = Value 
end)

Visuals.AddToggle("Show Registers", false, function(Value)
    ESP.registerSafe = Value 
end)

Visuals.AddToggle("Show ATMs", false, function(Value)
    ESP.atmPart = Value 
end)

Visuals.AddToggle("Show Dealers", false, function(Value)
    ESP.dealerStore = Value 
end)

Visuals.AddToggle("Show Scraps", false, function(Value)
    ESP.scrapPart = Value 
end)