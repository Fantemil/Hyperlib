game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-775.050964, 36.1167526, -683.721252, 0.0332483985, 5.98332122e-08, 0.999447107, 1.54569091e-09, 1, -5.99177312e-08, -0.999447107, 3.53700491e-09, 0.0332483985)

getgenv().money = true

while wait() do
   if getgenv().money == true then
       local args = {
           [1] = "Sunset Grove"
       }
           
       game:GetService("ReplicatedStorage").DataStore.PlaceRewardsFunction:InvokeServer(unpack(args))
   end
end