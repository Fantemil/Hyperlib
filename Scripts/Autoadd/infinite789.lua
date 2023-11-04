while true do
    local t = game:GetService("TweenService")
    local w = game:GetService("Workspace")
    local p = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local f = "Floppas"
    local d = 1

    local folder = w:FindFirstChild(f)

    if folder then
        for _, o in pairs(folder:GetChildren()) do
            if o:IsA("BasePart") then
                local i = o.Position
                local ti = TweenInfo.new(d, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                local tw = t:Create(o, ti, {CFrame = CFrame.new(p)})
                tw:Play()
                tw.Completed:Wait()
            end
        end
    end
    wait()
end