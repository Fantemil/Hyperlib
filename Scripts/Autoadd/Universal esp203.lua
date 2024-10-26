															local function createPopup()
    local popup = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local textLabel = Instance.new("TextLabel")

    popup.Name = "ESP_Popup"
    popup.ResetOnSpawn = false
    popup.DisplayOrder = 1000
    popup.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    frame.Name = "PopupFrame"
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(0, 200, 0, 50)
    frame.Position = UDim2.new(1, -220, 1, -70)
    frame.Parent = popup

    textLabel.Name = "PopupText"
    textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Text = "ScriptingMadeEasy"
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextSize = 18
    textLabel.Parent = frame
end

createPopup()

getgenv().enabled = true --Toggle on/off
getgenv().filluseteamcolor = false --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = false --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 1 --Change fill transparency
getgenv().outlinetrans = 0 --Change outline transparency

loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
