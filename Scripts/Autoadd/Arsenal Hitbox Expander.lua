getgenv().GO = true
game:GetService("RunService").Stepped:Connect(function()
   for i,v in pairs(game:GetService("Players"):GetPlayers()) do
       if v:IsA("Player") and v ~= game:GetService("Players").LocalPlayer and v.Character and GO then
           v.Character.RightUpperLeg.CanCollide = false
           v.Character.RightUpperLeg.Transparency = 5
           v.Character.RightUpperLeg.Size = Vector3.new(5,5,5)
       
           v.Character.LeftUpperLeg.CanCollide = false
           v.Character.LeftUpperLeg.Transparency = 5
           v.Character.LeftUpperLeg.Size = Vector3.new(5,5,5)

           v.Character.HeadHB.CanCollide = false
           v.Character.HeadHB.Transparency = 5
           v.Character.HeadHB.Size = Vector3.new(5,5,5)

           v.Character.HumanoidRootPart.CanCollide = false
           v.Character.HumanoidRootPart.Transparency = 5
           v.Character.HumanoidRootPart.Size = Vector3.new(5,5,5)
       end
   end
end)