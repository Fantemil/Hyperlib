local hf1, hf2
local hookfunc = clonefunction(hookfunction)
local Code = "1"
hf1 = hookfunc(hookfunction, newcclosure(function(old, new, AdminKey)
  if not AdminKey then
    print("Missing Admin Key, Preventing hookfunction to replace" .. debug.getinfo(old).name .. "with" .. debug.getinfo(new).name .. "!")
    return hf1(print, print)
  end
  if AdminKey == Code then
    return hf1(old, new)
  else
    print("Incorrect Admin Key, Preventing hookfunction to replace" .. debug.getinfo(old).name .. "with" .. debug.getinfo(new).name .. "!")
  end
  return hf1(print, print)
end))

hf2 = hookfunc(clonefunction, newcclosure(function(func)
  if debug.getinfo(func).name == "hookfunction" then
    print("DENIED, Attempt to bypass restrictions on hookfunction by using clonefunction!")
    return hf2(print)
  end
  return hf2(func)
end), "1")

hookfunction(print, warn)
