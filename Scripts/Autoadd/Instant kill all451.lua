for d = 1, 5 do
    task.wait(0.1)
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("RightLowerLeg") then
            local args = {
                [1] = v.Character.RightLowerLeg,
                [2] = Vector3.new(9e9, -9e9, -0.9533988237380981)
            }

            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShoveTool"):FireServer(unpack(args))
        end
    end

    for i,v in pairs(workspace:GetChildren()) do
        if v.Name == "R15Rig" and v:FindFirstChild("Head") and v ~= game.Players.LocalPlayer then
            local args = {
                [1] = v:FindFirstChild("Head"),
                [2] = Vector3.new(9e9, -9e9, -0.9533988237380981)
            }

            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ShoveTool"):FireServer(unpack(args))
        end
    end
end