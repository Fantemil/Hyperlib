local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Vanisy X", "Serpent")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Hub")
Section:NewButton("Dark Dex", "Open Dex", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/loglizzy/dexV4/main/main.lua'))()
end)
Section:NewButton("Proxima Hub", "Opens Proxima Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
Section:NewButton("Weinz Hub", "Opens Weinz Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/weiny-ez/w-main/main/loader.lua'))()
end)
Section:NewButton("Xenom Hub", "Opens Xenom Hub", function()
    _G.theme = "Dark"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Enxquity/bad-script-yes/main/the%20best%20script%20ever", true))()
end)
Section:NewButton("Btools", "Give Btools", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)
Section:NewButton("Snow Hub", "Open Snow Hub", function()
    loadstring(game:HttpGet("https://snowhub.dev/script.lua", true))()
end)
Section:NewButton("Narwhal Hub", "Opens Narwhal Hub", function()
    loadstring(game:HttpGet("http://narwhalhacks.xyz/NarwhalHub/Main.lua", true))()
end)
Section:NewButton("Hyperium Hub", "Opens Hyperium Hub", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MrJgYLCf"))()
end)













local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Player")
Section:NewSlider("WalkSpeed", "increase your speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("JumpPower", "increase the jump", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
















local Tab = Window:NewTab("Normal Scripts")
local Section = Tab:NewSection("Kill")
Section:NewButton("Kill Aura", "Don't click too often or you will be banned.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Kill%20All'))()
end)
Section:NewButton("Bring All", "Don't click the tp you button too many times or you will get banned.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Bring%20All'))()
end)
Section:NewButton("Chat Bypass", "Chat Bypass", function()
    loadstring(game:HttpGet("https://the-shed.xyz/roblox/scripts/ChatBypass", true))()
end)
Section:NewButton("Jetpack", "Jet", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/PYXDYT/FE-JET/main/V1'))()
end)