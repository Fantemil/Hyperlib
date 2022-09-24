local mess = "whatever message here"
local repsto = game:GetService("ReplicatedStorage")

for i,v in pairs(game.Players:GetPlayers()) do
   if v.Name ~= game.Players.LocalPlayer.Name then
   repsto.KickPlayer:FireServer(v.Name, mess)
   end
end