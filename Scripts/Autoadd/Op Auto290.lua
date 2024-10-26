-- Load the Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Create the main window
local Window = Library.CreateLib("Advanced GUI", "DarkTheme")

-- Create a new tab
local MainTab = Window:NewTab("Main Tab")

-- Create a new section
local MainSection = MainTab:NewSection("Main Features")

-- Existing features (1-105) go here...

-- 106. Auto Buy A (Cursor)
local autoBuyAEnabled = false
local autoBuyAConnection

MainSection:NewToggle("Auto Buy Cursor", "Automatically buys the Cursor upgrade", function(state)
    autoBuyAEnabled = state
    if autoBuyAEnabled then
        autoBuyAConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("aCursor"):FireServer()
        end)
        print("Auto Buy Cursor enabled")
    else
        if autoBuyAConnection then
            autoBuyAConnection:Disconnect()
            autoBuyAConnection = nil
        end
        print("Auto Buy Cursor disabled")
    end
end)

-- 107. Auto Buy B (Auto Clicker)
local autoBuyBEnabled = false
local autoBuyBConnection

MainSection:NewToggle("Auto Buy Auto Clicker", "Automatically buys the Auto Clicker upgrade", function(state)
    autoBuyBEnabled = state
    if autoBuyBEnabled then
        autoBuyBConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("bAutoClicker"):FireServer()
        end)
        print("Auto Buy Auto Clicker enabled")
    else
        if autoBuyBConnection then
            autoBuyBConnection:Disconnect()
            autoBuyBConnection = nil
        end
        print("Auto Buy Auto Clicker disabled")
    end
end)

-- 108. Auto Buy C (Mr Clicker)
local autoBuyCEnabled = false
local autoBuyCConnection

MainSection:NewToggle("Auto Buy Mr Clicker", "Automatically buys the Mr Clicker upgrade", function(state)
    autoBuyCEnabled = state
    if autoBuyCEnabled then
        autoBuyCConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("cMrClicker"):FireServer()
        end)
        print("Auto Buy Mr Clicker enabled")
    else
        if autoBuyCConnection then
            autoBuyCConnection:Disconnect()
            autoBuyCConnection = nil
        end
        print("Auto Buy Mr Clicker disabled")
    end
end)

-- 109. Auto Buy D (Cats Farm)
local autoBuyDEnabled = false
local autoBuyDConnection

MainSection:NewToggle("Auto Buy Cats Farm", "Automatically buys the Cats Farm upgrade", function(state)
    autoBuyDEnabled = state
    if autoBuyDEnabled then
        autoBuyDConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("dCatsFarm"):FireServer()
        end)
        print("Auto Buy Cats Farm enabled")
    else
        if autoBuyDConnection then
            autoBuyDConnection:Disconnect()
            autoBuyDConnection = nil
        end
        print("Auto Buy Cats Farm disabled")
    end
end)

-- 110. Auto Buy E (President Clicker)
local autoBuyEEnabled = false
local autoBuyEConnection

MainSection:NewToggle("Auto Buy President Clicker", "Automatically buys the President Clicker upgrade", function(state)
    autoBuyEEnabled = state
    if autoBuyEEnabled then
        autoBuyEConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("ePresidentClicker"):FireServer()
        end)
        print("Auto Buy President Clicker enabled")
    else
        if autoBuyEConnection then
            autoBuyEConnection:Disconnect()
            autoBuyEConnection = nil
        end
        print("Auto Buy President Clicker disabled")
    end
end)

-- 111. Auto Buy F (Cats Pump)
local autoBuyFEnabled = false
local autoBuyFConnection

MainSection:NewToggle("Auto Buy Cats Pump", "Automatically buys the Cats Pump upgrade", function(state)
    autoBuyFEnabled = state
    if autoBuyFEnabled then
        autoBuyFConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("fCatsPump"):FireServer()
        end)
        print("Auto Buy Cats Pump enabled")
    else
        if autoBuyFConnection then
            autoBuyFConnection:Disconnect()
            autoBuyFConnection = nil
        end
        print("Auto Buy Cats Pump disabled")
    end
end)

-- 112. Auto Buy G (King Clicker)
local autoBuyGEnabled = false
local autoBuyGConnection

