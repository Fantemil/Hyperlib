local args = {
    [1] = "skil_ting_asd",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = "ThunderClapAndFlash",
    [4] = 5
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
wait()
local args = {
    [1] = "Players.TokyoNayklix.PlayerScripts.Client_Modules.Main_Script",
    [2] = 11284.4759334,
    [3] = "ThunderNClapDeparture",
    [4] = CFrame.new(Vector3.new(2962.73193359375, 315.7588195800781, -3920.776123046875), Vector3.new(-0.6647751927375793, -0.016587525606155396, 0.7468592524528503))
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_C:FireServer(unpack(args))
wait()
local args = {
    [1] = "skil_ting_asd",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = "ThunderClapAndFlash",
    [4] = 2
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
wait()
local args = {
    [1] = "create",
    [2] = "BoolValue",
    [3] = game:GetService("ReplicatedStorage").PlayerValues.TokyoNayklix,
    [4] = {
        ["Name"] = "thunderclapandflash_clash"
    },
    [5] = 0.3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
wait()
local args = {
    [1] = "thunder_clap_and_flash_damage",
    [2] = game:GetService("Players").LocalPlayer.Character,
    [3] = CFrame.new(Vector3.new(2941.05810546875, 317.80743408203125, -3895.739013671875), Vector3.new(-0.15400224924087524, -0.6511252522468567, 0.7431818246841431)),
    [4] = CFrame.new(Vector3.new(2962.73193359375, 315.7588195800781, -3920.776123046875), Vector3.new(-0.6647751927375793, -0.016587525606155396, 0.7468592524528503))
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
wait()
local args = {
    [1] = "Players.TokyoNayklix.PlayerScripts.Client_Modules.Main_Script",
    [2] = 11284.7255144,
    [3] = "ThunderNClap",
    [4] = CFrame.new(Vector3.new(2941.05810546875, 317.80743408203125, -3895.739013671875), Vector3.new(-0.15400224924087524, -0.6511252522468567, 0.7431818246841431)),
    [5] = CFrame.new(Vector3.new(2962.73193359375, 315.7588195800781, -3920.776123046875), Vector3.new(-0.6647751927375793, -0.016587525606155396, 0.7468592524528503))
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_C:FireServer(unpack(args))
