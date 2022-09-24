while wait(0.2) do 
    pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298.543976, 20.3333931, 841.82135, -0.0734398961, 4.93526553e-09, -0.997299671, -2.74371592e-09, 1, 5.15067233e-09, 0.997299671, 3.11457171e-09, -0.0734398961)
wait(0.3)
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("1").Handle,
    [2] = 93.680191040039,
    [3] = -300.3918762207,
    [4] = true,
    [5] = workspace.Hoop.Hoop,
    [6] = 0
}

game:GetService("ReplicatedStorage").Shot:FireServer(unpack(args))


wait(0.2)
local args = {
    [1] = 196,
    [2] = workspace.Hoop,
    [3] = 5
}

game:GetService("ReplicatedStorage").Score:FireServer(unpack(args))
end) end 