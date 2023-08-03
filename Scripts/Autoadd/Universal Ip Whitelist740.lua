local currentip = game:HttpGet("api.ipify.org")
local whitelisted = { -- add this to ur website/github and do loadstring to whitelisted
	"ip1",
	"ip2",
	"ip3",
	"ip4",
}

if currentip == unpack(whitelisted) then
	print"script load"
else
	game.Players.LocalPlayer:Kick("non whitelist")
end