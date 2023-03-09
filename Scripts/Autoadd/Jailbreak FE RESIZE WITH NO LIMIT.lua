while true do task.wait()
   fireclickdetector(workspace.ClothingRacks.ClothingRack.Hitbox.ClickDetector)
   for _,v in ipairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
       if v.Name == "OriginalSize" then v:Destroy() end
   end
   for _,v in ipairs(game:GetService("Players").LocalPlayer.Character.Humanoid:GetChildren()) do
       if string.find(v.Name,"Scale") then v:Destroy() end
   end
end