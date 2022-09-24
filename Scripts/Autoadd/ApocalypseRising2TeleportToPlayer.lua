local function tp(anch)
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
        wait(0.2)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[anch].Character.HumanoidRootPart.CFrame * CFrame.new(10,5,10)
        wait(6)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end)
end

tp("Namehere")