 
for i = 1, 2 do --change the 2 to how much you want it to be executed for
    wait(1)
local teleport_table = { location1 = Vector3.new(16154.9971, 442.006897, 3512.1709, 0.976231396, 7.06996701e-08, -0.216730952, -5.64080942e-08, 1, 7.21277544e-08, 0.216730952, -5.81879966e-08, 0.976231396),
    location2 = Vector3.new()} local tween_s = game:GetService('TweenService') local tweeninfo = TweenInfo.new(65,Enum.EasingStyle.Linear) local lp = game.Players.LocalPlayer function bypass_teleport(v) if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then local cf = CFrame.new(v) local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf}) a:Play()  a.Completed:Wait()  print('Teleporting Done!') end end bypass_teleport(teleport_table.location1)
wait(5)

local args = {
    [1] = workspace:WaitForChild("Map"):WaitForChild("Ravenna"):WaitForChild("Artificial"):WaitForChild("CargoSpawn")
}

game:GetService("ReplicatedStorage"):WaitForChild("RS"):WaitForChild("Remotes"):WaitForChild("Misc"):WaitForChild("UseCargoSpawn"):FireServer(unpack(args))
wait(2)

local teleport_table = { location1 = Vector3.new(95.35850524902344, 428.20574951171875, 3419.4326171875),
    location2 = Vector3.new()} local tween_s = game:GetService('TweenService') local tweeninfo = TweenInfo.new(65,Enum.EasingStyle.Linear) local lp = game.Players.LocalPlayer function bypass_teleport(v) if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then local cf = CFrame.new(v) local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf}) a:Play()  a.Completed:Wait()  print('Teleporting Done!') end end bypass_teleport(teleport_table.location1)
wait(5)

local args = {
    [1] = "Sell",
    [2] = workspace:WaitForChild("NPCs"):WaitForChild("Elgfrothi"):WaitForChild("Elgfrothi")
}

game:GetService("ReplicatedStorage"):WaitForChild("RS"):WaitForChild("Remotes"):WaitForChild("Misc"):WaitForChild("Carry"):FireServer(unpack(args))
end