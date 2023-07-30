local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "Raccoon Hub v1.2.0c",
    LoadingTitle = "Raccoon Hub v1.2.0c is loading..",
    LoadingSubtitle = "By Ry0511#3419 and you!",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Raccoon Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "tzAsunjkXy",
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Raccoon Hub v1.2.0c",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/tzAsunjkXy) for the key.",
       FileName = "atlaskey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "SPartner"
    }
 })
 Rayfield:Notify({
	Title = "Notification",
	Content = "Hey! Thanks for choosing Raccoon Hub, we have alot of scripts here. Enjoy!",
	Duration = 6.5,
	Image = 4483362458,
	Actions = { -- Notification Buttons
	   Ignore = {
		  Name = "Okay!",
		  Callback = function()
		  print("The user tapped Okay!")
	   end
	},
 },
 })
 Rayfield:Notify({
   Title = "Welcome to Raccoon Hub v1.2.0c!",
   Content = "This hub is filled to the tip with content, I worked very hard on this. - Ry.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
 Rayfield:Notify({
   Title = "Warning!",
   Content = "Some of these script may crash your game or won't work. Thank you for using the hub",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped, Okay!")
      end
   },
},
})


 warn("i literally helps wello tons of time and he just kicked me like nothing man.")

 local ScriptsTab = Window:CreateTab("Main Scripts", 4483362458) -- Title, Image
 local HubsTab = Window:CreateTab("Main Hubs", 4483362458) 
 local MiscTab = Window:CreateTab("Misc", 4483362458) 
 local PlayerTab = Window:CreateTab("Utility", 4483362458) 
 local RandomTab = Window:CreateTab("Random Scripts", 4483362458) 
 local ChangeTab = Window:CreateTab("Changelogs", 4483362458) 
 local SupportTab = Window:CreateTab("Support Us!", 4483362458) 
 local CreditTab = Window:CreateTab("Credits", 4483362458) 
 local ControlTab = Window:CreateTab("Controls", 4483362458) 
 local HelpTab = Window:CreateTab("Help", 4483362458) 

local Paragraph = CreditTab:CreateParagraph({Title = "Rayfield", Content = "By Shlexware"})
local Paragraph = CreditTab:CreateParagraph({Title = "Original Atlas Hub", Content = "Based on Goobie / The Pepsi Hub"})
local Paragraph = CreditTab:CreateParagraph({Title = "Resync Fling, Aimbot, ESP", Content = "By Sploinky a developer of Pepsi Hub"})
local Paragraph = CreditTab:CreateParagraph({Title = "[OLD | OG] Atlas Hub and Rayfield Atlas Hub", Content = "By Ry"})
local Paragraph = CreditTab:CreateParagraph({Title = "Atlas X", Content = "By Wello"})

local Paragraph = SupportTab:CreateParagraph({Title = "Please paste one of these links in you browser", Content = "Follow us on Github or join our server will helps alot!"})

 local Button = SupportTab:CreateButton({
	Name = "Join our server!",
	Callback = function()
 Rayfield:Notify({
   Title = "Notify",
   Content = "The link has been copied to you clipboard!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
		setclipboard("https://dsc.gg/rans")
    end,
 })

 local Button = SupportTab:CreateButton({
	Name = "Our GitHub",
	Callback = function()
 Rayfield:Notify({
   Title = "Notify",
   Content = "The link has been copied to you clipboard!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("wello x Terio")
      end
   },
},
})
		setclipboard("https://github.com/RyAtlasX")
    end,
 })

 local Button = SupportTab:CreateButton({
	Name = "Atlas Dev Github",
	Callback = function()
 Rayfield:Notify({
   Title = "Notify",
   Content = "The link has been copied to you clipboard!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
		setclipboard("https://github.com/atlas-developers")
    end,
 })

 local Button = SupportTab:CreateButton({
	Name = "Atlas v5 website",
	Callback = function()
 Rayfield:Notify({
   Title = "Notify",
   Content = "The link has been copied to you clipboard!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Ry x Kee")
      end
   },
},
})
		setclipboard("https://atlasv5.vercel.app/")
    end,
 })

 

local Paragraph = CreditTab:CreateParagraph({Title = "ㅤㅤㅤㅤㅤㅤㅤㅤ", Content = "ㅤ"})
 
local Paragraph = CreditTab:CreateParagraph({Title = "Special Thanks to:", Content = "ㅤ"})

local Paragraph = CreditTab:CreateParagraph({Title = "Wello", Content = "Testing script!"})

