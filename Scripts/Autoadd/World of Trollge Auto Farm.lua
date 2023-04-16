local TweenService = game:GetService("TweenService")

while true do
    task.wait()
    for _, tool in pairs(workspace:GetDescendants()) do
        if tool:IsA("Tool") then
            local success, result = pcall(function()
                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
                local tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = tool.Handle.CFrame})
                tween:Play()
            end)
            if not success then
                warn(result)
            end
            wait(1)
        end
    end
end