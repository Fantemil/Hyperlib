KICK PEOPLE
-----------
game:GetService("ReplicatedStorage").AdminPanelEvents.Kick:FireServer("username")
-----------------------------------------------------------------------
KICK ALL
--------
for i,v in ipairs(game.Players:GetPlayers()) do
   game:GetService("ReplicatedStorage").AdminPanelEvents.Kick:FireServer(v.Name)
end
----------------------------------------------------------------------
KILL PEOPLE
----------
game:GetService("ReplicatedStorage").AdminPanelEvents.Kill:FireServer("username")
----------------------------------------------------------------------
Infinite points
------------
game:GetService("ReplicatedStorage").AdminPanelEvents.InfinitePoints:FireServer("username")
----------------------------------------------------------------------