local Paragraph = CreditTab:CreateParagraph({Title = "Gooble", Content = "For inspiring!"})

local Paragraph = CreditTab:CreateParagraph({Title = "Suno", Content = "Supporting!"})

local Paragraph = CreditTab:CreateParagraph({Title = "And others", Content = "kking, Louismoonj, ScripterCat for Cheering me!"})

local Paragraph = RandomTab:CreateParagraph({Title = "Warning!", Content = "Some of these scripts may get you banned! especially Arsenal."})
 
 local Button = RandomTab:CreateButton({
	Name = "Legends of Speed | Auto Orbs",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/2008.lua"))()
    end,
 })
 local Button = RandomTab:CreateButton({
	Name = "Muscle Legends | V.G",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Atlas_hub/main/Muscle-Legends.txt"))()
    end,
 })
 local Button = RandomTab:CreateButton({
	Name = "VAPE v4 | Bedwars",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/VAPE%20V4%20%5Bbedwar%5D"))()
    end,
 })
local Button = RandomTab:CreateButton({
	Name = "Infamy | GUI",
	Callback = function()
 Rayfield:Notify({
   Title = "Key",
   Content = "Direct key link of Infamy GUI has been copied to you clipboard.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
          setclipboard("1.kelprepl.repl.co/getkey/Infamy_GUI")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Infamy.GUI.lua"))()
    end,
 })

 local Button = RandomTab:CreateButton({
	Name = "Piano Auto Player | richie0866",
	Callback = function()
 Rayfield:Notify({
   Title = "How to use script:",
   Content = "workspace > create folder name 'midi' > add a midi file or find it on the internet then put it in a folder.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Auto_player.piano"))()
    end,
 })

 local Button = RandomTab:CreateButton({
	Name = "Arsenal Scripts | 2 Hubs",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/test/main/Arsenal%20scripts1"))()
    end,
 })
 local Button = RandomTab:CreateButton({
	Name = "Vynixu Scripts | Doors",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/test/main/Doors2"))()
    end,
 })

local Paragraph = MiscTab:CreateParagraph({Title = "FE Misc Scripts", Content = "Everything here is FE and don't worry about bugs or glitches."})

 local Button = MiscTab:CreateButton({
	Name = "Dabbing Animation",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Dab-8883"))()
	end,
 })
  local Button = MiscTab:CreateButton({
	Name = "Ball Rolling Animation",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ball-Roll-8881"))()
	end,
 })
	local Button = MiscTab:CreateButton({
   Name = "Fast animations",
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/8DKHE7sd'))() -- The function that takes place when the button is pressed
   end,
})

	local Button = MiscTab:CreateButton({
   Name = "Walk on Walls",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/walks%20on%20walls'))() -- The function that takes place when the button is pressed
   end,
})

	local Button = MiscTab:CreateButton({
   Name = "Front Flip Script",
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/8vFCxMWT'))() -- The function that takes place when the button is pressed
   end,
})

local Button = MiscTab:CreateButton({
	Name = "RTX | Shader",
	Callback = function()
 Rayfield:Notify({
   Title = "Warning!",
   Content = "If you are on Windows 7 or lower, this could crash your game.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
 Rayfield:Notify({
   Title = "Experience",
   Content = "Use RoShade for a better experience. Click this button and the link will be copied into your clipboard",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Install RoShade",
         Callback = function()
         setclipboard("https://roshade.com/")
      end
   },
},
})
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/RTX.lua"))()
    end,
 })


local Paragraph = PlayerTab:CreateParagraph({Title = "Partners Utility", Content = "These utilites created by our partners."})

 local Button = PlayerTab:CreateButton({
	Name = "Solar [Beta]",
	Callback = function()
		loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/SunoUi/Solar/main/Main.lua', true))('Solar Utilities')
	end,
 })

local Paragraph = PlayerTab:CreateParagraph({Title = "Universal", Content = "Utilites"})

local Button = PlayerTab:CreateButton({
	Name = "Dex v1.1.0 Alpha",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Dark%20Dex%20v4")() -- The function that takes place when the button is pressed
	end,
 })

local Button = PlayerTab:CreateButton({
	Name = "SimpleSpy v2.2",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/test/main/Rspy")() -- The function that takes place when the button is pressed
	end,
 })

 local Button = PlayerTab:CreateButton({
	Name = "OpenGui v1.11",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/OpenGui")() -- The function that takes place when the button is pressed
	end,
 })
 local Button = PlayerTab:CreateButton({
	Name = "Unnamed ESP",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Unnamed%20ESP")() -- The function that takes place when the button is pressed
	end,
 })

 local Paragraph = HubsTab:CreateParagraph({Title = "Partner Hubs", Content = "These Hub are created by my partners."})

 local Button = HubsTab:CreateButton({
	Name = "Pepsi Hub v2.3",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/test/main/Pepsi%20Hub%20%5Bremade%5D"))()
	end,
 })

 local Paragraph = HubsTab:CreateParagraph({Title = "Hubs", Content = "Universal script hubs."})

 local Button = HubsTab:CreateButton({
	Name = "FE Nullware Reanimation",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/nullware'),true))()
	end,
 })

 local Button = HubsTab:CreateButton({
	Name = "FE Energize GUI",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Energize'),true))()
	end,
 })

local Button = HubsTab:CreateButton({
	Name = "FE Sussy Hub",
	Callback = function()
		loadstring(game:HttpGet(('https://gist.githubusercontent.com/Nilrogram/8b0c8bd710be142f383c71f79279752c/raw/e4fb01a7de7cd498bb53270d2ad191dfab268a88/FE%2520SussyHub'),true))(); -- The function that takes place when the button is pressed
	end,
 })
 local Paragraph = ScriptsTab:CreateParagraph({Title = "Welcome to", Content = "Universal FE Scripts."})
 local Paragraph = ScriptsTab:CreateParagraph({Title = "Recommendation", Content = "We recorecommended you to use NullWare for reanimating."})

 local Button = ScriptsTab:CreateButton({
	Name = "FE Grandmasters",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-script-Grandmaster-7382"),true)("Raccoon, The best script hub")
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Neko Maid",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/neko%20maid%20v1.lua'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Nameless Animations",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Nameless%20animation%20scripts1'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Mr.Chill",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/test/main/Mr%20Chill'),true))()
	end,
 })

