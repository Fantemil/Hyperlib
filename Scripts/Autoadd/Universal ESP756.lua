local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local main_title = "Universal ESP - made by yousef029"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = main_title,
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "UniversalESP",
    IntroEnabled = false
})

local ESPObjects = {}

local EspSettings = {
    ESPEnabled = true,
    BoxESPEnabled = true,
    LineESPEnabled = true,
    NameESPEnabled = true,
    TeamCheckEnabled = true,
    RainbowMode = false,
    BoxColor = Color3.fromRGB(255, 0, 0),
    LineColor = Color3.fromRGB(0, 255, 0),
    NameColor = Color3.fromRGB(255, 255, 255),
    NameUseDisplay = false,
    NameDisplayHealth = false,
    BoxThickness = 1,
    LineThickness = 1,
    LineFromPosition = "Bottom"
}


local function IsEnemy_ESP(player)
    if not EspSettings.TeamCheckEnabled then
        return true
    end
    local localTeam = LocalPlayer.Team
    local playerTeam = player.Team
    if not localTeam == playerTeam then
        return true
    end

    return false
end

local function UpdateESP()
    for _, data in pairs(ESPObjects) do
        if EspSettings.BoxESPEnabled then
            data.Box.Color = EspSettings.BoxColor
            data.Box.Thickness = EspSettings.BoxThickness
        end
        if EspSettings.LineESPEnabled then
            data.Line.Color = EspSettings.LineColor
            data.Line.Thickness = EspSettings.LineThickness
        end
        if EspSettings.NameESPEnabled then
            data.Name.Color = EspSettings.NameColor
        end
    end
end

local function CreateESP(player)
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = EspSettings.BoxColor
    Box.Thickness = EspSettings.BoxThickness
    Box.Transparency = 1
    
    local Line = Drawing.new("Line")
    Line.Visible = false
    Line.Color = EspSettings.LineColor
    Line.Thickness = EspSettings.LineThickness
    Line.Transparency = 1
    
    local Name = Drawing.new("Text")
    Name.Visible = false
    Name.Color = EspSettings.NameColor
    Name.Size = 20
    Name.Center = true
    Name.Outline = true
    Name.Text = "Player"

    ESPObjects[player] = {Box = Box, Line = Line, Name = Name, Player = player}

    RunService.RenderStepped:Connect(function()
        local MouseLocation
        if EspSettings.LineFromPosition == "Mouse" then
            MouseLocation = UserInputService:GetMouseLocation()
        end
        if EspSettings.ESPEnabled and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player ~= LocalPlayer and IsEnemy_ESP(player) and player.Character.Humanoid.Health > 0 then
            local humanoidRootPart = player.Character.HumanoidRootPart
            local rootPosition, onScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)
            
            if onScreen then
                if EspSettings.BoxESPEnabled then
                    Box.Size = Vector2.new(2000 / rootPosition.Z, 4000 / rootPosition.Z)
                    Box.Position = Vector2.new(rootPosition.X - Box.Size.X / 2, rootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true
                else
                    Box.Visible = false
                end
                
                if EspSettings.LineESPEnabled then
                    local FromPosition
                    if EspSettings.LineFromPosition == "Bottom" then
                        FromPosition = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                    elseif EspSettings.LineFromPosition == "Top" then
                        FromPosition = Vector2.new(Camera.ViewportSize.X / 2, 0)
                    elseif EspSettings.LineFromPosition == "Mouse" then
                        FromPosition = Vector2.new(MouseLocation.X, MouseLocation.Y)
                    end
                    Line.From = FromPosition
                    Line.To = Vector2.new(rootPosition.X, rootPosition.Y)
                    Line.Visible = true
                else
                    Line.Visible = false
                end
                
                if EspSettings.NameESPEnabled then
                    local HealthString = ""
                    if EspSettings.NameDisplayHealth then
                        HealthString = string.format(" (%d)", player.Character.Humanoid.Health)
                    end
                    Name.Position = Vector2.new(rootPosition.X, rootPosition.Y - Box.Size.Y / 2 - 20)
                    Name.Visible = true
                    if EspSettings.NameUseDisplay then
                        Name.Text = (player.DisplayName or "") .. HealthString
                    else
                        Name.Text = (player.Name or "") .. HealthString
                    end
                else
                    Name.Visible = false
                end
            else
                Box.Visible = false
                Line.Visible = false
                Name.Visible = false
            end
        else
            Box.Visible = false
            Line.Visible = false
            Name.Visible = false
        end
    end)
