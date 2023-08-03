while task.wait(.2) do
    for i, v in pairs(game.Players:GetChildren()) do 
      local playerBody = v.Character:FindFirstChild('HumanoidRootPart')
      local lp = game.Players.LocalPlayer.Character
      local hrp = lp:FindFirstChild('HumanoidRootPart')
      if v.Character.Humanoid.Health ~= 0 then 
          hrp.CFrame = playerBody.CFrame
      end
      task.wait(.2)
    end
end