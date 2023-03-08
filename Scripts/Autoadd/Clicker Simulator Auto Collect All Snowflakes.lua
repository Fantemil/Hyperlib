--YOU MUST RE-EXECUTE EVERYTIME YOU COLLECT THEM ALL--

for _, v in pairs(game.Workspace.Zones.Christmas.Drops:GetDescendants()) do
  if v.Name == "TouchInterest" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            wait()
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
        end
    end


 