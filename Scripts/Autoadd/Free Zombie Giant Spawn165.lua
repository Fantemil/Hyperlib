local args = {
    [1] = "ZombieGiant",
    [2] = 0
}

game:GetService("ReplicatedStorage").Knit.Services.RaidService.RF.SpawnMob:InvokeServer(unpack(args))
--[[

If you want to spam this, replace the code with whats below this comment.
while wait() do
local args = {
    [1] = "ZombieGiant",
    [2] = 0
}

game:GetService("ReplicatedStorage").Knit.Services.RaidService.RF.SpawnMob:InvokeServer(unpack(args))
end

]]