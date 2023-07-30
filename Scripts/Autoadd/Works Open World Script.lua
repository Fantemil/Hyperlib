local IsDevelopmentBranch,NotificationTime = false,5
local Branch = IsDevelopmentBranch and "development" or "main"
local Source = "https://raw.githubusercontent.com/AlexR32/Parvus/" .. Branch .. "/"
loadstring(game:HttpGet(Source .. "Loader.lua"),"Loader")(Branch,NotificationTime)
