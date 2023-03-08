-- Gui to Lua
-- Version: 3.2
 
-- Instances:
 
local MaGiXxWG = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local MaGiXxAutoFarmON = Instance.new("TextButton")
local MaGiXxAutoFarmOFF = Instance.new("TextButton")
local MaGiXxOpenMenu = Instance.new("Frame")
local CloseMainMaGiXx = Instance.new("TextButton")
local OpenMainMaGiXx = Instance.new("TextButton")
 
--Properties:
 
MaGiXxWG.Name = "MaGiXxWG"
MaGiXxWG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MaGiXxWG.ResetOnSpawn = false
 
Main.Name = "Main"
Main.Parent = MaGiXxWG
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.362974942, 0, 0.35117057, 0)
Main.Size = UDim2.new(0, 257, 0, 103)
Main.Active = true
Main.Draggable = true
Main.Visible = false
 
title.Name = "title"
title.Parent = Main
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.Position = UDim2.new(0, 0, -0.000243166665, 0)
title.Size = UDim2.new(0, 257, 0, 26)
title.Font = Enum.Font.SciFi
title.Text = "Lifting Simulator"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true
 
MaGiXxAutoFarmON.Name = "MaGiXxAutoFarmON"
MaGiXxAutoFarmON.Parent = Main
MaGiXxAutoFarmON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaGiXxAutoFarmON.BorderColor3 = Color3.fromRGB(0, 0, 0)
MaGiXxAutoFarmON.Position = UDim2.new(0.205787927, 0, 0.466480702, 0)
MaGiXxAutoFarmON.Size = UDim2.new(0, 150, 0, 33)
MaGiXxAutoFarmON.Font = Enum.Font.SourceSans
MaGiXxAutoFarmON.Text = "AutoFarm(ON)"
MaGiXxAutoFarmON.TextColor3 = Color3.fromRGB(0, 255, 0)
MaGiXxAutoFarmON.TextScaled = true
MaGiXxAutoFarmON.TextSize = 14.000
MaGiXxAutoFarmON.TextWrapped = true
 
MaGiXxAutoFarmOFF.Name = "MaGiXxAutoFarmOFF"
MaGiXxAutoFarmOFF.Parent = Main
MaGiXxAutoFarmOFF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaGiXxAutoFarmOFF.BorderColor3 = Color3.fromRGB(0, 0, 0)
MaGiXxAutoFarmOFF.Position = UDim2.new(0.205787927, 0, 0.466480702, 0)
MaGiXxAutoFarmOFF.Size = UDim2.new(0, 150, 0, 33)
MaGiXxAutoFarmOFF.Font = Enum.Font.SourceSans
MaGiXxAutoFarmOFF.Text = "AutoFarm(OFF)"
MaGiXxAutoFarmOFF.TextColor3 = Color3.fromRGB(255, 0, 0)
MaGiXxAutoFarmOFF.TextScaled = true
MaGiXxAutoFarmOFF.TextSize = 14.000
MaGiXxAutoFarmOFF.TextWrapped = true
 
MaGiXxOpenMenu.Name = "MaGiXxOpenMenu"
MaGiXxOpenMenu.Parent = MaGiXxWG
MaGiXxOpenMenu.BackgroundColor3 = Color3.fromRGB(255, 234, 169)
MaGiXxOpenMenu.BorderColor3 = Color3.fromRGB(0, 38, 255)
MaGiXxOpenMenu.Position = UDim2.new(0, 0, 0.924749136, 0)
MaGiXxOpenMenu.Size = UDim2.new(0, 100, 0, 28)
 
CloseMainMaGiXx.Name = "CloseMainMaGiXx"
CloseMainMaGiXx.Parent = MaGiXxOpenMenu
CloseMainMaGiXx.BackgroundColor3 = Color3.fromRGB(255, 234, 169)
CloseMainMaGiXx.BorderColor3 = Color3.fromRGB(0, 38, 255)
CloseMainMaGiXx.Size = UDim2.new(0, 100, 0, 28)
CloseMainMaGiXx.Font = Enum.Font.SciFi
CloseMainMaGiXx.Text = "Close"
CloseMainMaGiXx.TextColor3 = Color3.fromRGB(255, 0, 4)
CloseMainMaGiXx.TextSize = 14.000
CloseMainMaGiXx.TextWrapped = true
 
OpenMainMaGiXx.Name = "OpenMainMaGiXx"
OpenMainMaGiXx.Parent = MaGiXxOpenMenu
OpenMainMaGiXx.BackgroundColor3 = Color3.fromRGB(255, 234, 169)
OpenMainMaGiXx.BorderColor3 = Color3.fromRGB(0, 38, 255)
OpenMainMaGiXx.Size = UDim2.new(0, 100, 0, 28)
OpenMainMaGiXx.Font = Enum.Font.SciFi
OpenMainMaGiXx.Text = "Open"
OpenMainMaGiXx.TextColor3 = Color3.fromRGB(85, 255, 0)
OpenMainMaGiXx.TextSize = 14.000
OpenMainMaGiXx.TextWrapped = true
 
--Sripts MaGiXx:
 
OpenMainMaGiXx.MouseButton1Down:connect(function()
    Main.Visible = true
    OpenMainMaGiXx.Visible = false
    CloseMainMaGiXx.Visible = true
end)
 
CloseMainMaGiXx.MouseButton1Down:connect(function()
    Main.Visible = false
    CloseMainMaGiXx.Visible = false
    OpenMainMaGiXx.Visible = true
end)
 
MaGiXxAutoFarmON.MouseButton1Down:connect(function()
_G.Sale = false
_G.Lift = false
    MaGiXxAutoFarmON.Visible = false
    MaGiXxAutoFarmOFF.Visible = true
end)
 
MaGiXxAutoFarmOFF.MouseButton1Down:connect(function()
 
    MaGiXxAutoFarmON.Visible = true
    MaGiXxAutoFarmOFF.Visible = false
 
    _G.Sale = true
 
while _G.Sale do
wait()
local table_1 = {
[1] = 'SellMuscle'
};
local Target = game:GetService("ReplicatedStorage").RemoteEvent;
Target:FireServer(table_1);
    end
 
    _G.Lift = true
 
while _G.Lift do
wait(0.1)
local table_1 = {
[1] = 'GainMuscle'
};
local Target = game:GetService("ReplicatedStorage").RemoteEvent;
Target:FireServer(table_1);
end
end)
 
--[[Scripter:MaGiXx Gui:MaGiXx
          pleas sub           ]]--