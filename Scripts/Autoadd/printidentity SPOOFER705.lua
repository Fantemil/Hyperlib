--[[
NOTE : This script is created by REN
]]
-- Generated using Ren's brainð¤¯
local function printidentitySPOOFER()
  local orgprintidentity = printidentity;
  local FakeLVL = "1"
  local FakeLVL = tostring(FakeLVL)
  local KryHOOK = hookfunction(orgprintidentity, function()
  print("Current identity is " .. FAKELVL)
  end)
end
-- // Intialize Printidentity SPOOFER
printidentitySPOOFER()

printidentity()
