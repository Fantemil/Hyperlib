spawn(function()
   local Players = game:GetService("Players")
   local Player = Players.LocalPlayer
   
   local OldNameCall
   OldNameCall = hookmetamethod(game, "__namecall", function(...)
       local Self, Args = (...), ({select(2, ...)})
   
       if getnamecallmethod() == "Kick" and Self == Player then
           return
       end
   
       return OldNameCall(...)
   end)
end)
wait(1)

while true do
   wait(1)
   pcall(function()
       local plr = game.Players.LocalPlayer
       local charc = game.Workspace[plr.Name]
       if charc:FindFirstChild("anticheat") then
           local r = charc.anticheat.delsanitychecks:Clone()
           charc.anticheat.delsanitychecks:Destroy()
           r:Destroy()
           charc.anticheat.sanitychecks:Destroy()
           charc.anticheat:Destroy()
       end
   end)
end