local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

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
GUI:Credit{
	Name = "hizlimehmet31",
	Description = "scripti ben yaptim",
	V3rm = "link/name",
	Discord = "https://discord.gg/bzhYNgmG"
}

Tab:Button{
	Name = "Get 5b strength and 5b money and 36 stage",
	Description = nil,
	Callback = function()local args = {
    [1] = {
        ["Stage"] = 36,
        ["Strength"] = "5000000000",
        ["Cash"] = "5000000000"
    }
}

game:GetService("ReplicatedStorage").RemoteEvents.Stats:FireServer(unpack(args))
 end
}

Tab:Button{
	Name = "Get best tool",
	Description = nil,
	Callback = function()local args = {
    [1] = "9TH ULTIMATE SUPREME CLASS"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
 end
}

Tab:Button{
	Name = "Goblin Aura",
	Description = nil,
	Callback = function()local args = {
    [1] = 2750000,
    [2] = "Goblin"
}

game:GetService("ReplicatedStorage").RemoteEvents.CandyEvent:FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "Get inf pumpkin",
	Description = nil,
	Callback = function()local args = {
    [1] = math.huge
}

game:GetService("ReplicatedStorage").RemoteEvents.PumpkinEvent:FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "Get inf candy",
	Description = nil,
	Callback = function()local args = {
    [1] = math.huge
}

game:GetService("ReplicatedStorage").RemoteEvents.trickOrTreatcandyEvent:FireServer(unpack(args))
 end
}