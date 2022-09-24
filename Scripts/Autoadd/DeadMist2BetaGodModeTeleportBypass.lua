-- godmode
game:GetService("ReplicatedStorage").cldmg:FireServer(0/0)

-- equip any clothing
local old_namecall
old_namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if getnamecallmethod() == "FireServer" and tostring(self) == "WearItem" then
        if args[1] == nil then
            return task.wait(9e9)
        end
    end
    return old_namecall(self, ...)
end)

local item = "Fur hat"
local clothing_type = "Hat" -- Shirt, Pants, Mask
game.ReplicatedStorage.WearItem:FireServer(item, clothing_type)

-- make peoples guns fire
local localplayer = game:GetService("Players").LocalPlayer
local tool = any tool mainly use the one in their character or player backpack found under players
game:GetService("ReplicatedStorage").GunFire:FireServer(localplayer, tool)

-- clear appearance
game:GetService("ReplicatedStorage").Spawn:FireServer({})

-- give yourself any weapon
local weapon = "AK47"
game:GetService("ReplicatedStorage").Weapon:FireServer(weapon)

-- teleport bypass (put this in autoexec)
local old_namecall
old_namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if getnamecallmethod() == "FireServer" and tostring(self) == "tp" then
        game:GetService("Players").LocalPlayer.PlayerGui.Menu.Enabled = false
        return task.wait(9e9)
    end
    return old_namecall(self, ...)
end)

-- duplicate items
for i, v in next, getgc() do
    if type(v) == "function" and getinfo(v).name == "DropItem" then
        drop_item = v
    end
end

-- keep in mind u must have at least 1 of these items.
drop_item({
    "30Rnd Magazine", -- item
    100, -- quality
    "", --  u can add nother arg for ammo amount
})