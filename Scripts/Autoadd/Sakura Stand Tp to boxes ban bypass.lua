local OldNameCall;
OldNameCall = hookmetamethod(game,"__namecall",newcclosure(function(Self,...)
    if Self.Name == "BanRemote" and getnamecallmethod() == "FireServer" then
        return
    end
    return OldNameCall(Self,...)
end))