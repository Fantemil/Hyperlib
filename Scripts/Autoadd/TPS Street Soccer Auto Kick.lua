 while wait(0.3) do
    local args = {
    [1] = workspace.TPSSystem.TPS,
    [2] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
    [3] = 30,
    [4] = Vector3.new(4000000, 300, 4000000)
}

workspace.FE.Actions.KickG1:FireServer(unpack(args))
end