_G.Farm = true -- Set to false to stop
while _G.Farm do task.wait()
for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Part") and v.Name == "Money" and v:FindFirstChild("ClickDetector") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.CFrame
        fireclickdetector(v.ClickDetector)
end
end
end