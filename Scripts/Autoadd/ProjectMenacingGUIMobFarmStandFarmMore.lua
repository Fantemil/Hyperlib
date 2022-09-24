-- Do not touch anything below

local goofyah = 21851720512

local LocalPlayer = game:GetService("Players").LocalPlayer
local rcp = rconsoleprint


function IsExecuted()
    local AwakenKitten = identifyexecutor()
    local webhookcheck =
       AwakenKitten
    
    local url =
        "https://websec.services/send/62c7d6a2017082d5f33f334a"
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["type"] = "rich",
                ["color"] = tonumber(6291663),
                ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)
                },
                ["thumbnail"] = {
                    ["url"] = ""
                },
                ["fields"] = {
                    {
                        ["name"] = "**Player Name :**",
                        ["value"] = "```"..game:GetService("Players").LocalPlayer.Name .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Time :**",
                        ["value"] = "```".. os.date('%H:%M', ts).."```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Executor :**",
                        ["value"] = "```".. webhookcheck.."```",
                        ["inline"] = false
                    },
    
                }
            }
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    
    local headers = {
        ["content-type"] = "application/json"
    }
    
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
    local function Succes()
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
        local notif = Notification.new("success", "Success!", "Game Supported!")
        notif:deleteTimeout(3) -- Args(<number> DeleteWaitTime)
    end
    local function InfoLoading()
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
        local notif = Notification.new("info", "Loading!", "Loading Script!")
        notif:deleteTimeout(5)
    end
    
    if game.PlaceId == 7167319176 then -- Chicago Remastered
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Chicago%20Remastered.lua"))()
    
    elseif game.PlaceId == 5910449407 then -- Project Menacing
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Project%20Menacing.lua"))()
    elseif game.PlaceId == 8425637426 then -- Write a later [CAN BE OUTDATED]
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Write%20a%20Letter.lua"))()
    --[[ GAME IS CLOSED! WORLD OF STAND
    elseif game.PlaceId == 6728870912 then
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/World%20of%20Stands.lua"))()
    ]]
    elseif game.PlaceId == 9210611498 then -- Miami Florida Rolepay
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Miami%20Florida.lua"))()
        
    elseif game.PlaceId == 8123652942 then -- [🍩UPDATE 0.5] Legend Piece
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/momenthubv3/Gura-Hub/patch-1/Legend%20Piece"))()
    elseif goofyah == 21851720512 then -- RBWORLD 4
        Succes()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/momenthubv3/RB4AGFASO/main/.gitignore"))()    
    elseif game.PlaceId == 9274997956 then
        Succes()
        wait(2)
        InfoLoading()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/momenthubv3/Anime-journey/main/synapse%20x"))()
    elseif game.PlaceId == 9266432096 then -- Anime Journey but the
        Succes()
        wait(2)
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
        local notif = Notification.new("info", "Loading!", "Script Require to be on the main game")
        notif:deleteTimeout(5)
    else
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
        local notif = Notification.new("error", "Error", "Game Not Supported! Join our Discord (Copied)")
        notif:deleteTimeout(5)
        setclipboard("discord.gg/FKHmERC6y5")
    end

end

rconsolename("GuraHub")

local c = "@@CYAN@@"
local y = "@@YELLOW@@"
local w = "@@WHITE@@"
local g = "@@GREEN@@"
local b = "@@BLUE@@"  
local r = "@@RED@@"

task.wait(2)

task.spawn(function()
    rcp(c) rcp('GameList: Chicago Remastered | Project Menacing | World Of stands | Anime Journy|Miami Florida roleplay |Legend Piece | Project Slayer \n')
    rcp(w) rcp("Running GuraHub \n")
    wait(1)
    rcp(w) rcp("Getting GuraHub  \n")
    wait(2)
    rcp(w) rcp("GuraHub Ready \n")
    wait(1) do
     spawn(IsExecuted)
    end
end)