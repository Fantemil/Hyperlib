local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("VoidScripts", "Sentinel")
--Features
local InfMoney = Window:NewTab("InfMoney")
local InfMoney = InfMoney:NewSection("InfMoney")

InfMoney:NewButton("Inf Money", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.RemoteFunctions.SwordShopSystem:FireServer("Sell",4500000000000000000000000000000000,"Steel")
end)