--// Created by Ezpi#0474 \\--

--// Settings \\--
local Amount = 999999999999

--// Services \\--
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Variables \\--
local Player = Players.LocalPlayer
local Upgrade = ReplicatedStorage:WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ProximityPrompts"):WaitForChild("RE"):WaitForChild("ConfirmUpgrade")
local Map = Workspace:WaitForChild("PlayerMaps"):WaitForChild("Active"):WaitForChild(Player.Name .. "_map")

--// Inf. Cash \\--
local Building = Map:FindFirstChildWhichIsA("ProximityPrompt", true)
if Building then
    Upgrade:FireServer({
        Parent = Building.Parent,
        Name = Player.Name .. ";3;" .. Building:FindFirstAncestorOfClass("Model").Name .. ";" .. tostring(-Amount)
    })
end