while true do
local args = {
    [1] = "GoldHammer"
}

game:GetService("ReplicatedStorage").Remotes.EquipSkin:FireServer(unpack(args))
wait() 
end
