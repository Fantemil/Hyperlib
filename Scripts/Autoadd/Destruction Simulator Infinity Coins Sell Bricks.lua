if game.PlaceId == 2248408710 then
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ð¥ Destruction Simulator Script", colors)
local Tab = Window:NewTab("Money")
local Section = Tab:NewSection("Inf money")

Section:NewSlider("Money", "Money", 99999999999, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins",s,1000000)
end)

Section:NewButton("SellBricks", "ButtonInfo", function()
    -- Script generated by Luguin

game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()

end)
end