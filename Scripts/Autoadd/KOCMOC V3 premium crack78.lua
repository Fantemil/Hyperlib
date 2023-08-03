old = hookmetamethod(game,"__namecall",function(...)
    local args = {...}
    if getnamecallmethod() == 'GetClientId' then
          return '64F44D98-3208-43C2-BAFB-C465761995FC'
    elseif getnamecallmethod() == "GetCountryRegionForPlayerAsync" then
         return "RU"
    end
    return old(...)
end)

x = hookmetamethod(game,'__index',function(self,key)
    if key == "GetCountryRegionForPlayerAsync" or key == "CountryRegionCodeReplicate" then
     return 'RU'
end
    return x(self,key)
end)

game.Players.LocalPlayer.Name = "AkrienSide"
game.Players.LocalPlayer.Character.Name = "AkrienSide"
game.Players.LocalPlayer.CharacterAppearanceId = 322205040
game.Players.LocalPlayer.UserId = 322205040
task.wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/kocmoc/main/kocmoc-remastered.lua", true))()