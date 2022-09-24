getgenv().AutoTap = true
getgenv().AutoRebirth1 = true

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AutoRebirth = {[1] = 1} -- you can change the value.

spawn(function()
    while AutoTap do
        wait(0.01)
        ReplicatedStorage.Events.Click3:FireServer()
    end
end)

spawn(function()
    while AutoRebirth1 do
        wait(0.1)
        ReplicatedStorage.Events.Rebirth:FireServer(unpack(AutoRebirth))
    end
end)