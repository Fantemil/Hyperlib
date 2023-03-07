local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ranveer Scripts", "Midnight")

--Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main Scripts")


MainSection:NewButton("Infinity Yield", "Free Admin Commands In Every Game!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)


MainSection:NewButton("Doors Script OP", "Executes a Doors Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)

MainSection:NewButton("Da Hood", "The Best Da Hood Script You Can Find!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/grekkk/relases/main/zapped.lua'))()
end)

MainSection:NewButton("Owl Hub", "Basically Owl Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

MainSection:NewButton("Dark Hub", "Dark Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)

MainSection:NewButton("Blox Fruit Script OP", "OP AUTOFARM FOR BLOXFRUITS!!!1", function()
    loadstring(game:HttpGet("https://rasputin-bf.glitch.me/bloxfruits.lua"))()
end)

MainSection:NewButton("Jail Break Script", "Executes Jail Break Scrip aka IceTray3", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/piglex9/icetray3/main/latest.lua"))()
end)

MainSection:NewButton("J0hn D0e Scr1pt", "iÌ¸ÍÌÍÌÌÍÍÌÌ¡Ì  Ì¸ÍÍ ÍÍÍÍ ÍÍÌÌÌÍÌÍÍÌÌ ÌaÌ·ÍÌÌÌ»Ì¦ÌºÍmÌµÌÌÍÌÍ ÌÌÌÌÌ±Ì¥ ÌµÌÌÍ ÌÍÌÍÌÌÍÌÍÌÍÍÍÍÌÌºÍÍwÌ¶ÍÌÌÌÌ¿ÍÌÍÌÍÌ²ÍÌ¤ÍaÌ·ÌÍÌÍ ÍÌÍÌÌ¥Ì§tÌ·ÌÌÌÌ­ÌÌÍÌ±Ì¦ÌÍÍÍÌ Ì²Ì³cÌµÌÌÌÍÍÌ¾ÌÌÌÌÍhÌ´Ì¿ÍÍÌÌ¾ÌÌÌÍÌÌÍ Ì¾ÍÌ©ÌÌ£ÍÍÍÌ®ÍÍÍiÌ¶Ì¿ÍÌÌÌÌÍÌ¨ÌÌÍnÌ¸ÍÌÍÍÌÌÌÌ½ÍÍÍÌÍÌÍÌªgÌ¶ÍÌ§Ì¡Í Ì¶ÍÌÍÍÍÌÌÌÍÌÍÌÌÍyÌ¸ÌÍÍÌÍÍÍÌÌÌ«ÍÌÌÌ¹Ì«Ì«ÌoÌ¶ÍÌÍÍÍÌÌÍÌÍÌÌ¬Ì§ÍÌ«ÍÌ ÌÌ«Ì¤ÍÌÍÌ²uÌ·ÍÌÍÌÍÌ¥ÍÍÌÌ Í!ÌµÌÍÍÌ¤ÍÌÍ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xZ81CqDV"))()
end)

MainSection:NewButton("Randomizer Script", "randomizer aimbot goes brr", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/toidqwe/Roblox/main/randomizerscriptroblox", true))()
end)

MainSection:NewButton("Dark Hub Keyless", "dosent work 100%!", function()
    SupportedGames=game:GetService('HttpService'):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/SupportedGames'));
for _,v in pairs(SupportedGames)do
    if game.PlaceId==tonumber(v)then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/'.._))()
    end;
end;
end)

MainSection:NewButton("Doors Script 2", "better script for doors", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5RVEpxZN", true))()
end)

--Player Mods
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player Modifications")

PlayerSection:NewSlider("Player Speed", "Modify Ur Player Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Player Jump Height", "Modify Ur Player Jump Height", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)