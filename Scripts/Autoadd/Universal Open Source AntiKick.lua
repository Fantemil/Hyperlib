kickHook = nil;
kickHook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
  if tostring(getnamecallmethod()) == "Kick" then return wait(9e9) end
  return kickHook(self,...)
end))