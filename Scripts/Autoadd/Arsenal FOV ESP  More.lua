-- tysm sufi ly bbg
-- this script is 100% skidded anyways here
local old
old = hookfunction(game.HttpGet, function(datamodel, url)
    if string.find(url, 'Buyers') then print('got it') return string.format('return {["%s"] = true,}', game:GetService'Players'.LocalPlayer.Name) end
    return old(datamodel, url)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/cracked/main/arsenal"))()