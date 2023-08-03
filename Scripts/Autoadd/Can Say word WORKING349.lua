local oldnc;oldnc = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod():lower()
    if method == "fire" and self.Name == "Event" then
        self:Destroy()
    end
    return oldnc(self, ...)
end)