local NofiticationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/Faacts/UILibraries/main/STXNotificationHolder"))()
local Nofitication = loadstring(game:HttpGet("https://raw.githubusercontent.com/Faacts/UILibraries/main/STXNotification"))()

local function Notify(Title, Text, Time)
    Nofitication:Notify(
        {Title = Title, Description = Text},
        {OutlineColor = Color3.fromRGB(100, 100, 100),Time = Time or 5, Type = "default"} --[[default, option, image]]
    )
end

Notify("This is the title", "This is the description")