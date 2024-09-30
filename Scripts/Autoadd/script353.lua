-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Game Auto Farm", "DarkTheme")

-- Create Main Tab
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Auto Features")

-- Variables for Auto Farm and Auto Money
local autoFarmEnabled = false
local autoMoneyEnabled = false
local player = game.Players.LocalPlayer

-- Function to find CashCrates
local function findCashCrates()
    local cashCrates = {}
    local allCrateParents = game:GetService("Workspace"):GetChildren()

    for _, folder in ipairs(allCrateParents) do
        if folder.Name == "CrateParent" then
            local crates = folder:GetChildren()
            for _, crate in ipairs(crates) do
                if crate.Name == "CashCrate" then
                    table.insert(cashCrates, crate)
                end
            end
        end
    end

    return cashCrates
end

-- Auto Farm Toggle
MainSection:NewToggle("Auto Farm", "Teleports to CashCrates", function(state)
    autoFarmEnabled = state
    if autoFarmEnabled then
        spawn(function()
            while autoFarmEnabled do
                local cashCrates = findCashCrates()
                if #cashCrates > 0 then
                    for _, cashCrate in ipairs(cashCrates) do
                        player.Character.HumanoidRootPart.CFrame = cashCrate.CFrame
                        wait(1) -- Wait 1 second before moving to the next crate
                    end
                else
                    warn("No CashCrates found in any CrateParent")
                end
                wait(1) -- Wait 1 second before checking for new CashCrates
            end
        end)
    end
end)

-- Auto Money Toggle
MainSection:NewToggle("Auto Money", "Sends Cash every 0.1 seconds", function(state)
    autoMoneyEnabled = state
    if autoMoneyEnabled then
        spawn(function()
            while autoMoneyEnabled do
                game:GetService("ReplicatedStorage").Rewards.Cash:FireServer()
                wait(0.1) -- Wait 0.1 seconds before firing again
            end
        end)
    end
end)

-- Create Credits Tab
local CreditsTab = Window:NewTab("Credits")
local CreditsSection = CreditsTab:NewSection("Credits")

-- Display Credit Information
CreditsSection:NewLabel("Made by x11px on Discord")

-- Create Toggle Button to Show/Hide GUI
local gui = Instance.new("ScreenGui")
gui.Name = "AutoFarmGui"
gui.Parent = game.CoreGui

local ToggleButton = Instance.new("TextButton")
ToggleButton.Text = "Toggle GUI"
ToggleButton.TextSize = 24
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.BackgroundColor3 = Color3.new(0, 1, 1)
ToggleButton.BorderColor3 = Color3.new(1, 1, 1)
ToggleButton.BorderSizePixel = 4
ToggleButton.Font = Enum.Font.Code
ToggleButton.Size = UDim2.new(0.2, 0, 0.1, 0)
ToggleButton.Position = UDim2.new(0, 0, 0.4, 0)
ToggleButton.Parent = gui
ToggleButton.Draggable = true

local cornerUI = Instance.new("UICorner")
cornerUI.CornerRadius = UDim.new(0, 5)
cornerUI.Parent = ToggleButton

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.new(0, 0, 0)
uiStroke.Thickness = 2
uiStroke.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    Library:ToggleUI()
end)

-- Show the Kavo UI
Library:Init()
