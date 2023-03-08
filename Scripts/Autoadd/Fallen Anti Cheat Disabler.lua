game.Players.LocalPlayer.UserId = 47983795

wait()

local namecall; namecall = hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if method == "FireServer" and self.Name == "BanExploiter" then
        return
    elseif method == "GetChildren" and self.Name == "Remotes" then
        return {}
    end
    
    return namecall(self,unpack(args))
    end)