
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Maikderninja/Maikderninja/main/Test.lua"))();
local colors = {
    SchemeColor = Color3.fromRGB(100,0,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Window = Library.CreateLib("khub V8 * By Maxlovescats4341", colors)
local themes = {
    "SchemeColor",
    "Background",
    "Header",
    "TextColor",
    "ElementColor"
}

local ToggleGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

local ToggleGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ToggleGui.Name = "ToggleGui_HE"
ToggleGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ToggleGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.427710831, 0)
Toggle.Size = UDim2.new(0, 85, 0, 39)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "KHUB V8"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextSize = 20.000
Toggle.TextWrapped = true
Toggle.Active = true
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)

UICorner.Parent = Toggle

--

local Tab = Window:NewTab("Gui Color")
local Section = Tab:NewSection("Gui Color")

 local Section = Tab:NewSection("ColorPickers UI Color Changer")
for _, theme in ipairs(themes) do
    Section:NewColorPicker(theme, "Change your " .. theme, colors[theme], function(color)
        colors[theme] = color
    end)
end

--

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")

Section:NewButton("Fly gui v3", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

Section:NewSlider("Walkspeed", "SliderInfo", 1000, 0, function(s) -- 1000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "SliderInfo", 1000, 0, function(s) -- 1000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

--

local Tab = Window:NewTab("Local Player")
local Section = Tab:NewSection("Local Player")

Section:NewTextBox("Set WalkSpeed", "Info", function(txt)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewTextBox("Set JumpPower", "Info", function(txt)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Section:NewButton("Reset Walkspeed", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section:NewButton("Reset Jumpower", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

--

local Tab = Window:NewTab("Scripts")
local Section = Tab:NewSection("Scripts")

Section:NewButton("Ghub v11 credits ghacks", "ButtonInfo", function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/GHUBUIV11/main/GHUBV11S.txt"))()
end)

Section:NewButton("animation gui", "ButtonInfo", function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/G-animation-/main/ANIMATIONCHANGER.txt"))()
end)

Section:NewButton("Ghost Hub", "ButtonInfo", function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

Section:NewButton("Chat Bypasser", "ButtonInfo", function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/ChatBypasser-AZY/main/Chat%20Bypass%20-%20ChatSplitter(Source).lua"))()
end)

Section:NewButton("Chat Hax Troll", "ButtonInfo", function()
           loadstring(game:HttpGet('https://pastebin.com/raw/MBpnp3yS'))()
end)

Section:NewButton("FE Trolling Gui", "ButtonInfo", function()
           loadstring(game:HttpGet(('https://pastefy.app/ic5m4aJG/raw'),true))()
end)

Section:NewButton("Khub by kimpkidd", "ButtonInfo", function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/KHUBPROTECTED-/main/KHUBVX.txt"))()
end)

Section:NewButton("fluxus coral remake", "ButtonInfo", function()
           loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fluxus-Coral-ReMake-Beta-by-AnyaDev-8562"))()
end)

Section:NewButton("fling all", "ButtonInfo", function()
          loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fling-Everyone-in-the-server-9368"))()
end)

Section:NewButton("fly gui v3 (UPDATED)", "ButtonInfo", function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-I-Fly-gui-V3-I-6627"))()
end)

Section:NewButton("kick gui credits to ghacks", "ButtonInfo", function()
          loadstring(game:HttpGet(('https://pastebin.com/raw/B0gRJ2RS')))()
end)

Section:NewButton("perm tp tool", "ButtonInfo", function()
          loadstring(game:HttpGet("https://pastefy.app/IpjIW7ZH/raw"))()
end)

Section:NewButton("anti obby fall", "ButtonInfo", function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/AntiFall/main/Script"))()
end)

local Section = Tab:NewSection("Not sure if Fe")

Section:NewButton("Btools", "ButtonInfo", function()
          loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Btools-9477"))()
end)

Section:NewButton("Lightsaber", "ButtonInfo", function()
          loadstring(game:HttpGet("https://pastebin.com/raw/KdVq9EHW", true))()
end)
         
--

local Tab = Window:NewTab("Hubs/Guis")
local Section = Tab:NewSection("Hubs/Guis")

Section:NewButton("c00lkidd 2 hub", "ButtonInfo", function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ckid", true))()
end)

Section:NewButton("moon hub v10", "ButtonInfo", function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10'))()
end)

Section:NewButton("chiezzy hub", "ButtonInfo", function()
          loadstring(game:HttpGet("https://pastebin.com/raw/zAuR0JUT"))() 
end)

Section:NewButton("Game Hub V4", "ButtonInfo", function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader"))()
end)

Section:NewButton("c00lgui FE", "ButtonInfo", function()
          loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)

Section:NewButton("1x1x1x1 gui FE credits to its_sword", "ButtonInfo", function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/1x1/main/1x1x1x1'))()
end)

Section:NewButton("bedol hub (blade ball)", "ButtonInfo", function()
          loadstring(game:HttpGet("https://scriptblox.com/raw/Blade-Ball-Bedol-hub-old-beta-upload-again-9196"))()
end)

Section:NewButton("Multi Scripter X", "ButtonInfo", function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
end)

Section:NewButton("ghub v6", "ButtonInfo", function()
          loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\90\100\86\72\102\122\85\34\41\41\40\41\10")()
end)

Section:NewButton("astrolynx hub v0.4", "ButtonInfo", function()
          loadstring(game:HttpGet("https://freenote.biz/raw/vBfN3NeVYN", true))()
end)

Section:NewButton("Haxker666 Hub", "ButtonInfo", function()
         loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Haxker6666666-Hub-Keyless-Version-7052"))()
end)

Section:NewButton("c00lgui Reborn Rc7", "ButtonInfo", function()
         loadstring(game:HttpGet("https://scriptblox.com/raw/Client-Replication-Fe-c00lgui-in-9453"))()
end)

--

local Tab = Window:NewTab("Games")
local Section = Tab:NewSection("Games")

Section:NewButton("Prison Life", "ButtonInfo", function()
          loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
end)

Section:NewButton("BrookHaven", "ButtonInfo", function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

Section:NewButton("Slap Battles", "ButtonInfo", function()
          loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
end)

Section:NewButton("Tower of hell", "ButtonInfo", function()
         loadstring(game:HttpGet("https://scriptblox.com/raw/Tower-of-Hell-Hax-5597"))()
end)

Section:NewButton("Skibidi toilet tower defense", "ButtonInfo", function()
         loadstring(game:HttpGet("https://scriptblox.com/raw/EP-67-3!-Skibidi-Toilet-Tower-Defense-FIRST-SCRIPT-V4-9363"))()
end)

--

local Tab = Window:NewTab("admin scripts")
local Section = Tab:NewSection("admin scripts")

Section:NewButton("infinite yield", "ButtonInfo", function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section:NewButton("nameless admin", "ButtonInfo", function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end)

Section:NewButton("orca admin", "ButtonInfo", function()
           loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Orca-7620"))()
end)

--

local Tab = Window:NewTab("Executors")
local Section = Tab:NewSection("Executors")

Section:NewButton("Arceus X", "ButtonInfo", function()
         loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Arceus-X-Script-Credit-to-AnyaDev-WORKS-WITH-ALL-SCRIPTS-8561"))()
end) 

Section:NewButton("Fluxus Coral", "ButtonInfo", function()
           loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fluxus-Coral-ReMake-Beta-by-AnyaDev-8562"))()        
end)

Section:NewButton("Rc7", "ButtonInfo", function()
           loadstring(game:HttpGet("https://gist.githubusercontent.com/jointeamck/40a11b97bfb6881a72dba218cce85e2a/raw/02ca8af7ef7904182abd4208064d9a22df0010b5/rc7"))()
end)

Section:NewButton("Project Stigma", "ButtonInfo", function()
           loadstring(game:HttpGet("https://pastebin.com/raw/mG8XGpmD", true))()
end)

--

local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")

local Section = Tab:NewSection("PLS SUBSCRIBE TO MY CHANNEL")
Section:NewButton("MaxLovesScripting", "please sub", function()
   setclipboard("https://m.youtube.com/@MaxLovesScripting")
   end)
   
local Section = Tab:NewSection("TOGGLE UI: BY GHACKS SCRIPT")
local Section = Tab:NewSection("SUBSCRIBE TO GHACKS SCRIPT")

Section:NewButton("GHACKS SCRIPT", "PLS SUBSCRIBE", function()
   setclipboard("https://youtube.com/@Ghacks_script")
end)