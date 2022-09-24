local old;
old = hookmetamethod(game,"__namecall", function(...)
   local args = {...}
   
   if getnamecallmethod() == "FireServer" and args[3] == "RedoPoints" then
      return
   end
   
   return old(unpack(args))
end)

local stats = {"Strenght","Defense","Blade","Gun","Fruit","Level"}
game:GetService("ReplicatedStorage").Remotes.ServerHandler:FireServer("PointsControl", "addPoints", nil, "Stamina", -10000)
for i,v in pairs(stats) do
  game:GetService("ReplicatedStorage").Remotes.ServerHandler:FireServer("PointsControl", "addPoints", nil, v, 300)
end