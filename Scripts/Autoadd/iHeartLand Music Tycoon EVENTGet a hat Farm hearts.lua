local heart = game.Workspace.ScavengerHunt.IheartScavengerHunt

for i,v in pairs (heart:GetChildren()) do
   if v:IsA("Model") then
       wait(0.3)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetPivot()
   end
end