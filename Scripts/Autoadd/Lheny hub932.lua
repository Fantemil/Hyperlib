
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local Buton_1 = false

local GUI = Mercury:Create{
    Name = "Lheny hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
local Tab = GUI:Tab{
    Name = "New Tab",
    Icon = "rbxassetid://8569322835"
}
Tab:Button{
    Name = "NoCD",
    Description = nil,
    Callback = function() if Button_1 == false then Button_1 = true print(Button_1)else Button_1 = false print(Button_1)end end
}
    game.Players.LocalPlayer.NoCD.Value=true
Tab:Button{
    Name = "WalkSpeed",
    Description = nil,
    Callback = function() if Button_1 == false then Button_1 = true print(Button_1)else Button_1 = false print(Button_1)end end
}
    local Player = game:GetService("Players").LocalPlayer
local character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
-- setting speed
local Humanoid =  character:WaitForChild("Humanoid")
if Humanoid then
Humanoid.WalkSpeed = 46
end
Tab:Button{
    Name = "Gamepass",
    Description = nil,
    Callback = function() if Button_1 == false then Button_1 = true print(Button_1)else Button_1 = false print(Button_1)end end
}
    game.Players.LocalPlayer.EarlyAccess.Value=true
Tab:Button{
    Name = "NoDashCD",
    Description = nil,
    Callback = function() if Button_1 == false then Button_1 = true print(Button_1)else Button_1 = false print(Button_1)end end
}
    game.Players.LocalPlayer.NoDashCD.Value=true
Tab:Button{
    Name = "Give Awaken",
    Description = nil,
    Callback = function() if Button_1 == false then Button_1 = true print(Button_1)else Button_1 = false print(Button_1)end end
}
    game.Players.LocalPlayer.AwakenBar.Value=300