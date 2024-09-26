local args = {
    [1] = {
        ["AuraGivingToPlayer"] = "Name",
        ["Player"] = game:GetService("Players").LocalPlayer
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveAura"):FireServer(unpack(args))