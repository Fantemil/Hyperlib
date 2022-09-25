--[[ Variables ]]
local RS = game:GetService("ReplicatedStorage")
local PS = game:GetService("Players")
local Client = RS:WaitForChild("CIient")
local RunSrv = game:GetService("RunService")

RunSrv.RenderStepped:Connect(function()
   Client:FireServer("Melee", "Divine Shield", PS.LocalPlayer.Character)
end)