local plr = game.Players.LocalPlayer
local things = workspace.__THINGS
local remote = things.__REMOTES.clickedButton

while task.wait() do -- no delay so it can go hella fucking fast + the script iterating over instances makes it go slow enough
   local pets = {}; for i,v in pairs(things.Pets:FindFirstChild(plr.Name):GetChildren()) do
       table.insert(pets, v.Name)
   end
       
   local coins = {}; for i,v in pairs(things.Coins.SpawnWorld:GetChildren()) do
       for z,x in pairs(v:GetDescendants()) do
           if table.find(pets, x.Name) then
               table.insert(coins, v)
           end
       end
   end

   for i,v in pairs(coins) do
       remote:FireServer(v.Coin, v)
   end
end