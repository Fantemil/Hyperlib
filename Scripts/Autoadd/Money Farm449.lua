getgenv().farm = not getgenv().farm -- Run the script again to disable autofarm
local collect = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RockCollect")
local arg1
local arg2

local namecall
namecall = hookmetamethod(game, "__namecall", function (self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if self == collect and method == "FireServer" then
        arg1 = args[1]
        arg2 = args[2]
    end

    return namecall(self, ...)
end)

while getgenv().farm do
    if arg1 and arg2 then
        collect:FireServer(arg1, arg2)
    end
    wait(0.1)
end