--HamstaGang -w- Here
--FadTheFad on v3rm

-- LOAD GUI & LIBRARY --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/CkyR8ePz", true))()

-- GUI Windows
local w = library:CreateWindow('Misc')
local x = library:CreateWindow('Auto Case Opener')
local y = library:CreateWindow('Gambling')
local z = library:CreateWindow('Credits')

-- GUI Sections
z:Section('Created by FadTheFad/fad#0588')
z:Section('Help by HamstaGang')
z:Section('Babyhamsta#0173')

-- Player Locals
local Plr = game:GetService("Players").LocalPlayer
local PlrGui = Plr.PlayerGui

-- GameActions Remote
local GameActions = game:GetService("ReplicatedStorage").Events.GamesActions

-- Flag for Stock and Amt Bought
local Bought = 0;
local Amt_Bought = 0;

-- RAP AMOUNT
local Rap_Amount = 1000;

-- Toggle Auto Tix Stock

-- Toggle Money Farm
local money = w:Toggle('Auto Money Farm', {flag = "MoneyFarm"})

-- RAP Slider
local SellSlider = w:Slider("AutoSellRap", {min = 1000; max = 50000; flag = "SellSlider"}, function(R)
  Rap_Amount = R;
end)

-- Toggle RAP Sell
local Sell = w:Toggle("Auto Sell RAP", {flag = "AutoSellRap"})

-- Auto Tix Stock Game
local AutoTixStock = y:Toggle("Auto Tix Stock", {flag = "AutoTixStock"})

-- Toggle Auto Case
local Case = x:Toggle("Auto Case", {flag = "AutoCase"})

-- Toggle Case Time Upgrade
local CaseTime = w:Toggle("Auto Case Time Upgrade", {flag = "CaseTimeUpgrade"})

-- Toggle Auto Click Upgrade
local Click = w:Toggle("Auto Click Upgrade", {flag = "AutoClickUpgrade"})

-- Auto Tix Exchange
local exchange = w:Toggle("Auto Tix Exchange", {flag = "AutoTixExchange"})


-- [[ Script Functions ]] --

-- Money Farm
spawn(function()
   while wait() do
       if w.flags.MoneyFarm then
           game:GetService("ReplicatedStorage").Events.ClientClick:FireServer()
       end
   end
end)

-- Auto Sell RAP
spawn(function()
   while wait(1) do
       if w.flags.AutoSellRap then
           game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer("SellUnder", Rap_Amount)
       end
   end
end)

-- Auto Click Upgrade
spawn(function()
   while wait(1) do
       if w.flags.AutoClickUpgrade then
           game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer("Upgrade","Clicks")
       end
   end
end)

-- Auto Case Time Upgrade
spawn(function()
   while wait(1) do
       if w.flags.CaseTimeUpgrade then
           game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer("Upgrade","CaseTime")
       end
   end
end)

-- Auto Tix Exchange
spawn(function()
   while wait() do
       if w.flags.AutoTixExchange then
           game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer("Exchange",1)
       end
   end
end)


-- [[ Auto Tix Window ]] --

-- Auto Tix
spawn(function()
   while wait() do
       if y.flags.AutoTixStock then
           
           -- GUI (Stock Price)
           local curr_stock_price = PlrGui.Gui.Frames.Games.Stock.Body.Placeholder.StockPrice.Inner.Price.Text
           
           -- GUI (Local Plr Tixs)
           local curr_tix_amt = PlrGui.Gui.Hotbar.Container.Stats.Tix.Main.Amount.Text
           
           -- Check current price and buy/sell
           if tonumber(curr_stock_price) <= 45 and Bought == 0 then
           
               -- If we have enough to buy our minium
               if tonumber(curr_tix_amt) >= 45 then
                   
                   -- Calculate amt we can buy
                   local amt_count = (tonumber(curr_tix_amt) / tonumber(curr_stock_price))
                   Amt_Bought = math.floor(amt_count - 0.5) -- Round Down
                   
                   -- Amt Cap
                   if Amt_Bought > 50 then
                       Amt_Bought = 50;
                   end
                       
                   -- Less then or equal to 35 (Buy)
                   GameActions:InvokeServer("Stock", "Buy", Amt_Bought )
                   Bought = 1; -- Set flag
               end
           elseif tonumber(curr_stock_price) >= 70 and Bought == 1 then
               GameActions:InvokeServer("Stock", "Sell", Amt_Bought )  -- Equal to or more than 70 (Sell)
               Bought = 0;
           end
       end
   end
end)

-- [[ Case Opener Window ]] --

local Selected_Case = "Starter";

-- Case Selection
local Cases = x:Dropdown("Select Case", {flag = "casenums"; list = {"Starter"; "Noobie"; "Stepping"; "Learning"; "Funding"; "Business"; "Legendary"; "Marcellus"; "Famous"; "Mythic"; "Eirene"; "Aeschylus"; "Olysseus";}}, function(v)
   Selected_Case = v;
end)

-- Toggle Auto Case Open
spawn(function()
   while wait(1) do
       if x.flags.AutoCase then
           game:GetService("ReplicatedStorage").Events.OpenCase:InvokeServer(Selected_Case)
       end
   end
end)

-- provided by cat man and hamsta man
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
   v:Disable()
end