-- please stop using this and just use the regular Arsenal file.

loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/Arsenal"))()

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local stop = Notification.new("info", "DexHub ☕", "This file will stop receiving updates soon!")
wait(0.5)
local stop2 = Notification.new("info", "DexHub ☕", "Please use the regular Arsenal file!")