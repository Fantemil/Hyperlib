--|| - Auto Chest Made By InfinityMercury - ||--
local TweenService = game:GetService('TweenService')
local chestName = {}
for _, v in pairs(workspace.ChestSpawns:GetChildren()) do
  if v:IsA('Part') then
    local chestModel = v
    table.insert(chestName, v.Name)
    for _, x in pairs(workspace:GetChildren()) do
      if x:IsA('Model') and x.Name == tostring(chestModel) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Base.CFrame * CFrame.new(0,5,0) wait(1) fireproximityprompt(x.Inside.ProximityPrompt)
        wait(6) -- Time to teleport Chest
      end
    end
  end
end