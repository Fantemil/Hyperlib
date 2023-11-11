local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


local Window = Library.CreateLib("Ours only", "DarkTheme")


local Tab = Window:NewTab("Free characters")


local Section = Tab:NewSection("Free characters")

Section:NewButton("PlungerCameraGuy [Glitch](300)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "PlungerCameraGuy [Glitch]",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("TitanTVMan(5000)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "TitanTVMan",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("UpgradeTitanSpeakerMan(850)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "UpgradeTitanSpeakerMan",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Him(300)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Him",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("TitanCameraManUpgrade(7500)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "TitanCameraManUpgrade",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Weaponized-Cameraman(300)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Weaponized-Cameraman",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)

Section:NewButton("Scienctist CameraMan(200)", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character
local rightUpperLeg = character:WaitForChild("RightUpperLeg")

local args = {
    [1] = "Scienctist CameraMan",
    [2] = rightUpperLeg.CFrame,
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))

end)