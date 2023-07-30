local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "JxcHub Loader", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Loader",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
})
Tab2:AddButton({
	Name = "Copy Discord Server",
	Callback = function()
        setclipboard("https://discord.gg/Yjn8FxXBT3")
        end
    end
})


Tab:AddParagraph("Credits","hello ! thank for using this script, enjoy! -Script Owner JxcExploitss")
Tab:AddParagraph("Update Coming Soon.","Subscribe To JxcExploitss For Update!")
Tab2:AddParagraph("Script Supported","Plane Crash Physics | Ship Crash Physics  | Eastern War | Destruction Simulator | D-Day | Plane Crash Physics 2")

Tab2:AddButton({
	Name = "Load Script",
	Callback = function()
	 if game.PlaceId==9601565001
	            then loadstring(game:HttpGet("https://raw.githubusercontent.com/JxcExploit/JxcHub-Loader/main/CarCrashSystemKavo"))()
	            end
	 if game.PlaceId==9585800888
	            then loadstring(game:HttpGet("https://raw.githubusercontent.com/JxcExploit/JxcHub-Loader/main/PlaneCrashPhysics"))()
	            end
	 if game.PlaceId==12496573043
	            then loadstring(game:HttpGet("https://raw.githubusercontent.com/JxcExploit/JxcHub-Loader/main/ShipCrash%20Physics"))()
	            end
         if game.PlaceId==8225971185
	            then loadstring(game:HttpGet("https://raw.githubusercontent.com/JxcExploit/JxcHub-Loader/main/The%20Eastern%20War"))()
	            end
         if game.PlaceId==2248408710
	            then loadstring(game:HttpGet("https://raw.githubusercontent.com/JxcExploit/JxcHub-Loader/main/DestructionSim"))()
	            end
         if game.PlaceId==901793731
                    then loadstring(game:HttpGet(('https://raw.githubusercontent.com/JxcExploit/D-Day/main/Open-Resources')))()
	            end
         if game.PlaceId==12182821293
                    then loadstring(game:HttpGet(('https://raw.githubusercontent.com/JxcExploit/planecrashphysics2/main/spawn%20any%20plane')))()
	            end
                end
})

local Tab3 = Window:MakeTab({
	Name = "Universal/ExploitAssist",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab3:AddButton({
	Name = "Universal Hubs",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/JxcExploit/JxcHub-Loader/main/universalhubsprotected')))()
        end
})
Tab3:AddButton({
	Name = "Exploit Assistant V2",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/JxcExploit/Exploit/main/assistant-v1')))()
        end
})
OrionLib:MakeNotification({
	Name = "Subscribe",
	Content = "Subscribe to JxcExploitss If you have time!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
OrionLib:Init()