MainSection:NewToggle("Auto Buy King Clicker", "Automatically buys the King Clicker upgrade", function(state)
    autoBuyGEnabled = state
    if autoBuyGEnabled then
        autoBuyGConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("gKingClicker"):FireServer()
        end)
        print("Auto Buy King Clicker enabled")
    else
        if autoBuyGConnection then
            autoBuyGConnection:Disconnect()
            autoBuyGConnection = nil
        end
        print("Auto Buy King Clicker disabled")
    end
end)

-- 113. Auto Buy H (Cats Factory)
local autoBuyHEnabled = false
local autoBuyHConnection

MainSection:NewToggle("Auto Buy Cats Factory", "Automatically buys the Cats Factory upgrade", function(state)
    autoBuyHEnabled = state
    if autoBuyHEnabled then
        autoBuyHConnection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("hCatsFactory"):FireServer()
        end)
        print("Auto Buy Cats Factory enabled")
    else
        if autoBuyHConnection then
            autoBuyHConnection:Disconnect()
            autoBuyHConnection = nil
        end
        print("Auto Buy Cats Factory disabled")
    end
end)

-- 114. Auto Buy Speed Slider (affects all auto-buy features)
local autoBuySpeed = 1 -- Default speed (buys per second)
MainSection:NewSlider("Auto Buy Speed", "Adjust the speed of auto-buying", 10, 1, function(value)
    autoBuySpeed = value
    print("Auto Buy speed set to " .. value .. " buys per second")
    
    -- Update all auto-buy connections if they're active
    local function updateConnection(enabled, connection, remoteEvent)
        if enabled and connection then
            connection:Disconnect()
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                if os.clock() % (1 / autoBuySpeed) < 0.1 then
                    remoteEvent:FireServer()
                end
            end)
        end
    end
    
    updateConnection(autoBuyAEnabled, autoBuyAConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("aCursor"))
    updateConnection(autoBuyBEnabled, autoBuyBConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("bAutoClicker"))
    updateConnection(autoBuyCEnabled, autoBuyCConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("cMrClicker"))
    updateConnection(autoBuyDEnabled, autoBuyDConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("dCatsFarm"))
    updateConnection(autoBuyEEnabled, autoBuyEConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("ePresidentClicker"))
    updateConnection(autoBuyFEnabled, autoBuyFConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("fCatsPump"))
    updateConnection(autoBuyGEnabled, autoBuyGConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("gKingClicker"))
    updateConnection(autoBuyHEnabled, autoBuyHConnection, game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("hCatsFactory"))
end)

-- 115. Manual Buy Cursor Button
MainSection:NewButton("Buy Cursor", "Manually buy the Cursor upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("aCursor"):FireServer()
    print("Manually bought Cursor")
end)

-- 116. Manual Buy Auto Clicker Button
MainSection:NewButton("Buy Auto Clicker", "Manually buy the Auto Clicker upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("bAutoClicker"):FireServer()
    print("Manually bought Auto Clicker")
end)

-- 117. Manual Buy Mr Clicker Button
MainSection:NewButton("Buy Mr Clicker", "Manually buy the Mr Clicker upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("cMrClicker"):FireServer()
    print("Manually bought Mr Clicker")
end)

-- 118. Manual Buy Cats Farm Button
MainSection:NewButton("Buy Cats Farm", "Manually buy the Cats Farm upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("dCatsFarm"):FireServer()
    print("Manually bought Cats Farm")
end)

-- 119. Manual Buy President Clicker Button
MainSection:NewButton("Buy President Clicker", "Manually buy the President Clicker upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("ePresidentClicker"):FireServer()
    print("Manually bought President Clicker")
end)

-- 120. Manual Buy Cats Pump Button
MainSection:NewButton("Buy Cats Pump", "Manually buy the Cats Pump upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("fCatsPump"):FireServer()
    print("Manually bought Cats Pump")
end)

-- 121. Manual Buy King Clicker Button
MainSection:NewButton("Buy King Clicker", "Manually buy the King Clicker upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("gKingClicker"):FireServer()
    print("Manually bought King Clicker")
end)

-- 122. Manual Buy Cats Factory Button
MainSection:NewButton("Buy Cats Factory", "Manually buy the Cats Factory upgrade", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Shop"):WaitForChild("hCatsFactory"):FireServer()
    print("Manually bought Cats Factory")
end)