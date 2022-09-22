if game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
game:GetService("CoreGui").ScreenGui:Destroy()
getgenv().Farming1 = false
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-backups/main/uwuware-v1.lua"))()
local client = game:GetService("Players").LocalPlayer
local main = library:CreateWindow("Rush Point")
local folder4 = main:AddFolder('Knife')

folder4:AddList({text = "Knife Skins", flag = "list", value = "None", values = game:GetService("ReplicatedStorage").Assets.Weapons.Knife:GetChildren(), callback = function(a)
getgenv().chosenknife = a
end})

folder4:AddButton({text = "Change", flag = "button", callback = function()
local knife = game:GetService("ReplicatedStorage").Assets.Weapons.Knife[chosenknife]:Clone()
knife.Parent = game:GetService("ReplicatedStorage").Assets.Weapons.Knife
knife.Name = chosenknife
wait(0.5)
game:GetService("ReplicatedStorage").Assets.Weapons.Knife.Default:Destroy()
wait(0.5)
game:GetService("ReplicatedStorage").Assets.Weapons.Knife[chosenknife].Name = "Default"
end})

main:AddBind({text = "Toggle UI", key = "LeftControl", callback = function() library:Close() end})


library:Init()