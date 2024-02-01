local Humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid')



Humanoid.Changed:Connect(function(state)
if state == "WalkSpeed" or state == "JumpPower" then
    Humanoid.JumpPower = 30
end
end)