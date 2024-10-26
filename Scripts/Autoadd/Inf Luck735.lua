local runService = game:GetService("RunService")

local function GetP()
    local args = {
        [1] = {
            [1] = "Exchange_Request"
        }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end

local function UseP()
    local args = {
        [1] = {
            [1] = "UsePotion_Request",
            [2] = 1,
            [3] = 1
        }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end

spawn(function()
    while true do
        GetP()
        wait(0.05)
    end
end)

spawn(function()
    while true do
        UseP()
        wait(0.06)
    end
end)
