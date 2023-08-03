local mouse = game:GetService("Players").LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:Connect(function(Key,F)
   if Key.KeyCode == Enum.KeyCode.F then
       if mouse.Target and mouse.Target:IsA("Seat") then
           mouse.Target:Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
           game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
           mouse.Target:Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
       end
   end
end)