            for _, conn in ipairs(touchInterestConnections) do
                conn:Disconnect()
            end
            touchInterestConnections = {}