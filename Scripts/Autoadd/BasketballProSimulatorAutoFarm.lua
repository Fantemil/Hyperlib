getgenv().toggle = true;

while getgenv().toggle and task.wait() do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33, 10, -418)
   
    
    game:GetService("ReplicatedStorage").RF:InvokeServer("Shoot", "Green")
    
    
    game:GetService("ReplicatedStorage").RE:FireServer("Made")
end