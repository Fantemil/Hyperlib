local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(w, ...)
  local args = {...}
  local method = getnamecallmethod()
  if method == "InvokeServer" and tonumber(args[3]) then
      for i = 1,10 do
          old(w, ...)
      end
  end
  return old(w, ...)
end