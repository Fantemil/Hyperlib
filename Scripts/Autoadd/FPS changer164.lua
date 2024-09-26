local remote = game:GetService("ReplicatedStorage").UpdateFPS
local function getRandomNumber()
    return math.random(4200, 4400)
end

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" and self == remote then
        local args = {...}
        args[1] = getRandomNumber()
        return oldNamecall(self, unpack(args))
    end
    return oldNamecall(self, ...)
end)