local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/shezan78/Mercury-Ui-Lib/main/Source.lua"))()

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/shezan78/Mercury-Ui-Lib"
}

local Tab = GUI:Tab{
	Name = "Morphs",
	Icon = "rbxassetid://3724740797"
}
Tab:Button{
	Name = "Agent B6",
	Description = nil,
	Callback = function() local args = {
    [1] = "AgentB6"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "wave 2 guys",
	Description = nil,
	Callback = function() local args = {
    [1] = "Operator"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "wave 1 guys",
	Description = nil,
	Callback = function() local args = {
    [1] = "Commander"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "hornet",
	Description = nil,
	Callback = function() local args = {
    [1] = "Hornet"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "frog",
	Description = nil,
	Callback = function() local args = {
    [1] = "Frog"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "leech",
	Description = nil,
	Callback = function() local args = {
    [1] = "Leech"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "wave 4 guys",
	Description = nil,
	Callback = function() local args = {
    [1] = "Leader"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "wave 5 guys",
	Description = nil,
	Callback = function() local args = {
    [1] = "Juggernaut"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}
Tab:Button{
	Name = "wave 6 guys",
	Description = nil,
	Callback = function() local args = {
    [1] = "Tactician"
}

game:GetService("ReplicatedStorage"):WaitForChild("Morph"):FireServer(unpack(args))
 end
}