local old; old = hookmetamethod(game, '__namecall', function(self,...)
    local method = getnamecallmethod();
    local args = {...};
    if (tostring(self) == 'SurfaceCompleted' and method == 'FireServer' and args[2] and not checkcaller()) then
        args[2] = math.huge
        return old(self, unpack(args))
    end;
    return old(self,...)
end);