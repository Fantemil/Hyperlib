_G.AutoFarm = true; -- Basicaly infinite coins
_G.AutoSell = true; -- Automaticaly sells collected coins
_G.AutoStorage = true; --Automaticaly upgrades coin storage
_G.AutoSpeed = true; --Automaticaly upgrades player speed

-- Get best sell place

local BestSell = nil

for i,v in pairs(workspace.Rings:GetChildren()) do
   local Formatted = tonumber(string.split(tostring(v), 'x')[2])
   if BestSell == nil and Formatted ~= nil then
       BestSell = v
   end
   print(Formatted)
   if Formatted ~= nil and Formatted > tonumber(string.split(tostring(BestSell), 'x')[2]) then
       BestSell = v
   end
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = BestSell.Touch.CFrame

-- Handle pseudo infinite coins/auto farm

spawn(function()
   while true do
       if _G.AutoFarm == false then return end
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, BestSell.Touch, 0)
       wait()
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, BestSell.Touch, 1)
       wait(.1)
       for i = 1, 2 do
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Coins:GetChildren()[math.random(1,#workspace.Coins:GetChildren())]:FindFirstChildWhichIsA('BasePart').CFrame
           wait(.05)
       end
       wait()
   end
end)

-- Handle auto storage

spawn(function()
   while wait(.1) do
       if _G.AutoStorage == false then return end
       game.ReplicatedStorage.Events.GameEvents.UpgradeStorage:FireServer()
   end
end)

-- Handle auto speed

spawn(function()
   while wait(.1) do
       if _G.AutoSpeed == false then return end
       game.ReplicatedStorage.Events.GameEvents.UpgradeSpeed:FireServer()
   end
end)