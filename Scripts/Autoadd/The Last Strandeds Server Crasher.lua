while task.wait() do
   for i = 1,10 do
       workspace.ServerStuff.spawnPlayer:FireServer("respawncharacter")
       workspace.ServerStuff.spawnPlayer:FireServer("hubbing")
       workspace.ServerStuff.deathPlay:FireServer() -- not needed but works better ig
   end
end