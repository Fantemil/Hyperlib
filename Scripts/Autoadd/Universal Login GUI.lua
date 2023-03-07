local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"))()
local win = DiscordLib:Window("ROBLOX")
NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()

local serv = win:Server("Login", "")
local attempts = 0
local textbs = serv:Channel("Script")

textbs:Textbox("Log-In", "Type here!", true, function(t)
    if t:match("^%w+$") then
        if t == "123" then
            print("Correct password")
            NotificationLibrary:SendNotification("Success", "Correct Password", 1)
            wait(1)
            game.CoreGui.Discord:Destroy()
            NotificationLibrary:SendNotification("Info", "Loading Script.", 2)
            wait(1)
            --------------------PUT YOUR SCRIPT HERE LOADSTRING HERE
        else
            attempts = attempts + 1
            print("Incorrect password")
            NotificationLibrary:SendNotification("Error", "Incorrect password. You have " .. (5 - attempts) .. " attempts left.", 2) -- increase the attemps here by changing the 5 to whatever number
            if attempts >= 5 then -- and changing the number here too
                game.CoreGui.Discord:Destroy()
                print("You have exceeded the maximum number of attempts. The program will now close.")
            end
        end
    else
        NotificationLibrary:SendNotification("Info", "The password can only contain letters and numbers.", 3)
    end
end)

textbs:Label("Login to access the script. the password is 123")