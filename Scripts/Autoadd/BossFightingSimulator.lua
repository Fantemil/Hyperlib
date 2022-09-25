getgenv().autoPower = true
getgenv().sellPower = true

local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Player = game:GetService("Players").LocalPlayer

spawn(function()
while autoPower do
RunService.Heartbeat:Wait()
args = {[1] = Player.Character:FindFirstChild("Linked Sword")} -- Change to name of sword, Ice Linked Sword, Fire Linked Sword, etc.
ReplicatedStorage.Remotes.Power:FireServer(unpack(args))
end
end)

spawn(function()
while sellPower do
RunService.Heartbeat:Wait()
ReplicatedStorage.Remotes.SellPower:InvokeServer() -- Sell Power
end
end)