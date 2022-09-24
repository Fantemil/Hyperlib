-- credit to https://v3rmillion.net/showthread.php?tid=1170503 for the lib used

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

local main = library:Load{
    Name = "Hotel elephant fucker v3",
    SizeX = 500,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json",
    Folder = "HEF"
}


local tab = main:Tab("main")
local tab2 = main:Tab("Morphs")
local tab3 = main:Tab("Teams")
local section = tab:Section{
    Name = "Fuck Server",
    Side = "Left"
}

local label = section:Label("This will make all parts")
local label2 = section:Label("have no collision.")
section:Button{
    Name = "Fuck server",
    Callback  = function()
        for _, GameFucked in pairs(game:GetDescendants()) do
 game.ReplicatedStorage.DoorOpener:FireServer(GameFucked)
end
    end
}

local section4 = tab:Section{
    Name = "Give yourself cash",
    Side = "Right"
}

section4:Button{
    Name = "500",
    Callback  = function()
 local args ={
    [1] = false,
    [2] = 500,
    [3] = "Cash",
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end
}
section4:Button{
    Name = "5000",
    Callback  = function()
 local args ={
    [1] = false,
    [2] = 5000,
    [3] = "Cash",
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end
    
}
section4:Button{
    Name = "5000",
    Callback  = function()

 local args ={
    [1] = false,
    [2] = 5000,
    [3] = "Cash",
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end
    
}
section4:Button{
    Name = "50000",
    Callback  = function()

 local args ={
    [1] = false,
    [2] = 50000,
    [3] = "Cash",
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end
    
}
section4:Button{
    Name = "500000",
    Callback  = function()

 local args ={
    [1] = false,
    [2] = 500000,
    [3] = "Cash",
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end
    
    
}



local section2 = tab2:Section{
    Name = "Ghost",
    Side = "Left"
}



section2:Button{
    Name = "Become a ghost",
    Callback  = function()
       Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
game:GetService("ReplicatedStorage").DoorOpener:FireServer(Torso)
wait()
game:GetService("ReplicatedStorage").DoorOpener:FireServer(Head)
wait()
game:GetService("ReplicatedStorage").DoorOpener:FireServer(RightArm)
wait()
game:GetService("ReplicatedStorage").DoorOpener:FireServer(LeftArm)
wait()
game:GetService("ReplicatedStorage").DoorOpener:FireServer(RightLeg)
wait()
game:GetService("ReplicatedStorage").DoorOpener:FireServer(LeftLeg)
    end
}

local section3 = tab3:Section{
    Name = "Teams",
    Side = "Left"
}

section3:Button{
    Name = "Manager",
    Callback  = function()
local args = {
    [1] = "Bright green"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

    end
}

section3:Button{
    Name = "Concierge",
    Callback  = function()
local args = {
    [1] = "Burgundy"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

    end
}
section3:Button{
    Name = "Shop assistant",
    Callback  = function()
local args = {
    [1] = "Bright Blue"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

    end
}
section3:Button{
    Name = "Waiter/Waitress",
    Callback  = function()
local args = {
    [1] = "Bright red"
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

    end
}
section3:Button{
    Name = "Neutral",
    Callback  = function()
local args = {
    [1] = ""
}

game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))

    end
}









local configs = main:Tab("Configuration")

local themes = configs:Section{Name = "Theme", Side = "Left"}

local themepickers = {}

local themelist = themes:Dropdown{
    Name = "Theme",
    Default = library.currenttheme,
    Content = library:GetThemes(),
    Flag = "Theme Dropdown",
    Callback = function(option)
        if option then
            library:SetTheme(option)

            for option, picker in next, themepickers do
                picker:Set(library.theme[option])
            end
        end
    end
}

library:ConfigIgnore("Theme Dropdown")

local namebox = themes:Box{
    Name = "Custom Theme Name",
    Placeholder = "Custom Theme",
    Flag = "Custom Theme"
}

library:ConfigIgnore("Custom Theme")

themes:Button{
    Name = "Save Custom Theme",
    Callback = function()
        if library:SaveCustomTheme(library.flags["Custom Theme"]) then
            themelist:Refresh(library:GetThemes())
            themelist:Set(library.flags["Custom Theme"])
            namebox:Set("")
        end
    end
}

local customtheme = configs:Section{Name = "Custom Theme", Side = "Right"}

themepickers["Accent"] = customtheme:ColorPicker{
    Name = "Accent",
    Default = library.theme["Accent"],
    Flag = "Accent",
    Callback = function(color)
        library:ChangeThemeOption("Accent", color)
    end
}

library:ConfigIgnore("Accent")

themepickers["Window Background"] = customtheme:ColorPicker{
    Name = "Window Background",
    Default = library.theme["Window Background"],
    Flag = "Window Background",
    Callback = function(color)
        library:ChangeThemeOption("Window Background", color)
    end
}

library:ConfigIgnore("Window Background")

themepickers["Window Border"] = customtheme:ColorPicker{
    Name = "Window Border",
    Default = library.theme["Window Border"],
    Flag = "Window Border",
    Callback = function(color)
        library:ChangeThemeOption("Window Border", color)
    end
}

library:ConfigIgnore("Window Border")

themepickers["Tab Background"] = customtheme:ColorPicker{
    Name = "Tab Background",
    Default = library.theme["Tab Background"],
    Flag = "Tab Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Background", color)
    end
}

library:ConfigIgnore("Tab Background")

themepickers["Tab Border"] = customtheme:ColorPicker{
    Name = "Tab Border",
    Default = library.theme["Tab Border"],
    Flag = "Tab Border",
    Callback = function(color)
        library:ChangeThemeOption("Tab Border", color)
    end
}

library:ConfigIgnore("Tab Border")

themepickers["Tab Toggle Background"] = customtheme:ColorPicker{
    Name = "Tab Toggle Background",
    Default = library.theme["Tab Toggle Background"],
    Flag = "Tab Toggle Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Toggle Background", color)
    end
}

library:ConfigIgnore("Tab Toggle Background")

themepickers["Section Background"] = customtheme:ColorPicker{
    Name = "Section Background",
    Default = library.theme["Section Background"],
    Flag = "Section Background",
    Callback = function(color)
        library:ChangeThemeOption("Section Background", color)
    end
}

library:ConfigIgnore("Section Background")

themepickers["Section Border"] = customtheme:ColorPicker{
    Name = "Section Border",
    Default = library.theme["Section Border"],
    Flag = "Section Border",
    Callback = function(color)
        library:ChangeThemeOption("Section Border", color)
    end
}

library:ConfigIgnore("Section Border")

themepickers["Text"] = customtheme:ColorPicker{
    Name = "Text",
    Default = library.theme["Text"],
    Flag = "Text",
    Callback = function(color)
        library:ChangeThemeOption("Text", color)
    end
}

library:ConfigIgnore("Text")

themepickers["Disabled Text"] = customtheme:ColorPicker{
    Name = "Disabled Text",
    Default = library.theme["Disabled Text"],
    Flag = "Disabled Text",
    Callback = function(color)
        library:ChangeThemeOption("Disabled Text", color)
    end
}

library:ConfigIgnore("Disabled Text")

themepickers["Object Background"] = customtheme:ColorPicker{
    Name = "Object Background",
    Default = library.theme["Object Background"],
    Flag = "Object Background",
    Callback = function(color)
        library:ChangeThemeOption("Object Background", color)
    end
}

library:ConfigIgnore("Object Background")

themepickers["Object Border"] = customtheme:ColorPicker{
    Name = "Object Border",
    Default = library.theme["Object Border"],
    Flag = "Object Border",
    Callback = function(color)
        library:ChangeThemeOption("Object Border", color)
    end
}

library:ConfigIgnore("Object Border")

themepickers["Dropdown Option Background"] = customtheme:ColorPicker{
    Name = "Dropdown Option Background",
    Default = library.theme["Dropdown Option Background"],
    Flag = "Dropdown Option Background",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Option Background", color)
    end
}

library:ConfigIgnore("Dropdown Option Background")

local configsection = configs:Section{Name = "Configs", Side = "Left"}

local configlist = configsection:Dropdown{
    Name = "Configs",
    Content = library:GetConfigs(), -- GetConfigs(true) if you want universal configs
    Flag = "Config Dropdown"
}

library:ConfigIgnore("Config Dropdown")

local loadconfig = configsection:Button{
    Name = "Load Config",
    Callback = function()
        library:LoadConfig(library.flags["Config Dropdown"]) -- LoadConfig(library.flags["Config Dropdown"], true)  if you want universal configs
    end
}

local delconfig = configsection:Button{
    Name = "Delete Config",
    Callback = function()
        library:DeleteConfig(library.flags["Config Dropdown"]) -- DeleteConfig(library.flags["Config Dropdown"], true)  if you want universal configs
        configlist:Refresh(library:GetConfigs())
    end
}


local configbox = configsection:Box{
    Name = "Config Name",
    Placeholder = "Config Name",
    Flag = "Config Name"
}

library:ConfigIgnore("Config Name")

local save = configsection:Button{
    Name = "Save Config",
    Callback = function()
        library:SaveConfig(library.flags["Config Dropdown"] or library.flags["Config Name"]) -- SaveConfig(library.flags["Config Name"], true) if you want universal configs
        configlist:Refresh(library:GetConfigs())
    end
}

local keybindsection = configs:Section{Name = "UI Toggle Keybind", Side = "Left"}

keybindsection:Keybind{
    Name = "UI Toggle",
    Flag = "UI Toggle",
    Default = Enum.KeyCode.RightShift,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting then
            library:Close()
        end
    end
}