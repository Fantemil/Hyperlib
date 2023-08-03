-- INF LIFE SCRIPT --
local args = {
    [1] = 222222222222222222222222222222222222222222222222222222222222,
    [2] = 222222222222222222222222222222222222222222222222222222222222,
    [3] = "Load"
}

game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame1.PVP.HP:FireServer(unpack(args))

-- INF ITEMS SCRIPT --

local args = {
    [1] = "1001", -- ID HERE --
    [2] = "-1000000000000000000" -- HERE AMMOUNT --
}

game:GetService("Players").LocalPlayer.PlayerGui.Crafting.Inventory.Salvage.BagCreate.Create.BeginCheck:FireServer(unpack(args))

 


-- YOU CAN ALSO GIVE THE NEGATIVE BAGS TO NOOBS SO THEY GET MINUS STUFF --


