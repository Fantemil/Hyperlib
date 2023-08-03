local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Keybrew Hub | Game Name",
    Style = 3,
    SizeX = 300,
    SizeY = 350,
    Theme = "Light",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(0,0,0),
        Toggle = Color3.fromRGB(124,37,255),
        ToggleAccent = Color3.fromRGB(255,255,255), 
        Dropdown = Color3.fromRGB(124,37,255),
		DropdownAccent = Color3.fromRGB(255,255,255),
        Slider = Color3.fromRGB(124,37,255),
		SliderAccent = Color3.fromRGB(255,255,255),
        NavBarAccent = Color3.fromRGB(0,0,0),
        Content = Color3.fromRGB(0,0,0),
    }
})

local Y = X.New({
    Title = "1"
})

local Z = X.New({
    Title = "2"
})

local Cred = X.New({
    Title = "Credits"
})
    Cred.Button({
    Text = "Copy Discord UyuSF4fPC9",
    Callback = function()
        setclipboard("https://discord.gg/UyuSF4fPC9")
        toclipboard("https://discord.gg/UyuSF4fPC9")
    end,
})
local function getTRINKET()
    local dist, thing = math.huge
    for _,v in pairs(game:GetService("Workspace").MouseIgnore:GetDescendants()) do
        if v.Name == "Clicker" and v:IsA"ClickDetector" and v.Parent.Name == "ClickPart" then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end
    Y.Toggle({
    Text = "Auto Pickup",
    Callback = function(Value)
        a = Value
        while a do task.wait()
            pcall(function()
                fireclickdetector(getTRINKET())
                wait()
            end)
        end
    end,
    Enabled = false
})
