local HWIDTable = -- loadstring
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDTable) do
    if v == HWID then
        print("Yo ".. v.. "Hehe")
        else
        print("Not Found")
    end
end
