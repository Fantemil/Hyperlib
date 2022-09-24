getgenv().Enabled = true

local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
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