local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local coinsFolder = game:GetService("Workspace").CurrencyPickups:GetChildren()
local Window = Library:MakeWindow({Name = "Beatland more like getting beat and stranded on a stray piece of land!", HidePremium = false, SaveConfig = false, ConfigFolder = "nothing"})
local shopTab = Window:MakeTab({
Name = "Main (Needs Coins)",
Icon = "rbxassetid://4483345998",
PremiumOnly = false,
})
local function buyItem(item, number)
local args = {
    [1] = item,
    [2] = number,
}
game:GetService("ReplicatedStorage").TGSItemShops_BuyItem:InvokeServer(unpack(args))
end
local Section = shopTab:AddSection({
Name = "Shop Items"
})

local jetPack = game:GetService("Workspace").Tower.JetpackZonesAndPickup.JetpackCollect

local freeItems = Window:MakeTab({
Name = "Free Items",
Icon = "rbxassetid://4483345998",
PremiumOnly = false,
})

freeItems:AddButton({
Name = "Press before Jetpack Button!",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.0296936, 6.24552345, -13.7803831, -0.997261047, -8.71365702e-10, 0.0739624649, -4.50127091e-09, 1, -4.8910973e-08, -0.0739624649, -4.91099321e-08, -0.997261047)*CFrame.new(0,0,-5)
  end
})


freeItems:AddButton({
Name = "UGC_Jetpack!",
Callback = function()
for _,v in pairs(game:GetService("Workspace").Tower.JetpackZonesAndPickup.JetpackCollect:GetDescendants()) do 
    if v:IsA("BasePart") then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    end 
end 
  end
})


shopTab:AddButton({
Name = "UGC_Wings!",
Callback = function()
      buyItem("UGC_Wings", 1)
  end    
})

shopTab:AddButton({
Name = "Emote",
Callback = function()
buyItem("UGC_DanceMove", 1)
end
})

shopTab:AddButton({
Name = "Frog Hat",
Callback = function()
buyItem("UGC_FrogHat",1)
end
})

shopTab:AddButton({
Name = "Boombox",
Callback = function()
buyItem("UGC_Boombox", 1)
end 
})

shopTab:AddButton({
Name = "Peace Sign",
Callback = function()
buyItem("UGC_PeaceSign", 1)
end
})


local function grabCoins()
    for _,child in pairs(coinsFolder) do 
        if child:IsA("Model") then 
            local beatCoin = child:FindFirstChild("BeatCoin")
            if beatCoin then
                local touchTransmitter = beatCoin:FindFirstChildWhichIsA("TouchTransmitter")
                if touchTransmitter then 
                    beatCoin.Transparency = 1
                    beatCoin.CanCollide = false
                    beatCoin.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, beatCoin, 0)
                end
            end 
        end    
    end 
end

local automateTab = Window:MakeTab({
Name = "Autofarm Coins",
Icon = "rbxassetid://4483345998",
PremiumOnly = false,
})

automateTab:AddToggle({
Name = "Autofarm Coins",
Default = false,
Callback = function(Value)
_G.On = Value
while _G.On do 
grabCoins()
wait()
end 
end    
})

Library:Init() 