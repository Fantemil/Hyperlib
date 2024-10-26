local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fe Reanimated hub ",
    SubTitle = "by ex1e",
    TabWidth = 160,
    Size = UDim2.fromOffset(460, 250),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "fe script", Icon = "contact" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Loaded",
        Content = "Reanimated hub",
        SubContent = "reanimated hub loaded",
        Duration = 5
    })



    Tabs.Main:AddParagraph({
        Title = "reset when changing to others script",
        Content = ""
    })



    Tabs.Main:AddButton({
        Title = "da feed",
        Description = "da feed make ur arm and leg as long leg",
        Callback = function()
             loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
        end
    })
    
    
    Tabs.Main:AddButton({
        Title = "fe among us v2",
        Description = "amongus v2 created by myworld",
        Callback = function()
          loadstring(game:HttpGet('https://rawscripts.net/raw/Nothing-Fe-Among-Us-V2-(R6)-3224'))()
        end
    })
    
    Tabs.Main:AddButton({
        Title = "fe nameless animation v4",
        Description = "nameless animation created by myworld",
        Callback = function()
                      loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-FE-Nameless-Animations-V4-4249'))()
        end
    })
    Tabs.Main:AddButton({
        Title = "fe grandmaster",
        Description = "",
        Callback = function()
         loadstring(game:HttpGet('https://pastebin.com/raw/jnfLkZVR'))()
        end
    })
if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then return game:GetService("TeleportService"):Teleport(17574618959, game:GetService("Players").LocalPlayer) end
Tabs.Main:AddButton({
        Title = "fe chill",
        Description = "make ur character floating with a chill style",
        Callback = function()
                            loadstring(game:HttpGet('https://rawscripts.net/raw/Just-a-baseplate.-Fe-Chill-14103'))()
        end
    })
    Tabs.Main:AddButton({
        Title = "fe sonic",
        Description = "make ur body abimating as sonic",
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/raw/RZrtcvh4'))()
        end
    })
    
    Tabs.Main:AddButton({
        Title = "fe clovr",
        Description = "turn ur body into vr can be without vr",
        Callback = function()
                            loadstring(game:HttpGet('https://rawscripts.net/raw/Just-a-baseplate.-Fe-Clovr-14102'))()
        end
    })
    

end
    
Window:SelectTab(1)
   