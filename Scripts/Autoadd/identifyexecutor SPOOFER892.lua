--[[
NOTE : This script is created by REN
]]
-- Generated using Ren's brainð¤¯
local function identifyexecutorSPOOFER()
  local orgidentifyexecutor = identifyexecutor;
  local FakeEXECUTOR = "Solara"
  local FakeEXECUTOR = tostring(FakeEXECUTOR)
  local KryHOOK = hookfunction(orgidentifyexecutor, function()
    print(FakeEXECUTOR)
  end)
end
-- // Intialize Printidentity SPOOFER
identifyexecutorSPOOFER()

identifyexecutor()
