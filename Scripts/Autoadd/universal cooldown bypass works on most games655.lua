if hookfunction then 
    g = hookfunction(wait, function(seconds) return g(0) end)
    else
        game.Players.LocalPlayer:Kick("Your exploit does not support this script please try using a better exploit other than "..identifyexecutor())
    end