_G.loop = true
while _G.loop == true do
   wait(0.1)
for i,v in pairs(game:GetService("Workspace").NPCs:GetDescendants()) do
  if v.ClassName == "Humanoid" then
       v.WalkSpeed = 100
   end
end
for i,v1 in pairs(game:GetService("Workspace").Map.Marts:GetDescendants()) do
  if v1.Name == "MoneyPileInteractionPart" then
       v1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
end
end