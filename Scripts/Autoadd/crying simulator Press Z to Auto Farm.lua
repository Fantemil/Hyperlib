--// Services \\--
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local UIS = game:GetService("UserInputService")

--// Script \\--
game:GetService("StarterGui"):SetCore("SendNotification",{Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,Text = tostring("Script Loaded!"),Duration = 5})
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Toggle Key",Text = tostring("Z"),Duration = 5})
if getgenv().Loaded == nil then
getgenv().Loaded = true
else game.Players.LocalPlayer:Kick("Load Script Once")    
end

getgenv().Started = false;

UIS.InputBegan:Connect(function(input2)
if input2.KeyCode == Enum.KeyCode.Z then
if getgenv().Started then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,Text = tostring("Toggle : true"),Duration = 5})
else
game:GetService("StarterGui"):SetCore("SendNotification",{Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,Text = tostring("Toggle : false"),Duration = 5})
end
end
end)

--// Toggle Start \\--
UIS.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.Z then
    if getgenv().Started == false then
        getgenv().Started = true
    else getgenv().Started = false
end
end
end)

game.RunService.Stepped:Connect(function()
if getgenv().Started then
    pcall(function()
        ReplicatedStorage.RemoteEvents.Drink:FireServer() 
        end)
    end
end)

game.RunService.Stepped:Connect(function()
if getgenv().Started then
    pcall(function()
        firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui3.LevelUp.Accept["Activated"])
        ReplicatedStorage.RemoteEvents.AutoStats:FireServer()
    end)
    end
end)

game.RunService.Heartbeat:Connect(function()
if getgenv().Started then
    pcall(function()
        ReplicatedStorage.RemoteEvents.ManageCrying:FireServer(true)
    end)
    end
end)