local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrt = character:WaitForChild("HumanoidRootPart")

local tool = ReplicatedStorage:WaitForChild("HuggableAdachiBadge")
local toolPosition = tool.Handle.Position

hrt.CFrame = CFrame.new(toolPosition)