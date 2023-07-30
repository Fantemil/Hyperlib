local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Public | XybGui v1.4.9 ✅",
   LoadingTitle = "Loading XybGui Public...",
   LoadingSubtitle = "by XybName",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "discord.gg/TeamXybName", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "XybGui | Key",
      Subtitle = "Link In Discord Server",
      Note = "https://discord.gg/tAYazxvd2w",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/PK1Zijpa"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏡Home", nil) -- Title, Image
local Section = MainTab:CreateSection("Infnite Script")

Rayfield:Notify({
   Title = "You Exeuctuted The Script",
   Content = "You Can Support XybName Just Sub Here : https://www.youtube.com/@XybName",
   Duration = 6.5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Section = MainTab:CreateSection("COMMING SOON !!")

local Section = MainTab:CreateSection("Textbox Hack")

local Input = MainTab:CreateInput({
   Name = "Jump Power Hack",
   PlaceholderText = "1-200",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Text)
   end,
})

local AutoFarmTab = Window:CreateTab("🚜Auto Farm Poor Games", nil) -- Title, Image
local Section = AutoFarmTab:CreateSection("Poor Games")

local Button = AutoFarmTab:CreateButton({
   Name = "Build A Boat For Treasure Autofarm",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Build-A-Boat'))()
        
   end,
})

local SocialTab = Window:CreateTab("🎥 Social Media", nil) -- Title, Image
local Section = SocialTab:CreateSection("Social Media")

local Paragraph = SocialTab:CreateParagraph({Title = "YouTube", Content = "https://www.youtube.com/@XybName"})
local Paragraph = SocialTab:CreateParagraph({Title = "Twitter", Content = "https://twitter.com/XybName"})
local Paragraph = SocialTab:CreateParagraph({Title = "Twitch", Content = "https://www.twitch.tv/xybname"})
local Paragraph = SocialTab:CreateParagraph({Title = "Discord Invite", Content = "https://discord.gg/tAYazxvd2w"})
local Paragraph = SocialTab:CreateParagraph({Title = "Instagram", Content = "https://www.instagram.com/xybname/"})
local Paragraph = SocialTab:CreateParagraph({Title = "XybTube", Content = "https://xybtube.yooco.org/home.html"})
local Paragraph = SocialTab:CreateParagraph({Title = "Tiktok", Content = "tiktok.com/@xybname"})

local Section = SocialTab:CreateSection("Close GUI")

local Button = SocialTab:CreateButton({
   Name = "Close GUI",
   Callback = function()
        Rayfield:Destroy()
   end,
})

local FeTab = Window:CreateTab("👀Fe Script", nil) -- Title, Image
local Section = FeTab:CreateSection("Best Fe Script")

local Button = FeTab:CreateButton({
   Name = "Chat Bypasser",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
    Method = 1, -- Method 1 is the main method. Method two is emojis. Method 3 is full transparency, no special symbols. Method 3 has been improved!
    Keybind = "F", -- Usually defaulted to F. You can change this keybind by replacing the string with a letter. Works for uppercase and lowercase.
    ShowMethodDictionary = true -- Shows you the full list of words that you can say with the method. Press FN + F9 to see this dictionary.
})


-- https://discord.gg/RXUwZHjNKm
-- This page will be always updated no matter what.
-- BetterBypasser does not log anything.

-- If you want the new update or the new invis method, please change "Method" to 3
-- Want to see the words for Method 1? Please view the console to do so. We are planning to change this to a UI where it shows you the words instead
   end,
})

local Button = FeTab:CreateButton({
   Name = "Fe Hub Script",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
   end,
})

local Button = FeTab:CreateButton({
   Name = "SyntaxHub (Key:Syntaxbesthub)",
   Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Vallater/SyntaxV2/b7a88a7b84174e3c2220c7a8ca477e40699ddd2c/Syntaxontop'),true))()
   end,
})

local Section = FeTab:CreateSection("COMMING SOON !!")

local ExploitTab = Window:CreateTab("Exploit", nil) -- Title, Image
local Section = ExploitTab:CreateSection("Best Exploit")

local Button = ExploitTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Fly GUI",
   Callback = function()
        --ARCEUS X FLY V2 SCRIPT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
   end,
})

local Section = ExploitTab:CreateSection("Not Best Exploit")

local Section = ExploitTab:CreateSection("COMMING SOON!!")

local HubTab = Window:CreateTab("🏢Hub", nil) -- Title, Image
local Section = HubTab:CreateSection("Best Hub")

local Button = HubTab:CreateButton({
   Name = "COMMING SOON !!",
   Callback = function()
        print("COMMING SOON!!")
   end,
})

local Button = HubTab:CreateButton({
   Name = "EZ Hub",
   Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
   end,
})

local Button = HubTab:CreateButton({
   Name = "IceHub",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
   end,
})

local Button = HubTab:CreateButton({
   Name = "PistolaBollaHub",
   Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KEKYirCb"))(); 
   end,
})

local Button = HubTab:CreateButton({
   Name = "GhostHub",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptRUs/GhostHub/main/GhostHubScript.lua"))()
        
   end,
})

local Section = HubTab:CreateSection("COMMING SOON !!")

local CreditsTab = Window:CreateTab("Credits", nil) -- Title, Image
local Section = CreditsTab:CreateSection("Credits")

local Paragraph = CreditsTab:CreateParagraph({Title = "Coding/Developping", Content = "-XybName"})
local Paragraph = CreditsTab:CreateParagraph({Title = "Lua Script", Content = "-Rayfield"})
local Paragraph = CreditsTab:CreateParagraph({Title = "Some Script", Content "-rbxscript.com"})

local Section = CreditsTab:CreateSection("COMMING SOON !!")