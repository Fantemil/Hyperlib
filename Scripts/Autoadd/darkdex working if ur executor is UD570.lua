local success, output = pcall(function()
    return game:HttpGet("https://api.swimhub.xyz/fallendex.lua")
end)
if success then loadstring(output)()("s.wm@discord / swimhub.xyz") end