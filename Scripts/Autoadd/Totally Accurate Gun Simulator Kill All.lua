local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gun


function gunCheck(tool)
    if tool:FindFirstChild("GunScript_Local") then
        gun = tool
    end
end


for _,v in pairs(player.Backpack:GetChildren()) do
    gunCheck(v)
end


if player.Character then
    for _,v in pairs(player.Character:GetChildren()) do
        if v:IsA("Tool") then
            gunCheck(v)
        end
    end
end



function inflict(player)

    if not player or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") or not player.Character:FindFirstChild("Head") then
        return
    end


    local ohTable6 = {
        [1] = 0,
        [2] = 0,
        [3] = false,
        [4] = false,
        [5] = gun.GunScript_Server.IgniteScript,
        [6] = gun.GunScript_Server.IcifyScript,
        [7] = 100,
        [8] = 100
    }
    local ohTable7 = {
        [1] = false,
        [2] = 5,
        [3] = 3
    }
    local ohTable9 = {
        [1] = false,
        [2] = {
            [1] = 1930359546
        },
        [3] = 1,
        [4] = 1.5,
        [5] = 1
    }

    game:GetService("ReplicatedStorage").Remotes.InflictTarget:InvokeServer(gun, game:GetService("Players").LocalPlayer, player.Character.Humanoid, player.Character.HumanoidRootPart, 300, ohTable6, ohTable7, player.Character.Head, ohTable9)
end

while wait(1) do
    for _,v in pairs(Players:GetPlayers()) do
        inflict(v)
    end
end