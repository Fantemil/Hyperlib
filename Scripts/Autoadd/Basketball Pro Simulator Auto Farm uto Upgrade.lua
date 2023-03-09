getgenv().autoshot = true
getgenv().autobuy = true

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")

local player = Players.LocalPlayer

local RemoteFunction = game:GetService("ReplicatedStorage").RF
local RemoteEvent = game:GetService("ReplicatedStorage").RE

task.spawn(function()
   while getgenv().autoshot do
       task.wait()
       RemoteFunction:InvokeServer("Shoot", "Green")
       task.wait()
       RemoteEvent:FireServer("Made")
       task.wait(.5)
   end
end)

task.spawn(function()
   while getgenv().autobuy do
       task.wait(1)

       if player.PlayerGui.UI.Upgrade.Upgrade.Power.Cost.Amnt.Text ~= "???" then
           RemoteEvent:FireServer("Upgrade", "Power")
       end

       if player.PlayerGui.UI.Upgrade.Upgrade.Speed.Cost.Amnt.Text ~= "???" then
           RemoteEvent:FireServer("Upgrade", "Speed")
       end
   end
end)

-- anti afk

player.Idled:Connect(function()
   VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
   task.wait(1)
   VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)