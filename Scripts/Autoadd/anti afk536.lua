local ohBoolean1 = false

game:GetService("ReplicatedStorage").AFKEvent:FireServer(ohBoolean1)

local Oldnamecall
Oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and self.Name == "AFKEvent" then

        args[1] = false
    end

    return Oldnamecall(self, unpack(args))
end)