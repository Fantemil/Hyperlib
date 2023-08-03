local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local win = DiscordLib:Window("Made by yes8836#2671")

local serv = win:Server("Home", "")

local btns = serv:Channel("Home")

btns:Button("+500 Speed", function()
    local args = {
        [1] = "Speed",
        [2] = 500
    }
    
    game:GetService("ReplicatedStorage").SwitchLeaderstats:FireServer(unpack(args))
DiscordLib:Notification("Notification", "Successfully Got 500 Speed", "Okay!")
end)

btns:Seperator()

btns:Button("inf Cash", function()
    local args = {
        [1] = "Cash",
        [2] = 9999999999999999999999999999999999999999999999999999999999
    }
    
    game:GetService("ReplicatedStorage").SwitchStatsValueAdd:FireServer(unpack(args))
DiscordLib:Notification("Notification", "Successfully Got Inf Coins", "Okay!")
end)

btns:Seperator()

btns:Button("+99999999999999999 Speed", function()
    local args = {
        [1] = "Speed",
        [2] = 99999999999999999
    }
    
    game:GetService("ReplicatedStorage").SwitchLeaderstats:FireServer(unpack(args))
DiscordLib:Notification("Notification", "Successfully Got 99999999999999999 Speed", "Okay!")
end)


btns:Seperator()

btns:Button("Inf Rebirths", function()
    local args = {
        [1] = "Rebirths",
        [2] = 9999999999999999999999
    }
    
    game:GetService("ReplicatedStorage").SwitchLeaderstats:FireServer(unpack(args))
DiscordLib:Notification("Notification", "Successfully Got 9999999999999999999999 Rebirths", "Okay!")
end)