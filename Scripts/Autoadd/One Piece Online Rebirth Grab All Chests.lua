for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
   if v:IsA("ClickDetector") and v.Parent.Parent.Active.Value == true then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
       wait(.5)
       fireclickdetector(v)
   end
end