local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Zxin's Hub", "BloodTheme")
 
-- MAIN
local Tab = Window:NewTab("Scripts")
local MainSection = Tab:NewSection("Scripts")
 
 
MainSection:NewButton("CMD-X", "Cool Features", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)
 
MainSection:NewButton("Nameless Admin", "Better Than Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
end)
 
MainSection:NewButton("FE BackFlip", "KeyBind Z And X" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zC9hckXK"))()
end)
 
MainSection:NewButton("Infinite Yield", "Basically Admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 
MainSection:NewToggle("Super-Human", "Go Fast and Jump High", function(state)
	if state then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
end)
 
MainSection:NewButton("FE Emote", "All Emotes Keybind Open Is Comma" , function()
	--keybind to open is comma
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua"))()
end)
 
MainSection:NewButton("Spider Man (R15)", "Walk on Walls" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)
 
MainSection:NewButton("AutoPlayer Piano", "Works in all piano games!" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Madness676/3.2Lol/main/AutoPiano3-2.lua", true))()
end)
 
MainSection:NewButton("Spider Man (R6)", "Walk on Walls With The Suit" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/2X0hKUgq'),true))()
end)
 
MainSection:NewButton("Keyboard", "Mobile Keyboard" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
 
MainSection:NewButton("R15 To R6 (FE)", "Change's animation" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua'),true))()
end)
 
MainSection:NewButton("Chat Bypass FE", "Press F to Toggle or Untoggle" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/AksvXnxV"))()
end)
 
MainSection:NewButton("Dex Explorer", "Access To The File" , function()
	loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
end)
 
MainSection:NewButton("Fps Unlocker", "Makes Your Game Faster" , function()
	setfpscap(999)
end)
 
MainSection:NewButton("SimpleSpy", "Has Remotes!" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/hUSH0zgt"))()
end)
 
MainSection:NewButton("Hydroxide", "Like RemoteSpy" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/SqfkEjyj"))()
end)
 
local Tab = Window:NewTab("Games")
local MainSection = Tab:NewSection("Games")
 
MainSection:NewButton("Bedwars Script", "Kill Aura and More" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)
 
MainSection:NewButton("MM2 Script", "Bring Gun and More" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Doggo-cryto/EclipseMM2/master/Script", true))()
end)
 
MainSection:NewButton("Da Hood Script", "Auto Kill and tons" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/mrhackerman35297/AgentCC/main/Launch.lua"))()
end)
 
MainSection:NewButton("Breaking Point", "Inf Credits" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/H4R7NHacks/Obfuscated/master/Breaking%20Point%20H4R7N%20Hack%20v1.2.lua"))()
end)
 
MainSection:NewButton("Piggy Script", "Teleport Items" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/Piggy'),true))()
end)
MainSection:NewButton("Be A Parkour Ninja Script", "Tons of feature" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Min1273/n-to/main/README.md"))()
end)
 
MainSection:NewButton("Lucky Blocks Battlegrounds", "Alot of Lucky Blocks" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/stillnotgivingafuck/LuckyBlocks/main/loader.lua')))()
end)
 
MainSection:NewButton("Speed Run 4 All Stage", "Completes All Stages" , function()
	while true do
 
		local args = {
			[1] = "Level 1",
			[2] = "Normal",
			[3] = false
		}
 
		game:GetService("ReplicatedStorage"):WaitForChild("BeatLevel"):FireServer(unpack(args))
 
		wait(0)
	end
end)
 
MainSection:NewButton("Giant Survival!", "Inf cash and AutoKill" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0giant", true))()
end)
 
MainSection:NewButton("Destruction Simulator", "Inf Money And Boost" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
 
MainSection:NewButton("Hide and Seek Extreme", "Bring Coins" , function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Hide%20And%20Seek%20Extreme'))()
end)
 
MainSection:NewButton("Brookhaven RP", "Rainbow House And Etc" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
 
MainSection:NewButton("A Wolf Or Other", "Alot Of Feature" , function()
	loadstring(game:HttpGet("https://paste.ee/r/NuSeu", true))()
end)
 
MainSection:NewButton("DH Aimlock", "Basically Aimbot" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XQhuR8sG"))();
end)
 
MainSection:NewButton("IceBreaker Inf Coins", "Click On It For More Coins" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/E2ytQ48s"))();
end)
 
MainSection:NewButton("Tower Of Hell", "TP To The Top and More" , function()
	loadstring(game:HttpGet('https://pastebin.com/raw/BbVHjH56'))()
end)	
 
MainSection:NewButton("Break In (Story)", "AutoKill And Roles" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)
 
MainSection:NewButton("Work At A Pizza Place", "Keybind TAB Open/Close" , function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/bb2f1182a224999682a2d1a87aa8517a/raw/66c7791224be0434b23938ca26244238649d0143/ameicaa", true))()
end)
 
MainSection:NewButton("Funky Friday", "AutoPlay Sick/Good/Ok/Bad" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)
 
MainSection:NewButton("Prison Life Admin", "Has ADMIN!!!" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)
 
MainSection:NewButton("Ultimate Lifting Simulator", "Inf Strength and More!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/YWqChWs9'),true))()
end)
 
MainSection:NewButton("Superhero Simulator", "Inf Coins!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/qmk5ek30'),true))()
end)
 
MainSection:NewButton("Viking Simulator", "Inf Coins and etcs!" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/91x0wWx8", true))()
end)
 
MainSection:NewButton("Adopt Me", "Auto Farm and More!" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
 
MainSection:NewButton("Field Trip Z", "Auto Heal / Heal All" , function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)
 
MainSection:NewButton("The Strongest Battlegrounds", "Auto Farm and More!" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/saitama"))()
end)
 
MainSection:NewButton("The Strongest Battlegrounds (KEY)", "Best Script AutoFarm" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
end)
 
MainSection:NewButton("Bee Swarm Simulator", "Auto Farm and Auto Find!" , function()
	loadstring(game:GetObjects("rbxassetid://4384103988")[0X1].Source)("Pepsi Swarm")
end)
 
MainSection:NewButton("KAT", "Aimbot/Aimlock" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AndrewDarkyy/NOWAY/main/darkyyware.lua"))()
end)
 
MainSection:NewButton("Arsenal", "Aimbot/Aimlock and More" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)
 
MainSection:NewButton("PLS DONATE", "Auto Beg!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/f0a3yune')))()
end)
 
MainSection:NewButton("Muscle Legends", "Autofarm and Etc" , function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends'),true))()
end)
 
MainSection:NewButton("Murders vs Sheriffs", "Kill all" , function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MurderersVsSheriffs.lua"))()loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MurderersVsSheriffs.lua"))()
end)
 
MainSection:NewButton("Zombie Attack", "Autofarm and More!" , function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/f0a3yune')))()
end)
 
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
 
PlayerSection:NewSlider("Walkspeed", "Change's your speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
PlayerSection:NewSlider("Jumppower", "Make's you jump High", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
 
PlayerSection:NewButton("TP Tool", "Click to Teleport" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/GuBiX19e"))();
end)
 
PlayerSection:NewButton("Noclip", "Walk threw Walls" , function()
	loadstring(game:HttpGet("https://pastebin.com/raw/KcZxW1Sp"))();
end)
 
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Discord: Zxin#9433")
local Section = Tab:NewSection("Youtube Channel: @Zxin69420")
 
Section:NewKeybind("Keybind", "Open/Close Menu", Enum.KeyCode.V, function()
	Library:ToggleUI(V)
end)
 