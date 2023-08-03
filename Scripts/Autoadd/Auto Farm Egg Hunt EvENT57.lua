  Toggle_Firework = Value
  while Toggle_Firework and task.wait() do
        wait()
        for i,v in pairs(workspace.Scripts.CollectEasterEggs.Storage:GetDescendants()) do
          if (v.Name == "TouchInterest" and v.Parent) then
          firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
          wait()
          break;
         end
        end 
 end    