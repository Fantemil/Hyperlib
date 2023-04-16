for i,v in pairs(workspace.Collectibles:GetChildren()) do
   if v:IsA("Part") then
       v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
   end
end