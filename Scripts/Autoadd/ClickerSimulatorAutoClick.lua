local library = {}

function library:CreateWindow(title)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local gameName = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local mainFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Main = Instance.new("TextButton")
local Misc = Instance.new("TextButton")
local miscFrame = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.359908879, 0, 0.211042941, 0)
Frame.Size = UDim2.new(0, 300, 0, 500)

UICorner.Parent = Frame

gameName.Name = "gameName"
gameName.Parent = Frame
gameName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gameName.Size = UDim2.new(0, 83, 0, 29)
gameName.Font = Enum.Font.Arial
gameName.Text = "Clicker Sim"
gameName.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName.TextScaled = true
gameName.TextSize = 20.000
gameName.TextWrapped = true

UICorner_2.Parent = gameName

mainFrame.Name = "mainFrame"
mainFrame.Parent = Frame
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0, 0, 0.0579999983, 0)
mainFrame.Size = UDim2.new(0, 300, 0, 471)

UICorner_3.Parent = mainFrame

Main.Name = "Main"
Main.Parent = Frame
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.319999993, 0, 0, 0)
Main.Size = UDim2.new(0, 83, 0, 29)
Main.Font = Enum.Font.Arial
Main.Text = "Main"
Main.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.TextScaled = true
Main.TextSize = 14.000
Main.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Main.TextWrapped = true

Misc.Name = "Misc"
Misc.Parent = Frame
Misc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Misc.BorderSizePixel = 0
Misc.Position = UDim2.new(0.596666694, 0, 0, 0)
Misc.Size = UDim2.new(0, 83, 0, 29)
Misc.Font = Enum.Font.Arial
Misc.Text = "Misc"
Misc.TextColor3 = Color3.fromRGB(255, 255, 255)
Misc.TextScaled = true
Misc.TextSize = 14.000
Misc.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Misc.TextWrapped = true

miscFrame.Name = "miscFrame"
miscFrame.Parent = Frame
miscFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
miscFrame.BorderSizePixel = 0
miscFrame.Position = UDim2.new(0, 0, 0.0579999983, 0)
miscFrame.Size = UDim2.new(0, 300, 0, 471)
miscFrame.Visible = false

UICorner_7.Parent = miscFrame

TextLabel.Parent = miscFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel.Size = UDim2.new(0, 300, 0, 32)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "Made by ouw#7809"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

UICorner_8.Parent = TextLabel

TextLabel_2.Parent = miscFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel_2.Position = UDim2.new(0, 0, 0.0806794092, 0)
TextLabel_2.Size = UDim2.new(0, 300, 0, 32)
TextLabel_2.Font = Enum.Font.Arial
TextLabel_2.Text = "AKA slightten"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000

UICorner_9.Parent = TextLabel_2

Frame.Active = true
Frame.Draggable = true

local libaryfunctions = {}
function libaryfunctions:Toggle(name, callback)
    local mainToggle = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local mainToggleHOLDER = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local mainToggleDOT = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")

local toggled = false
    callback = callback or function() end

    mainToggle.Name = "mainToggle"
    mainToggle.Parent = mainFrame
    mainToggle.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
    mainToggle.Position = UDim2.new(0, 0, 0.0169851389, 0)
    mainToggle.Size = UDim2.new(0, 300, 0, 32)
    mainToggle.Font = Enum.Font.Arial
    mainToggle.Text = "Auto Click"
    mainToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    mainToggle.TextSize = 20.000
    mainToggle.TextWrapped = true
    
    UICorner_4.Parent = mainToggle
    
    mainToggleHOLDER.Name = "mainToggleHOLDER"
    mainToggleHOLDER.Parent = mainToggle
    mainToggleHOLDER.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    mainToggleHOLDER.Position = UDim2.new(0.833333313, 0, 0.15625, 0)
    mainToggleHOLDER.Size = UDim2.new(0, 43, 0, 21)
    
    UICorner_5.Parent = mainToggleHOLDER
    
    mainToggleDOT.Name = "mainToggleDOT"
    mainToggleDOT.Parent = mainToggleHOLDER
    mainToggleDOT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainToggleDOT.Position = UDim2.new(0.129999995, 0, 0.219999999, 0)
    mainToggleDOT.Size = UDim2.new(0, 12, 0, 11)
    
    UICorner_6.Parent = mainToggleDOT

    mainToggle.MouseButton1Click:Connect(function()
        if toggled == false then
            toggled = true
            mainToggle.mainToggleHOLDER.mainToggleDOT.Position = UDim2.new(0.53, 0, 0.22, 0)
            callback(toggled)
        elseif toggled == true then
            toggled = false
            mainToggle.mainToggleHOLDER.mainToggleDOT.Position = UDim2.new(0.13, 0, 0.22, 0)
            callback(toggled)
        end
    end)
    end
    return libaryfunctions
end

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ScreenGui" then
        v:Destroy()
    end
end

local lib = library:CreateWindow("yow")
lib:Toggle("AutoFarm", function(a)
    aa = a
    while aa do task.wait()
workspace.Events.AddClick:FireServer()
end
end)

game:GetService("CoreGui").ScreenGui.Frame.Main.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").ScreenGui.Frame.mainFrame.Visible = true
    game:GetService("CoreGui").ScreenGui.Frame.miscFrame.Visible = false
end)

game:GetService("CoreGui").ScreenGui.Frame.Misc.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").ScreenGui.Frame.mainFrame.Visible = false
    game:GetService("CoreGui").ScreenGui.Frame.miscFrame.Visible = true
    end)