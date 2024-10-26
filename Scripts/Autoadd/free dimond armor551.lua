local function GiveDiamondArmor()
    local args = {
        [1] = "diamond armor",
        [2] = 1,  
        [3] = "armor",
        [4] = "armorstats",
        [5] = "diamond armor"
    }

    workspace.wb:FireServer(unpack(args))
end

GiveDiamondArmor()
