local resetEggs = function()
  local rootPart = game.Players.LocalPlayer.Character.PrimaryPart
  firetouchinterest(rootPart,game.Workspace.Stage6.RebirthButton,0)
  firetouchinterest(rootPart,game.Workspace.Stage6.RebirthButton,1)
end


for i,v in pairs (game.Workspace.Eggs:GetChildren()) do
  local s,e = pcall(function()
      v:GetPropertyChangedSignal("Transparency"):Connect(function()
          if v.Transparency == 0 then
              task.wait()
              fireclickdetector(v.Mouse.ClickDetector)
              resetEggs()
          end
      end)
  fireclickdetector(v.Mouse.ClickDetector)
  end)
end