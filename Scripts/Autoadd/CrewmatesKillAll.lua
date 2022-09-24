for i,v in pairs(game.Players:GetChildren()) do task.wait()
if v ~= game.Players.LocalPlayer then
game:GetService("ReplicatedStorage").RemoteEvent:FireServer("killPlayer",v,v.Character.HumanoidRootPart.CFrame)
end
end