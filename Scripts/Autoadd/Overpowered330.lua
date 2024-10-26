-- Made by KevinMitnickHKR (Credit when using)

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Color Chairs - Free - ðª", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

local coins = 69
local autosit = false

tab.newInput("Coins", "Set The Amount Of Desired Value", function(inputCoins)
    coins = tonumber(inputCoins)
    game:GetService("ReplicatedStorage").EggHatchingRemotes.HatchServer:InvokeServer("Mythic Egg", -coins)
end)

tab.newToggle("Auto Sit", "Toggle", false, function(autositToggle)
    autosit = autositToggle
    while autosit do
        wait(0.1)

        for _, chair in ipairs(workspace:WaitForChild("Chairs"):GetChildren()) do
            if chair:IsA("Model") and chair:FindFirstChild("Seat") and chair.Seat.Occupant == nil then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = chair:GetPrimaryPartCFrame() * CFrame.new(0, 3, 0)
                wait(2)
                break
            end
        end
    end
end)

tab.newButton("Obtain Trails", "Obtain All Trails", function()
    game:GetService("ReplicatedStorage").GiveAllTrails:FireServer()
end)