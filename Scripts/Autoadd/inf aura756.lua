while wait() do
local args = {
    [1] = game:GetService("Players").LocalPlayer.PlayerGui.MobileControls.Attack.Attack
}

game:GetService("ReplicatedStorage").GuardUp:FireServer(unpack(args))
end