local namecall;namecall = hookmetamethod(game, '__namecall', function(self, ...)
    local method = getnamecallmethod()
    if not pizzaremote and method == "FireServer" and self.Name == "" then
        print('Grabbed Remote')
        getgenv().pizzaremote = self
    end
    return namecall(self, ...)
end)

repeat wait() until pizzaremote
while wait() do
    pizzaremote:FireServer()
end