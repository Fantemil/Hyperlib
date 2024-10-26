local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Game Automator", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Auto Clicker Variables
local clicking = false
local clicksPerSecond = 10000

-- Auto Buy Variables
local autoBuyingWorker = false
local autoBuyingCursor = false
local autoBuyingAutoPizzas = false
local autoBuyingIronCursor = false
local autoBuyingRestaurant = false
local autoBuyingPizzasFarm = false
local buyIntervalWorker = 0.1
local buyIntervalCursor = 0.1
local buyIntervalAutoPizzas = 0.1
local buyIntervalIronCursor = 0.1
local buyIntervalRestaurant = 0.1
local buyIntervalPizzasFarm = 0.1

-- Auto Clicker Function
MainTab:AddToggle({
    Name = "Fast Auto Click",
    Default = false,
    Callback = function(Value)
        clicking = Value
        if clicking then
            spawn(function()
                while clicking do
                    for i = 1, clicksPerSecond do
                        if not clicking then break end
                        game:GetService("ReplicatedStorage"):WaitForChild("Click"):WaitForChild("ClickGive"):FireServer()
                    end
                    wait()
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Clicks Per Second",
    Min = 1,
    Max = 1000,
    Default = 100,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "CPS",
    Callback = function(Value)
        clicksPerSecond = Value
    end    
})

-- Auto Buy Worker Function
MainTab:AddToggle({
    Name = "Auto Buy Worker",
    Default = false,
    Callback = function(Value)
        autoBuyingWorker = Value
        if autoBuyingWorker then
            spawn(function()
                while autoBuyingWorker do
                    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("aWorker"):FireServer()
                    wait(buyIntervalWorker)
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Worker Buy Interval",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(Value)
        buyIntervalWorker = Value
    end    
})

-- Auto Buy Cursor Function
MainTab:AddToggle({
    Name = "Auto Buy Cursor",
    Default = false,
    Callback = function(Value)
        autoBuyingCursor = Value
        if autoBuyingCursor then
            spawn(function()
                while autoBuyingCursor do
                    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("bCursor"):FireServer()
                    wait(buyIntervalCursor)
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Cursor Buy Interval",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(Value)
        buyIntervalCursor = Value
    end    
})

-- Auto Buy Auto Pizzas Function
MainTab:AddToggle({
    Name = "Auto Buy Auto Pizzas",
    Default = false,
    Callback = function(Value)
        autoBuyingAutoPizzas = Value
        if autoBuyingAutoPizzas then
            spawn(function()
                while autoBuyingAutoPizzas do
                    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("cAutoPizzas"):FireServer()
                    wait(buyIntervalAutoPizzas)
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Auto Pizzas Buy Interval",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(Value)
        buyIntervalAutoPizzas = Value
    end    
})

-- Auto Buy Iron Cursor Function
MainTab:AddToggle({
    Name = "Auto Buy Iron Cursor",
    Default = false,
    Callback = function(Value)
        autoBuyingIronCursor = Value
        if autoBuyingIronCursor then
            spawn(function()
                while autoBuyingIronCursor do
                    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("dIronCursor"):FireServer()
                    wait(buyIntervalIronCursor)
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Iron Cursor Buy Interval",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(Value)
        buyIntervalIronCursor = Value
    end    
})

-- Auto Buy Restaurant Function
MainTab:AddToggle({
    Name = "Auto Buy Restaurant",
    Default = false,
    Callback = function(Value)
        autoBuyingRestaurant = Value
        if autoBuyingRestaurant then
            spawn(function()
                while autoBuyingRestaurant do
                    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("eRestaurant"):FireServer()
                    wait(buyIntervalRestaurant)
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Restaurant Buy Interval",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(Value)
        buyIntervalRestaurant = Value
    end    
})

-- Auto Buy Pizzas Farm Function
MainTab:AddToggle({
    Name = "Auto Buy Pizzas Farm",
    Default = false,
    Callback = function(Value)
        autoBuyingPizzasFarm = Value
        if autoBuyingPizzasFarm then
            spawn(function()
                while autoBuyingPizzasFarm do
                    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("fPizzasFarm"):FireServer()
                    wait(buyIntervalPizzasFarm)
                end
            end)
        end
    end    
})

MainTab:AddSlider({
    Name = "Pizzas Farm Buy Interval",
    Min = 0.01,
    Max = 10,
    Default = 0.1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "Seconds",
    Callback = function(Value)
        buyIntervalPizzasFarm = Value
    end    
})

OrionLib:Init()