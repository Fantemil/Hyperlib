local eventbypass

eventbypass = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if self.Name == "SendTradeRequest" or self.Name == "TradeAddItem" or self.Name == "ReadyTrade" or self.Name == "ConfirmTrade" and method == "FireServer" then
        return print("Trade Blocked")
    end

    return eventbypass(self, ...)
end)
