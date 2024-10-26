local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Vivianne - Just a Baseplate ", HidePremium = false, SaveConfig = true, introEnabled = true,IntroText = heh, ConfigFolder = "heh"})

OrionLib:MakeNotification({
	Name = "Welcome",
	Content = "heh",
	Image = "",
	Time = 5
})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("Credits to Shlexware on github for Orion Library Base, heh")
Tab:AddLabel("Made By Vivianne[douglasxfgk]")
Tab:AddLabel("Updated to 0.1!")
Tab:AddLabel("Update Log:")
Tab:AddLabel("Added 3 New Scripts!")


local Tab = Window:MakeTab({
    Name = "Admin",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name = "Infinite Yield",
    Callback = function(value5)
        load = value5 == loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        OrionLib:MakeNotification({
            Name = "Executed!",
            Content = "Enjoy",
            Image = "",
            Time = 5
        })
    end
})


Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function(Value6)
        load = Value6 == loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-9113"))()
        OrionLib:MakeNotification({
            Name = "Executed!",
            Content = "Enjoy",
            Image = "",
            Time = 5
        })
    end
    
})

local Tab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddLabel("This Scripts are not mine credits to their creators")


Tab:AddButton({
    Name = "Script Hub V3",
    Callback = function(Value4)
        load = Value4 == loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/SCRIPTHUBV3/main/SCRIPTHUBV3", true))()
        OrionLib:MakeNotification({
            Name = "Executed!",
            Content = "Enjoy",
            Image = "",
            Time = 5
        })
    end
        
    
})


Tab:AddButton({
    Name = "Fire X Hub",
    Callback = function(Value3)
        load = Value3 == loadstring("\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\48\49\95\115\101\114\118\101\114\34\41\32\116\104\101\110\32\114\101\116\117\114\110\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101\34\41\58\84\101\108\101\112\111\114\116\40\49\55\53\55\52\54\49\56\57\53\57\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\41\32\101\110\100\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\116\121\114\101\108\116\114\105\106\111\47\102\105\114\101\47\109\97\105\110\47\102\105\114\101\34\41\41\40\41\10")()
        OrionLib:MakeNotification({
            Name = "Executed!",
            Content = "Enjoy!",
            Image = "",
            Time = 5
        })
    end
})


Tab:AddButton({
    Name = "Car (FE)",
    Callback = function(Value2)
        load = Value2 == loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexCr4sh/FeScripts/main/FeCarScript.lua", true))()
        OrionLib:MakeNotification({
            Name = "Executed!",
            Content = "Please wait",
            Image = "",
            Time = 5
        })
    end
})


Tab:AddButton({
    Name = "[FE]CloVR",
    Callback = function(Value1)
        load = Value1 == loadstring(game:HttpGet("https://pastebin.com/raw/1jJ6xDNS"))()
        OrionLib:MakeNotification({
            Name = "Heads Up!",
            Content = "This Script is Made for pc",
            Image = "",
            Time = 5
        })
    end
})


Tab:AddButton({
    Name = "Neko[FE]",
    Callback = function(Value)
        load = Value == loadstring(game:HttpGet("https://pastefy.app/gHRJrLLX/raw"))()
        OrionLib:MakeNotification({
            Name = "Executed!",
            Content = "Please Wait",
            Image = "",
            Time = 5
        })
    end
})


Tab:AddButton({
    Name = "Â¿FE?Black Hole",
    Callback = function(Value7)
        load = Value7 == loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BringFlingPlayers"))()
            OrionLib:MakeNotification({
                Name = "Executed!",
                Content = "Enjoy!",
                Image = "",
                Time = 5
            })
        end
})


Tab:AddButton({
    Name = "Fly Gui V3",
    Callback = function(Value8)
        load = Value8 == loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
            OrionLib:MakeNotification({
                Name = "Executed!",
                Content = "Enjoy!",
                Image = "",
                Time = 5
            })
        end
})


Tab:AddButton({
    Name = "Sky Hub",
    Callback = function(Value9)
        load = Value9 == loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
            OrionLib:MakeNotification({
                Name = "Executed!",
                Content = "Enjoy!",
                Image = "",
                Time = 5
            })
        end
})