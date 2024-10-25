local Players = game:GetService("Players")
local player = Players.LocalPlayer 

local screenGui = player.PlayerGui:WaitForChild("ScreenGui")
local cheatsGUI = screenGui:WaitForChild("Cheats")

-- Set the GUI to be visible and active
cheatsGUI.Visible = true
cheatsGUI.Active = true