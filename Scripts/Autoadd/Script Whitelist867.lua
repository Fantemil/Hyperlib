-- <Local>
local httpService = game:GetService("HttpService")
local HwidGet = game:GetService("RbxAnalyticsService"):GetClientId()
local IPv4 = game:HttpGet("https://v4.ident.me/")
-- <Config>
local UseridWhitelist = false
local UserNameWhitelist = false -- VeryBad Whitelist.
local HwidWhitelist = false
local IPWhitelist = false
local ToolWhitelist = false -- VeryBad Whitelist.
-- <Whitelists>
local HwidWhitelists = {
	"",  -- Put the HwidID here
	"",
	"",
	"",
	"",
	"",
	"",
	"",
}

local IPWhitelists = {
	"",  -- Put the IP here
	"",
	"",
	"",
	"",
	"",
	"",
	"",
}

local UseridWhitelists = {
	4225820,  -- Put the Userid here
	1,
	1,
	1,
	1,
	1,
    1,
	1,
}

local UserNameWhitelists = {
	"Forbidenna",  -- Put the Username here
	"",
	"",
	"",
	"",
	"",
	"",
	"",
}

local ToolNameWhitelist = "Test" -- put whitelsit tool name
-- <Whitelist Script>
    if HwidWhitelist == true then
	for i,v in pairs(HwidWhitelists) do
		if v == HwidGet then
        print("Hwid Whitelisted!")
	end
	end
    end
    
    
    if IPWhitelist == true then
	for i,v in pairs(IPWhitelists) do
		if v == IPv4 then
        print("Whitelisted IP!")
	end
	end
    end

    if UseridWhitelist == true then
	for i,v in pairs(UseridWhitelists) do
		if v == game.Players.LocalPlayer.UserId then
        print("Whitelisted UserId!")
	end
	end
    end
    
        if ToolWhitelist == true then
		if game.Players.LocalPlayer.Backpack[ToolNameWhitelist] then
        print("Whitelisted Tool!")
	end
	end

		if UserNameWhitelist == true then
			for i,v in pairs(UserNameWhitelists) do
				if v == game:GetService("Players").LocalPlayer.Name then
				print("Username is Whitelisted!")
			end
			end
		end
-- <Credits> 
-- Created By The FBI