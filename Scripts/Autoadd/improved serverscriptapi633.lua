local args = {
	["Arsenal"] = 286090429,
	--["BreakInStory"] = 3851622790,
	["BreakInStoryGame"] = 4620170611,
	["BedwarsLobby"] = 6872265039,
	["BedwarsInGameCustom"] = 8444591321,
	["BedwarsInGame"] = 6872274481
}

if game.PlaceId == args.BreakInStory or game.PlaceId == args.BreakInStoryGame then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Break in (Story) game has loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Break in (Story) hasn't loaded. Please wait until its loaded.")
	end
end

if game.PlaceId == args.BedwarsLobby or game.PlaceId == args.BedwarsInGame then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Bedwars game has loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Bedwars hasn't loaded. Please wait until its loaded.")
	end
end

if game.PlaceId == args.Arsenal then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Arsenal has Loaded!")	
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Arsenal hasn't loaded. Please wait until its loaded.")
	end
end

if game.PlaceId == args.Arsenal then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Main", true))()
	end
end

if game.PlaceId == args.BreakInStory or args.BreakInStoryGame then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/Break%20in%20Story%20Script.lua", true))()
	end 
 end

if game.PlaceId == args.BedwarsLobby or game.PlaceId == args.BedwarsInGame then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/6872265039and8444591321.lua", true))()
	end
end