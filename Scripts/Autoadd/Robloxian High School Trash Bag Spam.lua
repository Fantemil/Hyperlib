 while true do wait()
local args = {
    [1] = 21, --the size
    [2] = 1 --setting this number to 0 causes alot of "stink smoke" for some reason
}

game:GetService("ReplicatedStorage").Systems.CookingFurniture.GetTrashBag:InvokeServer(unpack(args))




local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.TrashBag,
    [2] = Vector3.new(0.53245609998703, -0.34533005952835083, -0.7728114724159241)
}

game:GetService("ReplicatedStorage").Modules.ObjectCode.FoodTools.TrashBag.ReplicateThrow:FireServer(unpack(args))
end