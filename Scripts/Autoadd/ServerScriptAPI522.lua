local args = {
	["Arsenal"] = 286090429,
	["BreakInStory"] = 3851622790,
	["BreakInStoryGame"] = 4620170611,
	["BedwarsLobby"] = 6872265039,
	["BedwarsInGameCustom"] = 8444591321,
	["BedwarsInGame"] = 6872274481,
	[1] = 4623386862,
	[2] = 5661005779,
	[3] = 6516141723,
	[4] = 6839171747
}

if game.PlaceId == args[3] or game.PlaceId == args[4] then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Doors game has Loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Doors hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == args.BreakInStory or game.PlaceId == args.BreakInStoryGame then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Break in (Story) game has Loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Break in (Story) hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == args.BedwarsLobby or game.PlaceId == args.BedwarsInGame then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Bedwars game has Loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Bedwars hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == args[1] or game.PlaceId == args[2] then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Piggy game has Loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Piggy hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == args.Arsenal then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Arsenal has Loaded!")	
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Arsenal hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == args.Arsenal then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/286090429.lua", true))()
	end
end

if game.PlaceId == args.BreakInStory or game.PlaceId == args.BreakInStoryGame then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/Break%20in%20Story%20Script.lua", true))()
	end
end

if game.PlaceId == args.BedwarsLobby or game.PlaceId == args.BedwarsInGame then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/6872265039and8444591321.lua", true))()
	end
end

if game.PlaceId == args[1] or game.PlaceId == args[2] then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/4623386862%20or%205661005779.lua", true))()
	end	
end

if game.PlaceId == args[3] or game.PlaceId == args[4] then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/6839171747.lua", true))()
	end
end