local plr = game.Players.LocalPlayer
local remote = workspace.__THINGS.__REMOTES.rebirth

while task.wait(2.5) do --  high delay to prevent any possible lag from script
   remote:InvokeServer(plr)
end