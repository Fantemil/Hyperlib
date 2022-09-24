repeat wait() until game:GetService'Players'.LocalPlayer.Character ~= nil
game:GetService'Players'.LocalPlayer.Character:WaitForChild("fall_damage"):Destroy()

game:GetService'Players'.LocalPlayer.CharacterAdded:Connect(function(char)
   char:WaitForChild("fall_damage"):Destroy()
end)