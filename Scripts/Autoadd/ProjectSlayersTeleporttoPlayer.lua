local function tp(anch)
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
        wait(0.2)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[anch].Character.HumanoidRootPart.CFrame
        wait(2)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end)
end

tp("Namehere")