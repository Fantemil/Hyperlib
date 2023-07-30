--made by CasualDev#0001

-- if u enable it u have to wait till it ends to make it false
getgenv().autofarmget = false

--/ Autofarm songs 
local player = game:GetService("Players").LocalPlayer.Name
local tycoonFolder = game.Workspace.Tycoons

for i, v in pairs(tycoonFolder:GetChildren()) do
    local tycoonOwner = v:FindFirstChild("TycoonOwner")
    if tycoonOwner and tycoonOwner.Value == player then
        print(v.Name)
        yourtycoon = v.Name
        break
    end
end

local location1 = game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location1.CFrame
local location2 = game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location2.CFrame
local location3 = game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location3.CFrame
local location4 = game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location4.CFrame

function autofarmstart()
    spawn(function()
        localcharacter = game.Players.LocalPlayer
        if localcharacter.Character then
            localcharacter.Character.HumanoidRootPart.CFrame = location1
            wait(1)
            fireproximityprompt(game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location1.ProximityPrompt)
            wait(7)
            localcharacter.Character.HumanoidRootPart.CFrame = location2
            wait(1)
            fireproximityprompt(game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location2.ProximityPrompt)
            wait(7)
            localcharacter.Character.HumanoidRootPart.CFrame = location3
            wait(1)
            fireproximityprompt(game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location3.ProximityPrompt)
            wait(7)
            localcharacter.Character.HumanoidRootPart.CFrame = location4
            wait(1)
            fireproximityprompt(game:GetService("Workspace").Tycoons[yourtycoon].StaticItems.Belt1.ProductLocations.Location4.ProximityPrompt)
            wait(7)
        end
    end)
end

spawn(function()
    while autofarmget == true do
        autofarmstart()
        wait(35)
    end
end)