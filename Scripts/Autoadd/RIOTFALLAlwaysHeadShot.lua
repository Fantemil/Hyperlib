local OldNameCall
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    Args={...}
    local Self = Args[1]
    if not checkcaller() and #Args>2 and typeof(Args[3])=="table" and getnamecallmethod()=="FireServer" and Args[3]["limbName"] then
        Args[3]["limbName"]="Head"
        return OldNameCall(unpack(Args))
    end
    return OldNameCall(...)
end)