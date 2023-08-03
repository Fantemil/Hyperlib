--[[]
Execute the script below, allocate all your points, then when it hits 0, press reset stats, and then execute again. Max level is 1000. You can do the same with Beli and Gem, and you can even do it for Bounty too. (Two forms of currency for this game)
--]]

local args = {
    [1] = game:GetService("Players").LocalPlayer.Data.Level,
    [2] = 1, --Change number to amount of points you have
    [4] = "ouifdhasdfnJNASDIFN_AIDFNnijsdifnNIFASND_FAIAasjddsfDJFSDN!)@NASD@nasdj!@*$#(jfd"
}

game:GetService("ReplicatedStorage").Remotes.Stats:FireServer(unpack(args))


--Kill Players
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if not(v.Name == game.Players.LocalPlayer.Name) then
    local args = {
        [1] = "TakeDamage",
        [2] = {
            ["target"] = v,
            ["damage"] = 9e+99
        },
        [3] = "QWEFN@R}ASDF!@}R|DSFMQ@FASF:LWQE"
    }
    
    game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))
end
end


--Kill Mobs
for i,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
    local args = {
        [1] = "TakeDamage",
        [2] = {
            ["target"] = v,
            ["damage"] = 9e+99
        },
        [3] = "QWEFN@R}ASDF!@}R|DSFMQ@FASF:LWQE"
    }
    
    game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))
end