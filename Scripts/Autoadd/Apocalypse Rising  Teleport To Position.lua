local function tp(anch)
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
        wait(0.2)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(anch)
        wait(6)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end)
end

tp(Vector3.new("position here"))