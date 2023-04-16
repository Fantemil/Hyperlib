while wait(2) do
   for i,v in pairs(game.Workspace:GetChildren()) do
       if v:IsA("Model") and v ~= game.Players.LocalPlayer.Character.Parent then
           if v:FindFirstChild("LeftLowerArm") then
               v.LeftLowerArm.Size = Vector3.new(50, 50, 50)
               v.LeftLowerArm.Transparency = 1
               end
       end
   end
end