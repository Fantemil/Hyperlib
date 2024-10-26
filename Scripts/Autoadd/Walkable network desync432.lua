local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
--
local LocalPlayer = Players.LocalPlayer
local Sleeping = false
--
RunService.PostSimulation:Connect(function()
    Sleeping = not Sleeping
    sethiddenproperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", Sleeping)
end)