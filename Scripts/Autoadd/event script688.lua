for i,v in pairs(game:GetService("Workspace").Shades:GetDescendants()) do
   if v:FindFirstChild("TouchInterest") then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
   wait(0.5)
   end
end