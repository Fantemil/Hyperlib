for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
   
   if v.Name == "Demon" then
      repeat
          wait()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
       wait()
       until v.Humanoid.Health <0.1
   end
end