_G.Farm = true

while _G.Farm do
    local args = {
        [1] = workspace.Mobs:FindFirstChild("mob name here"):FindFirstChild("Left Leg"),
        [2] = workspace.Mobs:FindFirstChild("mob name here").Enemy,
        [3] = game:GetService("Players").LocalPlayer.Character. -- sword name here
    }
   
    game:GetService("ReplicatedStorage").GameRemotes.DamageEvent:FireServer(unpack(args))
    wait()
end