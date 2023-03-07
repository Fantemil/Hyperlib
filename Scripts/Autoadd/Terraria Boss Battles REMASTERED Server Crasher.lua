local settings = {repeatamount = 125, exceptions = {"SayMessageRequest"}}

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