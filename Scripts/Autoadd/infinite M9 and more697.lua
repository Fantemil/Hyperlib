

 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(824.588196, 101.034294, 2251.87866, 0.976225972, -7.18770252e-08, 0.216755301, 8.15981309e-08, 1, -3.58984984e-08, -0.216755301, 5.2731874e-08, 0.976225972)

wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

while wait() do
    workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(workspace:WaitForChild("Prison_ITEMS"):WaitForChild("giver"):WaitForChild("Remington 870"):WaitForChild("ITEMPICKUP"))
    workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(workspace:WaitForChild("Prison_ITEMS"):WaitForChild("giver"):WaitForChild("M9"):WaitForChild("ITEMPICKUP"))
end
