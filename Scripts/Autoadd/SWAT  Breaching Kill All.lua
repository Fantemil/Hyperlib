if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
end

game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character task.wait(1)
for i,v in ipairs(game:GetService("Workspace").CurrentMap.Programming.Enemy:GetChildren()) do
if v:FindFirstChildOfClass("Humanoid").Health > 0 then
for i=1,5 do
local args = {
    [1] = v:FindFirstChild("Head").Position,
    [2] = 100,
    [3] = v:FindFirstChild("Head"),
    [4] = Enum.Material.Plastic,
    [5] = v:FindFirstChild("Head").Position,
    [6] = Vector3.new(0.998177707195282, -0.03030465729534626, -0.05218159034848213)
}
game:GetService("ReplicatedStorage").GunSystem.Events.Shot:FireServer(unpack(args))
task.wait()
game:GetService("ReplicatedStorage").GunSystem.Events.Reload:FireServer(0)
end

end
end