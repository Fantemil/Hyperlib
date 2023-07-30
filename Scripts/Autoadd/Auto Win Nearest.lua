local speed = 0.1 -- How fast you want it to go (might not work well below 0.01)




local player = game:GetService("Players").LocalPlayer
local wins = player.leaderstats.Wins
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
_G.autoWin = false
local function getWin()
    local part, distance = nil, math.huge
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Part" and v:FindFirstChild("Hitbox") then
            if (player.Character.HumanoidRootPart.Position - v.Position).Magnitude < distance then
                distance = (player.Character.HumanoidRootPart.Position - v.Position).Magnitude
                part = v
            end
        end
    end
    print("found part")
    return part
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Novice Hub | "..gameName,  IntroEnabled = true, HidePremium = false, SaveConfig = false, ConfigFolder = "none", IntroText = "Welcome to Novice Hub, "..tostring(player.Name)..". "..gameName, IntroIcon = "rbxassetid://6022668955", Icon = "rbxassetid://6022668955"}) 
local AutoTab = Window:MakeTab({Name = "Auto", Icon = "rbxassetid://6022668906", PremiumOnly = false})
AutoTab:AddToggle({Name = "Auto Win", Default = false, Callback = function(Value) 
    _G.autoWin = Value
    spawn(function()
        local oldC = player.Character.HumanoidRootPart.CFrame
        while _G.autoWin do task.wait()
            local win = getWin()
            local oldWins = wins.Value task.wait()
            player.Character.HumanoidRootPart.CFrame = win.CFrame task.wait(0.1) player.Character.HumanoidRootPart.CFrame = oldC
        end
    end)
end})
OrionLib:Init()