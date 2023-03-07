_G.Farm = true -- Change "true" to "false" for stop farm
local args = {
    [1] = workspace:WaitForChild("Buildings"):WaitForChild("Gym"):WaitForChild("Functional"):WaitForChild("Equipment"):WaitForChild("IT_Squat Rack"):WaitForChild("Squat"),
    [2] = "UseEquipment"
}
local args2 = {
    [1] = "Barbell Squat"
}
while _G.Farm == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Relays"):WaitForChild("Interaction"):WaitForChild("InteractObject"):InvokeServer(unpack(args))
    wait(20)
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Characters"):WaitForChild("Emotes"):WaitForChild("Relays"):WaitForChild("StopEmote"):InvokeServer(unpack(args2))
end
-- By Makoto_Nikki :3