local Button = ScriptsTab:CreateButton({
	Name = "FE Chat Bypass Script",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/vqmpjay/scripts/main/vadriftsbyp_krnl_fluxus_support'),true))()
	end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "FE Physics Gun",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Physics%20Gun.lua'),true))()
	end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "FE Better Bypasser",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Better%20Bypasser.lua'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "VR | No headset required",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/test/main/VR'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Among Us",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Among%20Us1'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Grab Knife",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20chip.lua'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Chips | R6",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20chip.lua'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Chips | R15",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20chipR15.lua'),true))()
	end,
 })

 local Button = ScriptsTab:CreateButton({
	Name = "FE Yeet GUI | Trollface Edition",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Yeet%20gui%20(trollface%20edittion).lua'),true))()
	end,
 })

local Button = PlayerTab:CreateButton({
	Name = "Infinite Yield v5.9.3",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
 })

local Button = PlayerTab:CreateButton({
	Name = "CMD X v1.9.9F",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/CMD-X'))()
	end,
 })

local Button = ScriptsTab:CreateButton({
	Name = "Anti Kick",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
	end,
 })
local Button = PlayerTab:CreateButton({
	Name = "CPU / GPU Saver",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-CPU-Saver-WINDOWSFOCUS-8910"))()
	end,
 })
