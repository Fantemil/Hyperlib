loadstring([[
local Players, UserInputService, Camera = game:GetService("Players"), game:GetService("UserInputService"), workspace.CurrentCamera
local player = Players.LocalPlayer

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.Q then
        local others = {}
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= player then table.insert(others, p) end
        end
        if #others > 0 then
            local target = others[math.random(1, #others)]
            if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                local pos = target.Character.HumanoidRootPart.Position
                Camera.CameraType = Enum.CameraType.Scriptable
                Camera.CFrame = CFrame.new(pos + Vector3.new(0, 5, 10), pos)
                print("Locked on " .. target.Name)
            end
        end
    end
end)

player.CharacterAdded:Connect(function() Camera.CameraType = Enum.CameraType.Custom end)
Players.PlayerRemoving:Connect(function(p) if p == player then Camera.CameraType = Enum.CameraType.Custom end end)
]])
