local ModulesFolder = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Modules", 5)
local UtilitiesFolder = ModulesFolder:WaitForChild("Utilities", 5)
local MarionetteModule = require(UtilitiesFolder.MarionetteMask)

for i,v in pairs(MarionetteModule) do
    if type(v) == "function" then
        local old; old = hookfunction(v, function(...)
   v = warn("Blocked Marionette") wait(9e9)
            return old(...)
        end)
    end
end