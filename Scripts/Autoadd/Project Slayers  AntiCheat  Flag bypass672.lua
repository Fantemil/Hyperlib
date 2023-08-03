local hook
hook = hookmetamethod(game, "__namecall", function(self, ...)
    args = {...}

    if getnamecallmethod() == "FireServer" and #args == 2 and type(args[1]) == "boolean" then
        return task.wait(9e9)
    end

    return hook(self, ...)
end)