while task.wait() do
    pcall(function()
        for i, v in pairs(workspace:GetChildren()) do
            if v:IsA("Tool") then
                local MainPart = v:FindFirstChild("Handle") or v:FindFirstChildOfClass("MeshPart") or v:FindFirstChildOfClass("BasePart") or v:FindFirstChildOfClass("Part")
                if MainPart then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, MainPart, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, MainPart, 1)
                end
            end
        end
    end)
end