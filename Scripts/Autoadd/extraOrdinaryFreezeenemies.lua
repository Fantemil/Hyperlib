-- Freeze
for i, v in pairs(game.Workspace.LivingEnemies:GetChildren()) do
   if v:IsA("Model") then
       v.HumanoidRootPart.Anchored = true
       v.Stats.Power.Value = 0 --don't work sometime
   end
end