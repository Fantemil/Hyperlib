local Func = game.Players.LocalPlayer.Character.RemoteFunction

getgenv().toggle = true

while getgenv().toggle do wait()
Func:InvokeServer("Poison", {
            Duration = 1,
            TotalDamage = -9999999
        });
end