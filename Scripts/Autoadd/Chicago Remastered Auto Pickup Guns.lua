game:GetService("Workspace").ChildAdded:Connect(function(child)
 if child:IsA("Tool") then
  local plr = game:GetService("Players").LocalPlayer.Character.Humanoid
        plr:EquipTool(child)
    end
end)