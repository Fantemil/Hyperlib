getgenv().farmer = true; --turn off by making it false

while wait () do
   if getgenv().farmer == true then
       local A_1 = "Legendary"
       local Event = game:GetService("Players").LocalPlayer.PlayerGui.SpinGui.LOL.Spin.Spin.Reward
       Event:FireServer(A_1)
   end
end