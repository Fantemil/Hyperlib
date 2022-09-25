if game.CoreGui:FindFirstChild("BCMX") then
    game.CoreGui:FindFirstChild("BCMX"):Destroy()
end

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local WS = game.Workspace
local LP = game.Players.LocalPlayer

local BMCX = lib.new("BCMX")
local M = BMCX:addPage("Main", 5012544693)
local Exchanging = M:addSection("Exchanging")
local Player = M:addSection("Player")

local Tables = BMCX:addPage("Plot", 5012544693)
local Shelves = Tables:addSection("Shelves")
local Cards = Tables:addSection("Tables & Cards")

-- Exchanging
local BitcoinMultiplier = 50;
local SellBitcoin = function()
    for i=1,BitcoinMultiplier do
        WS["Region_ExChang1"]["Button"]["Clicked"]:FireServer(true)
    end
end
local SBF = string.format("Exchange Bitcoins x%s", tostring(BitcoinMultiplier))
local SellBitcoinB = Exchanging:addButton(SBF, function()
    SellBitcoin()
end)
Exchanging:addSlider("Bitcoin Multiplier", 50, 50, 1000, function(v)
    BitcoinMultiplier = v
    Exchanging:updateButton(SellBitcoinB, string.format("Exchange Bitcoins x%s", tostring(BitcoinMultiplier)))
end)

local SolarisMultiplier = 50;
local SellSolaris = function()
    for i=1,SolarisMultiplier do
        WS["Region_ExChang1"]["Button"]["Clicked"]:FireServer(false)
    end
end
local SLF = string.format("Exchange Solaris x%s", tostring(SolarisMultiplier))
local SellSolarisB = Exchanging:addButton(SLF, function()
    SellSolaris()
end)
Exchanging:addSlider("Solaris Multiplier", 50, 50, 1000, function(v)
    SolarisMultiplier = v
    Exchanging:updateButton(SellSolarisB, string.format("Exchange Solaris x%s", tostring(SolarisMultiplier)))
end)

--Simple WS and Death Stuff
local WS = 16
LP.Character.Humanoid.Died:connect(function()
    LP.CharacterAdded:connect(function()
        repeat wait() until LP.Character:FindFirstChild("Humanoid")
        LP.Character.Humanoid.WalkSpeed = WS
    end)
end)
Player:addSlider("Walkspeed", 16, 16, 100, function(v)
    WS = v
    LP.Character.Humanoid.WalkSpeed = WS
end)

Player:addButton("Remove Level Barriers", function()
    for i,v in pairs(game.Workspace:GetChildren()) do
        for i,v in pairs(v:GetChildren()) do
            if v:FindFirstChildOfClass("TouchTransmitter") and v:FindFirstChildOfClass("SurfaceGui") then
                v:Destroy()
            end
        end
    end
end)

-- Tables & Cards
local ShelfNames = {
    ["Table"] = true,
    ["Double Shelf"] = true,
    ["Triple Shelf"] = true,
    ["Server Shelf"] = true
}

local Buildings = game.Workspace.Buildings[LP.Name]
local PlaceCard = game:GetService("ReplicatedStorage").Events:FindFirstChild("PlaceCard")
local BuyCard = game:GetService("ReplicatedStorage").Events:FindFirstChild("BuyCard")

local GetCard = function(CardName)
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Shows" then
            for i,v in pairs(v:GetChildren()) do
                if v:FindFirstChildOfClass("Model") then
                    if v:FindFirstChildOfClass("Model").Name == CardName then
                        return v
                    end
                end
            end
        end
    end
    return nil
end

local cardCount = 1
local CardBuy = Cards:addTextbox("Buy 1 Card(s)", "Optix 900 Card", function(Card,Focus,Update)
    if Focus then
        local cardToBuy = GetCard(Card)
        if cardToBuy then
            BuyCard:FireServer(Card, cardToBuy, cardCount)
        end
    end
end)
Cards:addSlider("Amount of Cards", 1, 1, 100, function(v)
    cardCount = v
    Cards:updateButton(CardBuy, string.format("Buy %s Card(s)", tostring(cardCount)))
end)

local maxShelves = 1
local FillShelves = Cards:addTextbox("Fill 1 Shelves", "Optix 900 Card", function(Card,Focus,Update)
    if Focus and GetCard(Card) then
        local shelvesFilled = 0
        for i,v in pairs(Buildings:GetChildren()) do
            if ShelfNames[v.Name] then
                if shelvesFilled == maxShelves then return end
                    shelvesFilled = shelvesFilled + 1
                for i,v in pairs(v.Cards:GetChildren()) do
                    if v.Name == "CardPlace" and not v:FindFirstChildOfClass("Model") then
                        PlaceCard:FireServer(Card, v)
                    end
                end
            end
        end
    end
end)
Cards:addSlider("Amount of Shelves", 1, 1, 100, function(v)
    maxShelves = v
    Cards:updateButton(FillShelves, string.format("Fill %s Shelves", tostring(maxShelves)))
end)

Cards:addButton("Remove All Cards From Shelves", function()
    for i,v in pairs(Buildings:GetChildren()) do
        if ShelfNames[v.Name] then
            for i,v in pairs(v.Cards:GetChildren()) do
                if v.Name == "CardPlace" then
                    PlaceCard:FireServer(nil, v)
                end
            end
        end
    end
end)

for i,v in pairs(ShelfNames) do
    Shelves:addToggle(i, true, function(b)
        ShelfNames[i] = b
    end)
end

-- GUI End
lib:SelectPage(M, true)
local isToggled = true
LP:GetMouse().KeyDown:Connect(function(K)
    if K == "1" then
        isToggled = not isToggled
        BMCX:toggle(isToggled)
    end
end)