getgenv().autoclick = false;
getgenv().autorebirth = false;
getgenv().autohatch = false;
getgenv().autoupgrade = false;


spawn(function()
    while autoclick == true do
        game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        wait(0.0001)
    end
end)


spawn(function()
    while autorebirth == true do
            local args = {
            [1] = 10
        }
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait()
    end
end)

spawn(function()
    while autohatch == true do
        local args = {
            [1] = "Beach",
            [2] = "Triple"
        }

        game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
    end
end)


spawn(function()
    while autoupgrade == true do
            local args = {
            [1] = "CraftAll",
            [2] = {}
        }
        game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(unpack(args))
    end
end)