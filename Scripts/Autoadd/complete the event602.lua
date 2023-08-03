for i,v in pairs(game.workspace.Hub.Puzzle.Pieces:GetDescendants()) do
  if v.name == "1" or v.name == "2" or v.name == "3" or v.name == "4" or v.name == "5" or v.name == "6" or v.name == "7" or v.name == "8" or v.name == "9" or v.name == "10" or v.name == "11" or v.name == "12" or v.name == "13" or v.name == "14" or v.name == "15" or v.name == "16" or v.name == "17" or v.name == "18" or v.name == "19" or v.name == "20" or v.name == "21" or v.name == "22" or v.name == "23" or v.name == "24" or v.name == "25" then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
  wait(0.5)
  end
end