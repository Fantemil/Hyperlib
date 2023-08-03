
local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/jf7iaXpH')))()
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = OrionLib:MakeWindow({Name = "REDz HUB : "..gameName, HidePremium = false, SaveConfig = true, ConfigFolder = "teste"})

local REDz = Window:MakeTab({Name = "Main",Icon = "rbxassetid://13687632207",PremiumOnly = false})

REDz:AddButton({Name = "REDz HUB v3.1.2 In English",Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/HR/main/REDzHUBeng"))()
end})

REDz:AddButton({Name = "REDz HUB v3.1.3 em Português",Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
end})