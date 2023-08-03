local settings = {repeatamount = 99, exceptions = {"SayMessageRequest"}} --make the number lower if game is bugging alot or make it higher if you want more money

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(uh, ...)
  local args = {...}
  local method = getnamecallmethod()
  for i,o in next, settings.exceptions do
      if uh.Name == o then
          return old(uh, ...)
      end
  end
  if method == "FireServer" or method == "InvokeServer" then
      for i = 1,settings.repeatamount do
          old(uh, ...)
      end
  end
  return old(uh, ...)
end

setreadonly(mt, true)