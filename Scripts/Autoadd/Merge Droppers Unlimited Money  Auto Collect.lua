if game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
game:GetService("CoreGui").ScreenGui:Destroy()
getgenv().Farming1 = false
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-backups/main/uwuware-v1.lua"))()
local client = game:GetService("Players").LocalPlayer
local main = library:CreateWindow("Merge Droppers!")
local folder = main:AddFolder('Main')



folder:AddToggle({text = "Auto-Money", flag = "autofarm", callback = function(state)
if state then
getgenv().Farming1 = true
while Farming1 == true do
local args = {
  [1] = 16,
  [2] = nil
}

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
task.wait()
end
else
getgenv().Farming1 = false
end
end})



folder:AddToggle({text = "Auto-Parts", flag = "autofarm", callback = function(state)
if state then
getgenv().Farming1 = true
while Farming1 == true do
for _,w in pairs(game:GetService("Workspace").Tycoon.Plot[userplot].DropParts:GetChildren()) do
for _,gg in pairs(w:GetChildren()) do
if gg:IsA("Part") then
firetouchinterest(game.Players.LocalPlayer.Character.Head, gg, 0)
end
end
end
task.wait()
end
else
getgenv().Farming1 = false
end
end})

folder:AddList({text = "Plot", flag = "list", value = "None", values = game:GetService("Workspace").Tycoon.Plot:GetChildren(), callback = function(a)
getgenv().userplot = a
end})

main:AddBind({text = "Toggle UI", key = "LeftControl", callback = function() library:Close() end})

library:Init()