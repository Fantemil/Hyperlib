local windows = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Synapse-Library-OBFUSCATED-/main/Source.lua"))()
local win = windows:Create({
    Title = "Title",
    Game = "Game"
})

local tab = win:NewTab({
    Title = "Tab Name"
})

tab:Button({
    Title = "Script Name",
    Callback = function()
        scripthere
    end
})



-- Other options Just change the names if u dont want it do be that/fps game

tab:Label({
    Title = "Aimbot"
})

tab:Toggle({
    Title = "Enable Aimlock",
    Description = "Locks On To The Nearest Player To Your Camera.",
    Callback = function(args)
        print(args)
    end
})

tab:Toggle({
    Title = "Kill All",
    Description = "Teleports To Other Players and Kills Them.",
    Callback = function(args)
        print(args)
    end
})

tab:TextBox({
    Title = "TextBox Info",
    PlaceHolder = "Place Holder new",

    Callback = function(args)
        print(args)
    end
})

tab:DropDown({
    Text = "Aimlock Method",
    PlaceHolder = 'Choose An Aim Method...',
    Options = {'FolderTable'},
    Callback = function(args)
        print(args)
    end
})

tab:Slider({
    Title = "Slider Info",
    MinValue = 16,
    Def = 100,
    MaxValue = 100,
    callback = function(args)
        print(args)
    end
})

local tab = win:NewTab({
    Title = "TriggerBot"
})
local tab = win:NewTab({
    Title = "Radar"
})
local tab = win:NewTab({
    Title = "Visuals"
})
local tab = win:NewTab({
    Title = "Misc."
})