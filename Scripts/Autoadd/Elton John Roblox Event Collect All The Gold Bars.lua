local C = game:GetService("Workspace").PreShow.Spawners.CollectableBricks

for _,v in pairs(C:GetDescendants()) do
   if v:IsA("MeshPart") then
       task.wait()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   end
endlocal C = game:GetService("Workspace").PreShow.Spawners.CollectableBricks

for _,v in pairs(C:GetDescendants()) do
   if v:IsA("MeshPart") then
       task.wait()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   end
end