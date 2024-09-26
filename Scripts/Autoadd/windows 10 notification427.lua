

local mewing10 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Breadido/Mewing10/main/mewing10_source.lua'))()

mewing10.NormalNotification({
	Title = "Mom",
	Description = "why are you so ugly?",
	ImagesID = "http://www.roblox.com/asset/?id=7733964719", 
	SoundID = "", -- make sure the sound id is authorized by roblox
	Duration = 180
})
mewing10.ReplyNofitication({
	Title = "Mom",
	Description = "i love you son now give me 10 dollar",
	ImagesID = "http://www.roblox.com/asset/?id=7733964719",
	SoundID = "", -- make sure the sound id is authorized by roblox
	PlaceholderText = "Type a reply",
	SendCallback = function(a)
		print(a)
	end,
})