workspace:WaitForChild("Souls").DescendantAdded:Connect(function(v)
    if v:IsA("TouchTransmitter") and v.Parent:IsA("BasePart") and lp.Character and lp.Character:FindFirstChildWhichIsA("Humanoid") and lp.Character:FindFirstChildWhichIsA("Humanoid").RootPart then
        firetouchinterest(lp.Character:FindFirstChildWhichIsA("Humanoid").RootPart,v.Parent,0)
    end
end)