local old

old = hookmetamethod(game, '__namecall', function(self, ...)
    if self.Name == 'LootItem' and getnamecallmethod() == 'FireServer' then
        return
    end
    return old(self, ...)
end)