local old; old = hookmetamethod(game, '__namecall', function(self, ...)
  local args = {...}
  local method = getnamecallmethod()

  if not checkcaller() and method == 'InvokeServer' and self.Name == "Finish" then
           args[2]["rewardMul"] = math.huge
   end

  return old(self, unpack(args))
end)