wait(30)
_G.Enabled = true
snipe = "PUT WHAT YOU WANT HERE"
whenSpins = 90
game:GetService("Players").LocalPlayer.startevent:FireServer("band", "\128")
local tpservice= game:GetService("TeleportService")
local plr = game.Players.LocalPlayer

while _G.Enabled == true do
   local A_1 = "spin"
   local A_2 = "kg1"
   game:GetService("Players").LocalPlayer.startevent:FireServer(A_1, A_2)
   wait()
   local A_1 = "spin"
   local A_2 = "kg2"
   game:GetService("Players").LocalPlayer.startevent:FireServer(A_1, A_2)  
   if game:GetService("Players").LocalPlayer.statz.main.kg1.Value == snipe then
       game:GetService("Players").LocalPlayer.startevent:FireServer("band", "Eye")
       wait()
       game.Players.LocalPlayer:Kick("leave you got it leave")
   end
   if game:GetService("Players").LocalPlayer.statz.main.kg2.Value == snipe then
       game:GetService("Players").LocalPlayer.startevent:FireServer("band", "Eye")
       wait()
       game.Players.LocalPlayer:Kick("leave you got it leave")
   end
   if game:GetService("Players").LocalPlayer.statz.spins.Value == whenSpins then do
       game.Players.LocalPlayer:Kick("No more spins rejoining to refill")
       tpservice:Teleport(game.PlaceId, plr)
   end
end
end