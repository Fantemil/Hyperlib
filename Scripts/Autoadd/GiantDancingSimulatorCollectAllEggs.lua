getgenv().egg = true
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
while getgenv().egg == true do
for i ,v in pairs(game:GetService("Workspace").EggHunt:GetDescendants()) do
  if v.Name == "MainPart" then
      player.CFrame = v.CFrame
      if v:FindFirstChild("ProximityPrompt") then
      fireproximityprompt(v.ProximityPrompt)
  end
end
end
wait()
end