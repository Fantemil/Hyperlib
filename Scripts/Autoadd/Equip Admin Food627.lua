local args = {
    [1] = "Admin Food", -- Change this to something else if you dont wanna equip admin food even tho why whould you change it
    [2] = true
}

game:GetService("ReplicatedStorage").Events.Gameplay.EquipHotbar:FireServer(unpack(args))
