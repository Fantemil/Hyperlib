for i, v in pairs(game.Players:GetChildren()) do
   if v.Name == game.Players.LocalPlayer.Name then
       else
           
local A1 = game:GetService("Players")[v.Name]
local A2 = -999999999999999999999999999999999999
game:GetService("ReplicatedStorage").GiveMoney:FireServer(A1, A2)
end
end