repeat
    task.wait()
until 
    game:IsLoaded()

-- if writefile then
--     writefile("EzScripts.win-key", "")
-- end

local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/TurfuFrogy/EzScripts/main/ui.lua")))()

library:MakeNotification({
    Name = "EzScripts.win",
    Content = "Thanks for using our script!",
    Image = "rbxassetid://10715004387",
    Time = 5
})

local window = library:MakeWindow({
    Name = "EzScripts.win - Loader",
    HidePremium = true, 
    SaveConfig = false, 
    ConfigFolder = "EzScripts/",
    IntroEnabled = true,
    IntroText = "EzScripts.win",
    IntroIcon = "rbxassetid://10715004387",
    Icon = "rbxassetid://10715004387",
})

local homeTab = window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://10715004387",
    PremiumOnly = false
})

homeTab:AddParagraph("Important", "Before clicking on the button below to load EzScripts, please check that your machine clock is synchronized. Here is a tutorial to do so: https://bit.ly/sync-clock")
homeTab:AddParagraph("Recommended Executors", "Synapse X, Script-Ware, KRNL, Fluxus, Oxygen U. We cannot guarantee partial/full compatibility of EzScripts if you use another executor.")

local alreadyExecuted = false
homeTab:AddButton({
    Name = "Load EzScripts.win!",
    Callback = function()
        if table.find({142823291, 8737602449, 8540346411, 8750997647, 537413528}, game.PlaceId) then
            if not alreadyExecuted then
                library:MakeNotification({
                    Name = "EzScripts.win",
                    Content = "Loading. This can take some times.",
                    Image = "rbxassetid://10715004387",
                    Time = 5
                })

                alreadyExecuted = true
        
                -- if readfile then
                --     getgenv().Key = readfile("EzScripts.win-key")
                -- else
                getgenv().Key = ""
                -- end
        
                loadstring(game:HttpGet("https://scripts.luawl.com/12261/EzScripts.lua"))()
            else
                library:MakeNotification({
                    Name = "EzScripts.win",
                    Content = "You can only execute EzScripts.win one time.",
                    Image = "rbxassetid://10715004387",
                    Time = 5
                })
            end
        else
            library:MakeNotification({
                Name = "Unsupported Game",
                Content = "The game you tried to use EzScripts on is not supported.",
                Image = "rbxassetid://10715004387",
                Time = 15
            })
        end
    end
})

homeTab:AddButton({
    Name = "Join Our Discord Server",
    Callback = function()
        if httpRequest then
            library:MakeNotification({
                Name = "Discord Server",
                Content = "An attempt to have you automatically join our Discord server has been made. Check your Discord Desktop.",
                Image = "rbxassetid://10715004387",
                Time = 5
            })

            httpRequest({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = "INVITE_BROWSER",
                    args = {
                        code = "mmK5b6uPcy"
                    },
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                })
            })
        end

        if setclipboard then
            setclipboard("https://discord.gg/mmK5b6uPcy")

            library:MakeNotification({
                Name = "Discord Server",
                Content = "The invitation to join our Discord server has been copied to your clipboard.",
                Image = "rbxassetid://10715004387",
                Time = 5
            })
        else
            print("https://discord.gg/mmK5b6uPcy")

            library:MakeNotification({
                Name = "Discord Server",
                Content = "The invitation to join our Discord server has been sent in your console (F9).",
                Image = "rbxassetid://10715004387",
                Time = 5
            })
        end
    end
})

library:Init()