end

local function StartRainbowMode()
    spawn(function()
        while EspSettings.RainbowMode do
            local hue = tick() % 5 / 5
            local color = Color3.fromHSV(hue, 1, 1)
            EspSettings.BoxColor = color
            EspSettings.LineColor = color
            EspSettings.NameColor = color
            UpdateESP()
            task.wait(0.1)
        end
    end)
end

local function connect()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            CreateESP(player)
        end
    end

    Players.PlayerAdded:Connect(function(player)
        if player ~= LocalPlayer then
            CreateESP(player)
        end
    end)
    OrionLib:Init()
end

--// GUI
local EspTab = Window:MakeTab({
	Name = "Player ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = EspTab:AddSection({
	Name = "General"
})
EspTab:AddToggle({
	Name = "Enabled",
	Default = false,
	Callback = function(Value)
		EspSettings.ESPEnabled = Value
	end
})
EspTab:AddToggle({
	Name = "Team Check",
	Default = false,
	Callback = function(Value)
		EspSettings.TeamCheckEnabled = Value
	end
})
local Section = EspTab:AddSection({
	Name = "Box ESP"
})
EspTab:AddToggle({
	Name = "Box ESP Enabled",
	Default = false,
	Callback = function(Value)
		EspSettings.BoxESPEnabled = Value
        UpdateESP()
	end
})
EspTab:AddSlider({
	Name = "Box Thickness",
	Min = 1,
	Max = 5,
	Default = EspSettings.BoxThickness,
	Color = EspSettings.BoxColor,
	Increment = 1,
	ValueName = "px",
	Callback = function(Value)
		EspSettings.BoxThickness = Value
        UpdateESP()
	end    
})
local Section = EspTab:AddSection({
	Name = "Line ESP (Tracers)"
})
EspTab:AddToggle({
	Name = "Line ESP Enabled",
	Default = false,
	Callback = function(Value)
		EspSettings.LineESPEnabled = Value
        UpdateESP()
	end
})
EspTab:AddDropdown({
	Name = "Line from",
	Default = "Bottom",
	Options = {"Bottom", "Top", "Mouse"},
	Callback = function(Value)
        EspSettings.LineFromPosition = Value
	end
})
EspTab:AddSlider({
	Name = "Line Thickness",
	Min = 1,
	Max = 5,
	Default = EspSettings.LineThickness,
	Color = EspSettings.LineColor,
	Increment = 1,
	ValueName = "px",
	Callback = function(Value)
		EspSettings.LineThickness = Value
        UpdateESP()
	end    
})
local Section = EspTab:AddSection({
	Name = "Name ESP"
})
EspTab:AddToggle({
	Name = "Enable Name ESP",
	Default = false,
	Callback = function(Value)
		EspSettings.NameESPEnabled = Value
        UpdateESP()
	end
})
EspTab:AddToggle({
	Name = "Use Display Name",
	Default = false,
	Callback = function(Value)
		EspSettings.NameUseDisplay = Value
	end    
})
EspTab:AddToggle({
	Name = "Display Player Health",
	Default = false,
	Callback = function(Value)
		EspSettings.NameDisplayHealth = Value
	end    
})
local ColorTab = Window:MakeTab({
	Name = "Color",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = ColorTab:AddSection({
	Name = "Player ESP"
})
ColorTab:AddToggle({
	Name = "Rainbow Mode",
	Default = false,
	Callback = function(Value)
		EspSettings.RainbowMode = Value
		if EspSettings.RainbowMode then
            StartRainbowMode()
        end
	end
})
ColorTab:AddColorpicker({
	Name = "Box Color",
	Default = EspSettings.BoxColor,
	Callback = function(Value)
		EspSettings.BoxColor = Value
        UpdateESP()
	end
})
ColorTab:AddColorpicker({
	Name = "Line Color",
	Default = EspSettings.LineColor,
	Callback = function(Value)
		EspSettings.LineColor = Value
        UpdateESP()
	end
})
ColorTab:AddColorpicker({
	Name = "Name Color",
	Default = EspSettings.NameColor,
	Callback = function(Value)
		EspSettings.NameColor = Value
        UpdateESP()
	end
})
local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = MiscTab:AddSection({
	Name = "Misc"
})
MiscTab:AddButton({
	Name = "Kill GUI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

--// main

connect()