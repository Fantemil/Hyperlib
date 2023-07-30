getgenv().kill = true; -- set "true" to "false" to stop the script

while getgenv().kill == true and task.wait(.1) do
    for i,v in pairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer and v.Character ~= nil and not v.Character:FindFirstChild("ForceField") then
        pcall(function()
game:GetService("ReplicatedStorage").Remotes.Stab:FireServer(v.Character.HumanoidRootPart)
game:GetService("ReplicatedStorage").Remotes.Shoot:FireServer(Vector3.new(0, 0, 0),Vector3.new(0, 0, 0),v.Character.HumanoidRootPart.Part,Vector3.new(0, 0, 0))
        end)
        end
    end
end