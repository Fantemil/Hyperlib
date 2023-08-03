  _G.ratings = 1 -- Minimum rating
_G.customers = 3-- How many customers until server hop recommend 5 and below
spawn(function()
while wait() do
if _G.rating ~= _G.ratings then
_G.rating = _G.ratings
end
end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/taxi%20boss%20new%20autofarm", true))()