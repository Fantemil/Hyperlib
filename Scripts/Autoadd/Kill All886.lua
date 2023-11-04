while wait(3) do
    for i,v in pairs(game:GetService("Workspace").NPCFolders.EnemyFolder:GetChildren()) do
    if v.Name == "Bomb Battler" or v.Name == "Trowel Battler" then
local args = {
    [1] = false,
    [2] = Vector3.new(-2.2113428115844727, -49.91499328613281, 136.3750762939453),
    [3] = Vector3.new(-37.55739212036133, -49.439735412597656, 63.64154052734375),
    [4] = v:WaitForChild("HumanoidRootPart"),
    [5] = 0,
    [6] = Vector3.new(0, 0, -1),
    [7] = 1,
    [8] = {
        [1] = v
    }
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Assault Rifle").FireRemote:FireServer(unpack(args))
end
end
end