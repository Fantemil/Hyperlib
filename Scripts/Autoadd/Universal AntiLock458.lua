 -- // Keybind B to toggle \\--
--// JOIN: https://discord.gg/4w62Jnxn45 \\--
local xIIlIIlIx = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local lIIlIIlII = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
getgenv().Anti = {
    Antilock = 1, --// 1 = Underground, 2 = Sky, 3 = Prediction Breaker \\--
    Notifications = true, --// Sends Notifications When The Anti-Lock Is Executed \\-- (DOESNT WORK FOR CELERY)
    Celery = true, --// If True Script Optimised To Work For Shit Executors \\--
    Solara = false, --// Same As Celery But Better idrk
}
local IliilI = getgenv().Anti.Antilock
local notify = getgenv().Anti.Notifications
local celery = getgenv().Anti.Celery
local Solara = getgenv().Anti.Solara
if celery or Solara then
    notify = false
end

if IliilI == 1 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GOOSEBUMPPS/anti/main/underground", true))()
    if notify then
        Notification:Notify(
            {Title = "Voidx", Description = "Script Loaded!"},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
    end
elseif IliilI == 2 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GOOSEBUMPPS/anti/main/sky", true))()
    if notify then
        Notification:Notify(
            {Title = "Voidx", Description = "Script Loaded!"},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
    end
elseif IliilI == 3 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GOOSEBUMPPS/anti/main/prediction", true))()
    if notify then
        Notification:Notify(
            {Title = "Voidx", Description = "Script Loaded!"},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
    end
end