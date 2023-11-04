-- this script is not looped since my old one made people games crash so I removed (btw this wont kill the localplayer)
local p = game:GetService("Players")
for i,KILL_ALL in ipairs(p:GetPlayers()) do    
    local args = {
    [1] = "Knife",
    [2] = KILL_ALL.Name,
    [3] = {
        [1] = "Hell",
        [2] = "Torso",
        [3] = Vector3.new(0.10178784281015396, -0.027272216975688934, 0.22670568525791168),
        [4] = "Default"
    }
}

workspace:WaitForChild("GameMain"):WaitForChild("Triggers"):WaitForChild("ServerRequest"):WaitForChild("Damage"):FireServer(unpack(args))
end