_G.sex = true; -- false = off, true = on

while _G.sex == true do
    game:GetService("ReplicatedStorage").ServerMsg.CatchFish:FireServer({[5001101] = 99e99})
    wait(0.1)
    local args = {
    [1] = 1
    }

    game:GetService("ReplicatedStorage").ServerMsg.Teleport:FireServer(unpack(args))
    wait(0.1)
    local args = {
    [1] = game:GetService("Players").LocalPlayer
    }

    game:GetService("ReplicatedStorage").ServerMsg.Reborn:InvokeServer(unpack(args))
end