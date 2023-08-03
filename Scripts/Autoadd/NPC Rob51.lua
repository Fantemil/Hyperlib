getgenv().Enabled = true

local LocalPlayer = game:GetService("Players").LocalPlayer
for _,v in next, getconnections(LocalPlayer.Idled) do
    v:Disable()
end

while task.wait() and Enabled do
    local HumanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    for _,v in next, game:GetService("Workspace"):GetChildren() do
        if v.Name:find("Base") and v:FindFirstChild("HumanoidRootPart") then
            local TargetPart = v:FindFirstChild("HumanoidRootPart")
            if TargetPart then
                local ProximityPrompt = v.HumanoidRootPart:FindFirstChild("ProximityPrompt")
                if ProximityPrompt then
                HumanoidRootPart.CFrame = TargetPart.CFrame
                task.wait(.25)
                fireproximityprompt(ProximityPrompt)
                end
            end
        else
            HumanoidRootPart.CFrame = game:GetService("Workspace").Sells.World1.Ring.CFrame
            task.wait()
        end
    end
end