local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/jf7iaXpH')))()
local Window = OrionLib:MakeWindow({Name = "REDz HUB v3.1.1 : "..gameName, HidePremium = false, SaveConfig = true, ConfigFolder = "teste"})

local REDz = Window:MakeTab({Name = "inicio",Icon = "rbxassetid://13687632207",PremiumOnly = false})

REDz:AddButton({Name = "REDz HUB in English",Callback = function()
  if game.PlaceId == 4924922222 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/HR/main/REDzHUBeng"))()
  else
    print("you need to be in the game 'Brookhaven' to run this script")
  end
end})

REDz:AddButton({Name = "REDz HUB em português",Callback = function()
  if game.PlaceId == 4924922222 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
  else
    print("Você precisa esta no 'BrookHaven' Para executar esse Script")
  end
end})