getgenv().Settings = {
    ['Godmode'] = true
}

local oldNamecall 
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}

    if Settings.Godmode and getnamecallmethod() == "FireServer" and args[4] == "monster" then 
        return
    end

    return oldNamecall(self, ...)
end)