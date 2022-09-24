print("Kat Hitbox Extender By Trout! Vouch On Verm <3")
local Players = game:GetService("Players")
for _, player in pairs(Players:GetPlayers()) do
 local charpre = player.Character or player.CharacterAdded:Wait()
 if player.UserId == game.Players.LocalPlayer.UserId then
 else
  for i,v in pairs(charpre:WaitForChild("CollisionParts",60):GetChildren()) do
   v.Transparency = 0.8
   v.Size = Vector3.new(2.82, 2.82, 1.41)
   v.Color = Color3.fromRGB(170, 255, 0)
   v.Material = 'Neon'
  end
 end
 player.CharacterAdded:Connect(function(chart)
  chart:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("Position"):Connect(function()
   if player.UserId == game.Players.LocalPlayer.UserId then
   else
    for i,v in pairs(chart:WaitForChild("CollisionParts",60):GetChildren()) do
     v.Transparency = 0.8
     v.Size = Vector3.new(2.82, 2.82, 1.41)
     v.Color = Color3.fromRGB(170, 255, 0)
     v.Material = 'Neon'
    end
   end
  end)
 end)
end