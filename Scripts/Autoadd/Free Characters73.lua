local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


local Window = Library.CreateLib("Ours only", "DarkTheme")


local Tab = Window:NewTab("Free characters")


local Section = Tab:NewSection("Free characters")

Section:NewButton("Upgraded Ninja Cameraguy(1350)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Upgraded Ninja Cameraguy",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Upgraded Corrupted Supreme Speakerguy(1400)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Upgraded Corrupted Supreme Speakerguy",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Dark Speakerguy(265)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Dark Speakerguy",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Upgraded Supreme Cameraguy(1500)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Upgraded Supreme Cameraguy",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Supreme Cinemaguy(800)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")
 
local args = {
    [1] = "Supreme Cinemaguy",
    [2] = rightUpperLeg.CFrame,
}
 
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))
 
end)

