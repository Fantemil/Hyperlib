local a;
local b;
local FakeLVL = 69
if _G.DisableCIPlus == false or not _G.DisableCIPlus then
  local a = hookfunction(printidentity, function()
    print("Current identity is " .. tostring(FakeLVL))
  end)
  else
    print("CustomIdentityPlus, is disabled rejoin or set _G.DisanleCIPlus to true!")
end
local b = hookfunction(getthreadidentity, function()
  return FakeLVL
end)

printidentity()
print(getthreadidentity())