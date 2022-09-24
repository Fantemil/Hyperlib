for _,v in ipairs(workspace.Map.Orbs:GetDescendants()) do
     if v.Name == "Part" then
          task.wait()
          v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     end
end