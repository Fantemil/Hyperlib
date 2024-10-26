local function SpawnIronGolem()
    local golemAmount = 30  --amount
    for i = 1, golemAmount do
        local args = {
            [1] = "Iron golem",
            [2] = 1,  -- Amount per request
            [3] = "tools",
            [4] = "Toolstats",
            [5] = "Iron golem"
        }

        workspace.wb:FireServer(unpack(args))
        wait(0.5) -- delay so roblox wont crash
    end
end

SpawnIronGolem()
