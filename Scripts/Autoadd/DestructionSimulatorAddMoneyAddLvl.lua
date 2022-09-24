local player = game.Players.LocalPlayer

local newgui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local CoinLabel = Instance.new("TextLabel")
local CoinBox = Instance.new("TextBox")
local AddCoins = Instance.new("TextButton")
local LevelLabel = Instance.new("TextLabel")
local LevelBox = Instance.new("TextBox")
local AddLevel = Instance.new("TextButton")

newgui.Name = "NewGui"
newgui.Parent = player.PlayerGui

mainframe.Name = "MainFrame"
mainframe.BackgroundColor3 = Color3.fromRGB(100,20,50)
mainframe.BorderSizePixel = 0
mainframe.Position = UDim2.new(0.35,0,0.2,0)
mainframe.Size = UDim2.new(0.3,0,0.45,0)
mainframe.Active = true
mainframe.Selectable = true
mainframe.Draggable = true
mainframe.Parent = newgui

CoinLabel.Name = "CoinLabel"
CoinLabel.Text = "Coins (Max: 99,999,999)"
CoinLabel.BackgroundTransparency = 1
CoinLabel.TextScaled = true
CoinLabel.Size = UDim2.new(0.4,0,0.05,0)
CoinLabel.Position = UDim2.new(0.1,0,0.2,0)
CoinLabel.TextColor3 = Color3.fromRGB(0,100,255)
CoinLabel.Parent = mainframe

CoinBox.Name = "CoinBox"
CoinBox.PlaceholderText = "Coins"
CoinBox.Text = ""
CoinBox.Size = UDim2.new(0.3,0,0.125,0)
CoinBox.Position = UDim2.new(0.1,0,0.3,0)
CoinBox.TextScaled = true
CoinBox.ClearTextOnFocus = false
CoinBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
CoinBox.Parent = mainframe

AddCoins.Name = "AddCoins"
AddCoins.Text = "Add Coins"
AddCoins.BackgroundColor3 = Color3.fromRGB(0,255,0)
AddCoins.Size = UDim2.new(0.3,0,0.1,0)
AddCoins.Position = UDim2.new(0.1,0,0.5,0)
AddCoins.TextScaled = true
AddCoins.Parent = mainframe

LevelLabel.Name = "LevelLabel"
LevelLabel.Text = "Level (Max: 55)"
LevelLabel.BackgroundTransparency = 1
LevelLabel.TextScaled = true
LevelLabel.Size = UDim2.new(0.4,0,0.05,0)
LevelLabel.Position = UDim2.new(0.6,0,0.2,0)
LevelLabel.TextColor3 = Color3.fromRGB(0,100,255)
LevelLabel.Parent = mainframe

LevelBox.Name = "LevelBox"
LevelBox.PlaceholderText = "Level"
LevelBox.Text = ""
LevelBox.Size = UDim2.new(0.3,0,0.125,0)
LevelBox.Position = UDim2.new(0.6,0,0.3,0)
LevelBox.TextScaled = true
LevelBox.ClearTextOnFocus = false
LevelBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
LevelBox.Parent = mainframe

AddLevel.Name = "AddLevel"
AddLevel.Text = "Add Level"
AddLevel.BackgroundColor3 = Color3.fromRGB(0,255,0)
AddLevel.Size = UDim2.new(0.3,0,0.1,0)
AddLevel.Position = UDim2.new(0.6,0,0.5,0)
AddLevel.TextScaled = true
AddLevel.Parent = mainframe

local Event = game:GetService("ReplicatedStorage").Remotes.generateBoost

AddCoins.MouseButton1Down:Connect(function()
    local Amount = tonumber(CoinBox.Text)
    if Amount then
        Event:FireServer("Coins", 999999, Amount)
    end
end)

AddLevel.MouseButton1Click:Connect(function()
    local Amount = tonumber(LevelBox.Text)
    if Amount then
        local LevelValue = player.leaderstats.Level
        if Amount > LevelValue.Value then
            local Difference = Amount - LevelValue.Value
            repeat
                local FireAmount = Difference
                if FireAmount > 15 then
                    FireAmount = 15
                end
                Event:FireServer("Levels", 480, FireAmount)
                Difference -= FireAmount
                wait()
            until Difference == 0
        elseif Amount < LevelValue.Value then
            local Difference = Amount - LevelValue.Value
            repeat
                local FireAmount = Difference
                if FireAmount < -15 then
                    FireAmount = -15
                end
                print(FireAmount)
                Event:FireServer("Levels", 480, FireAmount)
                Difference -= FireAmount
                wait()
            until Difference == 0
        end
    end
end)