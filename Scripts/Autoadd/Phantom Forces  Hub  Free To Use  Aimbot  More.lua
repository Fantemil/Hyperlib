local windows = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Synapse-Library-OBFUSCATED-/main/Source.lua"))()
local win = windows:Create({
    Title = "22 hub ",
    Game = "Phantom Forces!"
})

local tab = win:NewTab({
    Title = "Main"
})

tab:Label({
    Title = "Welcome!"
})

getgenv().aimbot_loaded = false
tab:Button({
    Title = "Load Aimbot",
    Callback = function()
        if not getgenv().aimbot_loaded then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/PH_AIMBOT.lua", true))()
            getgenv().aimbot_loaded = true
        end

    end
})

getgenv().esp_loaded = false
tab:Button({
    Title = "Load ESP",
    Callback = function()
        if not getgenv().esp_loaded then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/Phantom_%20Forces_ESP.lua", true))()
            getgenv().esp_loaded = true
        end
    end
})

tab:TextBox({
    Title = "ESP Info",
    PlaceHolder = "5 to enable/disable ESP,4 to change text size",

    Callback = function(args)
        print(args)
    end
})

tab:DropDown({
    Text = "Aimlock Method",
    PlaceHolder = 'Choose An Aim Method...',
    Options = {'head', "torso","random"},
    Callback = function(args)
        if args == "random" then
            getgenv().random_aim = true
        else
            getgenv().random_aim = false
            getgenv().aim_at = args
        end
    end
})


tab:Slider({
    Title = "Smoothing",
    MinValue = 1,
    Def = 2,
    MaxValue = 25,
    callback = function(args)
        getgenv().aim_smooth = args
    end
})
local tab = win:NewTab({
    Title = "TriggerBot"
})

getgenv().TriggerBot_loaded = false
tab:Toggle({
    Title = "Enable TriggerBot",
    Description = "Automatically shoots when cursor is placed over an enemy.",
    Callback = function(args)
        if not getgenv().TriggerBot_loaded then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/Phantom_%20Forces_TRIGGERBOT.lua", true))()
        end
        getgenv().triggerBot = args
    end
})

tab:Toggle({
    Title = "Head only",
    Description = "Shoot only if you aim at the head.",
    Callback = function(args)
        getgenv().head_check = args
    end
})

tab:Slider({
    Title = "releasetime",
    MinValue = 0,
    Def = 0,
    MaxValue = 6,
    callback = function(args)
        getgenv().releasetime = args
    end
})

tab:Slider({
    Title = "Reaction time",
    MinValue = 0,
    Def = 0,
    MaxValue = 4,
    callback = function(args)
        getgenv().reaction_time = args
    end
})