_G.AutoSteal = true
while _G.AutoSteal do
for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
    if v:IsA("Part") and v.Name == ("MoneyDrop") then
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(v.Position) 
                            wait(0.2)
                            fireclickdetector(game:GetService("Workspace").Ignored.Drop.MoneyDrop.ClickDetector)
end
wait()
end
end