local Button = ScriptsTab:CreateButton({
	Name = "FE Chat Spy",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Chat-Troller-8885"))()
	end,
 })
   local Button = ScriptsTab:CreateButton({
	Name = "FE R15 Animation Library",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/hVvmgMHb"))()
	end,
 })
 local Button = PlayerTab:CreateButton({
	Name = "Remove Textures and Effects",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Remove-Surface-Textures-and-Effects-8821'))()
	end,
 })
  local Button = HubsTab:CreateButton({
	Name = "Selexity Reanimation GUI",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-selexity-or-something-2808", true))()
	end,
 })
   local Button = ScriptsTab:CreateButton({
	Name = "FE Chill GUI | Float",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FE-Chill-Script-R6-and-R15-5925", true))()
	end,
 })
   local Button = HubsTab:CreateButton({
	Name = "Pendulum Reanimation Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
	end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Collision Enabler",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/scripts/main/Local%20Full%20Player%20Collision.Lua"))()
	end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Anti Fling",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/AntiFling"))()
	end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Touch Fling Script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/TouchFling.txt"))()
	end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Universal Snake Script | No Hats",
	Callback = function()
		loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
    end,
 })

 local Button = HubsTab:CreateButton({
    Name = "Universal FE Hub",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/WinterDinder/oldfehub/main/boronide%20level%20obfuscation%20lol")() -- The function that takes place when the button is pressed
    end,
 })
 
     local Button = HubsTab:CreateButton({
    Name = "Ice Hub",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven")() -- The function that takes place when the button is pressed
    end,
 })

 local Button = HubsTab:CreateButton({
	Name = "ScriptBlox | SearchBar",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/madonchik123/USL/main/main.lua"))()
	end,
 })
 local Button = HubsTab:CreateButton({
	Name = "Simplity V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main"))()
    end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Lyrics Bot",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/lyricsBot/main/singer.lua"))()
    end,
 })
 local Button = PlayerTab:CreateButton({
	Name = "Netless FE",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/netless.txt"))()
    end,
 })
 local Button = HubsTab:CreateButton({
	Name = "Skidded V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/skiddedv2.txt"))()
    end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Resync Fling | Sploinky",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/sploinkyflingscript.resync.txt"))()
    end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "Aimbot (Hold E to use) | Sploinky",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/sploinkyaimbot.headlock.txt"))()
    end,
 })
 local Button = ScriptsTab:CreateButton({
	Name = "ESP | Sploinky",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/sploinkyesp.odd.txt"))()
    end,
 })

 local Button = HubsTab:CreateButton({
	Name = "Owl Hub",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/RyAtlasX/Atlas_hub/blob/main/Owl%20hub"))()
    end,
 })

 local Button = HubsTab:CreateButton({
	Name = "Ez Hub",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Ez%20Hub.txt"))()
    end,
 })

 local Button = HubsTab:CreateButton({
	Name = "Penlulum Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/Pendulum%20Hub.lua"))()
    end,
 })
 local Button = HubsTab:CreateButton({
	Name = "Hydroxide",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Hydroxide"))()
    end,
 })
 local Button = HubsTab:CreateButton({
	Name = "Orca v1.1.1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Orca"))()
    end,
 })
 local Button = HubsTab:CreateButton({
	Name = "Domain X v1.96",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/DomainX/main/Source"))()
    end,
 })
 
 local Button = HubsTab:CreateButton({
	Name = "Eclipse Hub v0.88",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/Eclipse%20hub.lua"))()
    end,
 })
local Paragraph = ControlTab:CreateParagraph({Title = "Touch Fling Controls", Content = "To use touch fling, Press the (X) Key, It will stop animations, and you can fling anybody who doesnt have anti fling enabled."})
local Paragraph = ControlTab:CreateParagraph({Title = "FE Flip Controls", Content = "Use the (Z) Key to backflip, the (X) Key to front flip, and the (C) Key to infinite jump, Does not work with touch fling, Resetting does not disable this script, to disable it, rejoin your game."})
local Paragraph = ControlTab:CreateParagraph({Title = "Neko Maid Controls", Content = "Attack: Z X | Taunt: R T | Movement: F"})
local Paragraph = ControlTab:CreateParagraph({Title = "FE Grandmaster Controls", Content = "Attack: Z X C V | Taunt: T | Movement: Q E"})
local Paragraph = ChangeTab:CreateParagraph({Title = "Release 1.0", Content = "The Rayfield version of Atlas Hub is here!"})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.1", Content = "Added selections, more script hubs, more FE scripts."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.1.5", Content = "Added more tips in Controls page, Nullware Reanimation is fixed, And more..."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.1.6", Content = "Added Infamy script, Legend of speed back to the Atlas hub, moved Solar to Utilites selection."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.1.7", Content = "Added auto player piano."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.1.8", Content = "Added Energize Animation Gui."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.1.9", Content = "Added Owlhub, Ez hub, Muscle Legends script."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Update 1.2.0", Content = "Added Support Tab, Credits Tab."})
local Paragraph = ChangeTab:CreateParagraph({Title = "Demo 1.2.0a", Content = "Changed somethings in 'Support Us!' tab"})
local Paragraph = ChangeTab:CreateParagraph({Title = "Demo 1.2.0b", Content = "Changed somethings in 'Credits' and Main tab"})
local Paragraph = ChangeTab:CreateParagraph({Title = "Demo 1.2.0c", Content = "Changed somethings in 'Credits' and Main tab"})
local Paragraph = HelpTab:CreateParagraph({Title = "What is netless?", Content = "When you use FE scripts, It relies on taking your limbs and rearranging them, Sometimes it will fail, and the script wont work, Netless prevents this."})