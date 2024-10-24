local hf1
local Code = "1"
hf1 = hookfunction(hookfunction, newcclosure(function(old, new, AdminKey)
  if not AdminKey then
    print("Missing Admin Key, Preventing hookfunction to replace" .. debug.getinfo(old).name .. "with" .. debug.getinfo(new).name .. "!")
    return hf1(print, print)
  end
  if AdminKey == Code then
    return hf1(old, new)
  else
    print("Invalid Admin Key, Preventing hookfunction to replace" .. debug.getinfo(old).name .. "with" .. debug.getinfo(new).name .. "!")
  end
  return hf1(print, print)
end))

hookfunction(print, warn)
