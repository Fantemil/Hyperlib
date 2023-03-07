--    ______         _         _ _                                        _  _   _  _    ___ ______ ___  
--   |  ____|       | |       (_) |                                     _| || |_| || |  / _ \____  |__ \
--   | |__ ___  _ __| |_ _ __  _| |_ ___  __ _  __ _ _ __ ___   ___ _ _|_  __  _| || |_| | | |  / /   ) |
--   |  __/ _ \| '__| __| '_ \| | __/ _ \/ _` |/ _` | '_ ` _ \ / _ \ '__|| || |_|__   _| | | | / /   / /
--   | | | (_) | |  | |_| | | | | ||  __/ (_| | (_| | | | | | |  __/ | |_  __  _|  | | | |_| |/ /   / /_
--   |_|  \___/|_|   \__|_| |_|_|\__\___|\__, |\__,_|_| |_| |_|\___|_|   |_||_|    |_|  \___//_/   |____|
--                                        __/ |                                                          
--                                       |___/                                                          

local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()

-- Chests --
for i,v in pairs(game:GetDescendants()) do
   if string.match(v.Name, " Chest") and v:FindFirstChild("Base") then
       ESP:Add(v:FindFirstChild("Base"), {
       Name = v.Name,
       Color = Color3.fromRGB(255,0,0),
       IsEnabled = "Chests"
     })
    end
end

game.DescendantAdded:Connect(function(v)
   if string.match(v.Name, " Chest") and v:FindFirstChild("Base") then
       NotificationLibrary:SendNotification("Info", "Chest Added:"..v.Name, 3)
       ESP:Add(v:FindFirstChild("Base"), {
       Name = v.Name,
       Color = Color3.fromRGB(255,0,0),
       IsEnabled = "Chests"
     })
   end
end)

   ESP.Players = false
   ESP.Chests = true
   ESP:Toggle(true)