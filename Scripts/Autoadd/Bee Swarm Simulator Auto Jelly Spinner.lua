--[[
   by Lxst | Feb. 21st, 2023
--]]

getgenv().Enabled = false;
getgenv().TargetBees = {'TadpoleBee', 'BuoyantBee'} -- NEEDS TO BE FORMATTED THIS WAY (You can improve on it if you want, but this works for me.)
getgenv().X = 4 -- right/left
getgenv().Y = 2 -- up/down
--
local Client = game.Players.LocalPlayer;
local HoneyComb = Client.Honeycomb;
--
local main = {}; do
   main.beeCheck = function()
       if table.find(TargetBees, HoneyComb.Value.Cells['C' .. X .. "," .. Y].CellType.Value) then
           return HoneyComb.Value.Cells['C' .. X .. "," .. Y].CellType.Value
       else
           return nil
       end
   end
   
   main.spinRoyalJelly = function()
       game.ReplicatedStorage.Events.ConstructHiveCellFromEgg:InvokeServer(X, Y, 'RoyalJelly', 1)
   end
end

if not main.beeCheck() and getgenv().Enabled then
   repeat main.spinRoyalJelly()
   until main.beeCheck() or not getgenv().Enabled
end