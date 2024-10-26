if not game:IsLoaded() then
    game.Loaded:Wait()
end

local owner = 'andrewdarkyyofficial'
local branch = 'main'

loadstring(http.request({
    Url = string.format('https://raw.githubusercontent.com/%s/thunderclient/%s/main.lua', owner, branch),
    Method = 'GET'
}).Body)()