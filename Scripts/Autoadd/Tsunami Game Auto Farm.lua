   getgenv().AutoFarm = true
    
    while true do wait()
        if getgenv().AutoFarm == true then
game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-107, 120, 892)
wait(1)
game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-7, 40, -1050)
wait(30)
        end
    end