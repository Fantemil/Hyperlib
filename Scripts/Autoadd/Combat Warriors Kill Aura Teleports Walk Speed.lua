for i,v in pairs(getgc(true)) do
    if typeof(v) == 'table' and rawget(v, 'getIsBodyMoverCreatedByGame') then
         v.getIsBodyMoverCreatedByGame = function(gg)
             return true
         end
        table.clear(v)
    end
    if typeof(v) == 'table' and rawget(v, 'randomDelayKick') then
         v.randomDelayKick = function() return wait(9e9) end
          v.kick = function() return wait(9e9) end
          v.logKick = function() return wait(9e9) end
         v.rectified = function() return wait(9e9) end
    end
    if typeof(v) == 'table' and rawget(v, 'connectCharacter') then
         v.connectCharacter = function(gg) return wait(9e9) end
    end
    if typeof(v) == "table" and rawget(v,"Remote") then
        v.Remote.Name = v.Name
    end
 end
 local oldnamecall; oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
   local args = {...}
   local method = getnamecallmethod();
  
   if ((method == "Kick" or method == "kick") and self == game.Players.LocalPlayer) or self.Name == 'BAC' then
       return;
   end
  
   return oldnamecall(self, unpack(args))
 end)
 wait(2)

loadstring(game:HttpGet'https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NEW_NOVA')()