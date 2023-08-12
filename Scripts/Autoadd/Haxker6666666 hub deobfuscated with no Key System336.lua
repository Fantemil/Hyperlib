local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Haxker_6666666 | Hub V2.3", "Ocean")

-- Tabs And Window

local Tab1 = Window:NewTab("Home")
local Tab1Section = Tab1:NewSection("Hello, "..game.Players.LocalPlayer.Name.."!")
local Tab1Section = Tab1:NewSection("Welcome To Haxker_6666666 Hub")
Tab1:NewSection("Click Any Tabs To See Scripts")
Tab1:NewSection("--> Local Player Info <--")
Tab1:NewSection("Username : "..game.Players.LocalPlayer.Name)
Tab1:NewSection("Display Name : "..game.Players.LocalPlayer.DisplayName)
Tab1:NewSection("User Id : "..game.Players.LocalPlayer.UserId)
Tab1:NewSection("Account Age/Days : "..game.Players.LocalPlayer.AccountAge)
Tab1:NewSection("Character Appearance Id : "..game.Players.LocalPlayer.CharacterAppearanceId)

Tab1:NewSection("--> Membership Info <--")

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.Premium then
Tab1:NewSection("Premium : Yes")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.None then
Tab1:NewSection("Premium : No")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.BuildersClub then
Tab1:NewSection("Builders Club : Yes")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.None then
Tab1:NewSection("Builders Club : No")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.TurboBuildersClub then
Tab1:NewSection("Turbo Builders Club : Yes")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.None then
Tab1:NewSection("Turbo Builders Club : No")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
Tab1:NewSection("Outrageous Builders Club : Yes")
end

local Players = game:GetService("Players")

local player = Players.LocalPlayer

if player.MembershipType == Enum.MembershipType.None then
Tab1:NewSection("Outrageous Builders Club : No")
end

Tab1:NewSection("--> Game Info  <--")

local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local Tab1Section = Tab1:NewSection("Game Name : "..GetName.Name)
Tab1:NewSection("Game Id : "..game.PlaceId)
Tab1:NewSection("Job Id : "..game.JobId)
Tab1:NewSection("Max Players : "..game.Players.MaxPlayers)
Tab1:NewSection("--> Device Info  <--")

if table.find({Enum.Platform.Android}, game:GetService("UserInputService"):GetPlatform()) then 
local Tab1Section = Tab1:NewSection("Device : Android")

end

if table.find({Enum.Platform.IOS}, game:GetService("UserInputService"):GetPlatform()) then 
local Tab1Section = Tab1:NewSection("Device : IOS")

end

if table.find({Enum.Platform.Windows}, game:GetService("UserInputService"):GetPlatform()) then 
local Tab1Section = Tab1:NewSection("Device : PC (Windows)")

end

if table.find({Enum.Platform.OSX}, game:GetService("UserInputService"):GetPlatform()) then 
local Tab1Section = Tab1:NewSection("Device : PC (OSX or macOS)")

end

if table.find({Enum.Platform.Linux}, game:GetService("UserInputService"):GetPlatform()) then 
local Tab1Section = Tab1:NewSection("Device : PC (Linux)")

end

if table.find({Enum.Platform.XBoxOne}, game:GetService("UserInputService"):GetPlatform()) then 
local Tab1Section = Tab1:NewSection("Device : Console (X Box One)")

end

local Tab2 = Window:NewTab("Scripts")
local Tab2Section = Tab2:NewSection("Scripts")
local Tab3 = Window:NewTab("Local Player")
local Tab3Section = Tab3:NewSection("Local Player")
local Tab4 = Window:NewTab("FE Sing Scripts")
local Tab4Section = Tab4:NewSection("FE Sing Scripts")
local Tab5 = Window:NewTab("Admin Scripts")
local Tab5Section = Tab5:NewSection("Admin Scripts")
local Tab6 = Window:NewTab("Executor")
local Tab6Section = Tab6:NewSection("Executor")
local Tab7 = Window:NewTab("Games")
local Tab7Section = Tab7:NewSection("Brookhaven 🏠RP")
local Tab8 = Window:NewTab("Updates")
Tab8:NewSection("August 8 Thursday 2023")
local Tab8Section = Tab8:NewSection("+ Added FE Very Very Low Quaility Script")
local Tab8Section = Tab8:NewSection("+ Added Brookhaven🏠RP Trolling Gui")
local Tab8Section = Tab8:NewSection("+ Added FE Random Joke")
local Tab8Section = Tab8:NewSection("+ Added Auto Fram")
local Tab8Section = Tab8:NewSection("+ Added Showcaser That Showcase My Script")
local Tab8Section = Tab8:NewSection("+ Added Walk Fling")
local Tab8Section = Tab8:NewSection("+ Added CMD-X Admin")
local Tab8Section = Tab8:NewSection("+ Added Fates Admin")
local Tab8Section = Tab8:NewSection("Updated Universal Nameless Admin Script")
local Tab8Section = Tab8:NewSection("+ Added Membership Info")
Tab8:NewSection("August 4 Friday 2023")
local Tab8Section = Tab8:NewSection("Updated Detect Your Device")
local Tab8Section = Tab8:NewSection("+ Added Restaurant Tycoon 2 Gui By ZeytreZz")
local Tab8Section = Tab8:NewSection("Updated Realistic Cam")
local Tab8Section = Tab8:NewSection("+ Added Max Players")
local Tab8Section = Tab8:NewSection("+ Added Game Name")
local Tab8Section = Tab8:NewSection("+ Added FE Spiderman Gui")
local Tab8Section = Tab8:NewSection("Updated Full Bright")
local Tab8Section = Tab8:NewSection("+ Added Money Race Gui By Tora IsMe")
local Tab8Section = Tab8:NewSection("+ Added Unlock All Weapons")
local Tab8Section = Tab8:NewSection("Updated FE Remove Animation")
local Tab8Section = Tab8:NewSection("+ Added FE Freeze Character Toggle")
local Tab8Section = Tab8:NewSection("+ Added Exit")
local Tab8Section = Tab8:NewSection("+ Added Fov Slider")
local Tab8Section = Tab8:NewSection("+ Added Jump Power Slider")
local Tab8Section = Tab8:NewSection("+ Added Walk Speed Slider")
local Tab8Section = Tab8:NewSection("+ Added Maxzoom Slider")
local Tab8Section = Tab8:NewSection("+ Added Script Hub Logo")
local Tab8Section = Tab8:NewSection("+ Added FE China Chat")
local Tab8Section = Tab8:NewSection("+ Added Auto Piano Gui")
Tab8:NewSection("July 23 Sunday 2023")
local Tab8Section = Tab8:NewSection("+ Added FE Creepy Chat")
local Tab8Section = Tab8:NewSection("+ Added Coolkid Gui")
local Tab8Section = Tab8:NewSection("+ Added Server Finder")
local Tab8Section = Tab8:NewSection("+ Added Noclip Camera")
local Tab8Section = Tab8:NewSection("+ Added JH HH AI Speed Changer Gui")
local Tab8Section = Tab8:NewSection("+ Added Clone And Hammer Tool")
local Tab8Section = Tab8:NewSection("- Deleted Keyboard 2 Because Patched")
local Tab8Section = Tab8:NewSection("- Deleted Roji Ball Gui Because Patched")
local Tab8Section = Tab8:NewSection("+ Added Poistion Finder In Main Tab")
local Tab8Section = Tab8:NewSection("+ Added Chat Bypasser")
local Tab8Section = Tab8:NewSection("+ Added Sonic")
local Tab8Section = Tab8:NewSection("+ Added JH HH AI Hub")
local Tab8Section = Tab8:NewSection("+ Added JH HH AI Speed Gui")
local Tab8Section = Tab8:NewSection("+ Added Player Info And Game Info")
local Tab8Section = Tab8:NewSection("+ Added FE Remove Animation")
local Tab8Section = Tab8:NewSection("+ Added Script Searcher")
Tab8:NewSection("July 17 Sunday 2023")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("Bug Fixes")
local Tab8Section = Tab8:NewSection("Something Added")
Tab8:NewSection("July 14 Friday 2023")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("Bug Fixes")
local Tab8Section = Tab8:NewSection("Small Update")
Tab8:NewSection("July 10 Monday 2023")
local Tab8Section = Tab8:NewSection("Small Update")
local Tab8Section = Tab8:NewSection("More Scripts")
Tab8:NewSection("July 8 Saturday 2023")
local Tab8Section = Tab8:NewSection("Small Update")
local Tab8Section = Tab8:NewSection("Bug Fixes")
Tab8:NewSection("July 7 Friday 2023")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("In Games Tab We Make More Games")
local Tab8Section = Tab8:NewSection("Small Updates")
Tab8:NewSection("July 5 Wednesday 2023")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("In Games Tab We Make More Games")
Tab8:NewSection("July 3 Monday 2023")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("In Games Tab We Make More Games")
local Tab8Section = Tab8:NewSection("Bug Fixes")
Tab8:NewSection("July 2 Sunday 2023")
local Tab8Section = Tab8:NewSection("In Games Tab We Make More Games")
local Tab8Section = Tab8:NewSection("Key System Update")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("Bug Fixes")
local Tab8Section = Tab8:NewSection("June 31 Friday 2023")
local Tab8Section = Tab8:NewSection("Added New 1 Tabs")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("June 30 Friday 2023")
local Tab8Section = Tab8:NewSection("Added New 2 Tabs")
local Tab8Section = Tab8:NewSection("More Scripts")
local Tab8Section = Tab8:NewSection("Bug Fixes")
local Tab9 = Window:NewTab("Credits")
local Tab9Section = Tab9:NewSection("Made By Haxker_6666666")
local Tab9Section = Tab9:NewSection("Discord User : FreeRobloxScripts1#4496")
local Tab9Section = Tab9:NewSection("Tested By Russiandude_6527")

-- Buttons


Tab2Section:NewButton("All Tycoon Scripts By JN HH Gaming", "Credits To JN HH Gaming", function()
loadstring(game:HttpGet("https://pastebin.com/raw/U9WBdeFe"))()
end)

Tab2Section:NewButton("JH HH AI Speed Gui By JN HH Gaming", "Credits To JN HH Gaming", function()
loadstring(game:HttpGet('https://freenote.biz/raw/j2RfunD8qt'))()
end)

Tab2Section:NewButton("JH HH AI Hub By JN HH Gaming", "Credits To JN HH Gaming", function()
loadstring(game:HttpGet('https://freenote.biz/raw/674tQxta9O'))()
end)

Tab2Section:NewButton("JH HH AI Speed Changer Gui By JN HH Gaming", "Credits To JN HH Gaming", function()
loadstring(game:HttpGet('https://paste.website/p/1be1bf5a-0bfd-4a80-a8ab-594970c23582.txt'))()
end)

Tab2Section:NewButton("FE Swim Script", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/458a8e35-7f87-4c5c-9571-96f2afb624bb.txt'))()
end)

Tab2Section:NewButton("Spectate Player", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/BdxwrbTN'))()
end)

Tab2Section:NewButton("Fly Gui V3", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/eacef361-9662-47ba-94fa-f468d2f22c54.txt'))()
end)

Tab2Section:NewButton("Fly Gui V4", "Fly Gui V4", function()
loadstring(game:HttpGet('https://paste.website/p/2f089d22-3b99-43d4-9428-606c375346ab.txt'))()
end)

Tab2Section:NewButton("FE Anyoning Sound", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/3a74ea02-af12-48ab-8567-50ca4baf721f.txt'))()
end)

Tab2Section:NewButton("Noclip Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/4d114e0c-26be-4f1d-8f42-fddd4e3503ef.txt'))()
end)

Tab2Section:NewButton("Emoji Chat", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/d068fc14-dda8-4c3a-8936-a38787fc093e.txt'))()
end)

Tab2Section:NewButton("FE Fling Gui V2", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/1eceec4b-861b-485f-be53-90e6bd2a92db.txt'))()
end)

Tab2Section:NewButton("Costom Inventory Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/074c5762-3180-4fae-809d-03a195f843d9.txt'))()
end)

Tab2Section:NewButton("Mobile Shiftlock", "Very Useful For Obby Or Fighting Game", function()
loadstring(game:HttpGet('https://paste.website/p/5a6c1347-e5e9-4cd6-837e-a5fcf87610f0.txt'))()
end)

Tab2Section:NewButton("Reset Character Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/d7be4292-6f16-4b51-9220-4081509f7c45.txt'))()
end)

Tab2Section:NewButton("Reset Character", "Reset Character", function() game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

Tab2Section:NewButton("Drop Tool Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/78338b9b-3477-4f17-aa9a-d3d83bf6d801.txt'))()
end)

Tab2Section:NewButton("100 Health Giver", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/5b879eb7-306f-414d-8fad-0ce4f82c327d.txt'))()
end)

Tab2Section:NewButton("Walk Speed Counter", "Now You Can Know You Walk Speed", function()
loadstring(game:HttpGet('https://paste.website/p/366784fd-d7bb-400f-aa62-6a866e48a886.txt'))()
end)

Tab2Section:NewToggle("Sonic", "Sonic", function(state)
    if state then
        game.Workspace.CurrentCamera.FieldOfView = 120

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150

game.Players.LocalPlayer.Character.Humanoid.JumpPower = 70
    else
        game.Workspace.CurrentCamera.FieldOfView = 70

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Tab2Section:NewToggle("Realsitic Cam (Updated)", "Realsitic Cam", function(state)
    if state then
        local Players = game:GetService("Players")

local player = Players.LocalPlayer

player.CameraMode = Enum.CameraMode.LockFirstPerson
    else
        local Players = game:GetService("Players")

local player = Players.LocalPlayer

player.CameraMode = Enum.CameraMode.Classic
    end
end)

Tab2Section:NewToggle("Noclip Camera", "Noclip Camera", function(state)
    if state then
        		SetConstant = (debug and debug.setconstant) or setconstant
		GetConstants = (debug and debug.getconstants) or getconstants
		if SetConstant or GetConstants or getgc then
		local Popper = game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
		for i, v in pairs(getgc()) do
			if type(v) == 'function' and getfenv(v).script == Popper then
				for i, v1 in pairs(GetConstants(v)) do
					if tonumber(v1) == .25 then
						SetConstant(v, i, 0)
					elseif tonumber(v1) == 0 then
						SetConstant(v, i, .25)
					end
				end
			end
		end
		else
			wait()
	 
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Script Hub";
    Text = "Sorry, your exploit does not support cameranoclip";
    Icon = "rbxassetid://14211620372";
    Duration = 5;
})

			end
    else
        		local SetConstant = (debug and debug.setconstant) or setconstant
		local GetConstants = (debug and debug.getconstants) or getconstants
		if SetConstant or GetConstants or getgc then
		local Popper = game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
		for i, v in pairs(getgc()) do
			if type(v) == 'function' and getfenv(v).script == Popper then
				for i, v1 in pairs(GetConstants(v)) do
					if tonumber(v1) == .25 then
						SetConstant(v, i, 0)
					elseif tonumber(v1) == 0 then
						SetConstant(v, i, .25)
					end
				end
			end
		end
		else
			wait()
	 
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Script Hub";
    Text = "Sorry, your exploit does not support uncameranoclip";
    Icon = "rbxassetid://14211620372";
    Duration = 5;
})
			end	
    end
end)

Tab2Section:NewButton("Jump", "Jump", function()
game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end)

Tab2Section:NewToggle("No Gravity", "No Gravity", function(state)
    if state then
        speaker = game.Players.LocalPlayer
 game.Workspace.Gravity = 0
    else
        speaker = game.Players.LocalPlayer
 game.Workspace.Gravity = 200
    end
end)

Tab2Section:NewButton("Poistion Finder", "Poistion Finder", function()
loadstring(game:HttpGet('https://pastebin.com/raw/PgP9RdtG'))()
end)

Tab2Section:NewButton("Server Finder", "Server Finder", function()
loadstring(game:HttpGet('https://paste.website/p/507f91d3-22f0-4c10-bd00-58c0d05d9f53.txt'))()
end)

Tab2Section:NewButton("Chat Hax", "Made By DarkModz", function()
loadstring(game:HttpGet('https://paste.website/p/e321a078-3cd3-43bc-b774-dbd5ae83650a.txt'))()
end)

Tab2Section:NewButton("VFLY Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/81f34392-22e6-46cd-95d1-0f19408aca8c.txt'))()
end)

Tab2Section:NewButton("Rejoin Button When Get Kicked", "This Script Very Useful", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/scripts-2/main/rejoin%20button%20for%20kick%20message.lua", true))()
end)

Tab2Section:NewButton("Kick Yourself", "Kick Yourself", function()
game.Players.LocalPlayer:Kick("Kicking...")
end)

Tab2Section:NewButton("Rejoin", "Rejoin", function()
game.Players.LocalPlayer:Kick("Rejoining...")

game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

Tab2Section:NewButton("Exit", "Close Down Roblox", function()
 game:Shutdown()
end)

Tab2Section:NewButton("Chat Lag", "Good For Trolling", function()
loadstring(game:HttpGet('https://paste.website/p/2a0f2f03-8471-44d1-be61-2956ba507d5d.txt'))()
end)

Tab2Section:NewButton("Anti Chat Lag", "Very Useful Script", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLag.lua'))()
end)

Tab2Section:NewButton("Chat Bypasser", "Chat Bypasser", function()
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
end)

Tab2Section:NewButton("Motion Blur (Must Set Graphics Quality To 6)", "Thanks For AstroCode For The Code", function()
loadstring(game:HttpGet('https://pastebin.com/raw/Bmta30Za'))()
end)

Tab2Section:NewButton("Script Searcher", "Script Searcher", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
end)

Tab2Section:NewButton("Rainbow Chat ( Not FE )", "Makes Your Chat Rainbow", function()
loadstring(game:HttpGet('https://paste.website/p/2c81ba05-d3a2-4140-9e21-85b206a0b092.txt'))()
end)

Tab2Section:NewButton("Admin Abuser Gui", "This Script Only Works In Free Admin", function()
loadstring(game:HttpGet("https://paste.website/p/9d882a87-d3bb-49ed-9458-5adc440fdce3.txt"))()
end)

local Tab2Section = Tab2:NewSection("Hubs")

Tab2Section:NewButton("Ice Hub", "This Script Is Work For All Games", function()
loadstring(game:HttpGet('https://icehub.cf/IceHubLoader'))()
end)

Tab2Section:NewButton("Dreadz Hub", "This Script Is Work For All Games", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DreadzHub2/DreadzHub-Scripts-FR/main/Loader"))()
end)

Tab2Section:NewButton("Bido Skins Hub V1.7", "This Script Is Work For All Games", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BidoSkinsYT/BidoSkinsYT/main/Bido%20Skins%20V1.7"))()
end)

Tab2Section:NewButton("Ez Hub", "This Script Is Work For All Games", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua"))()
end)

Tab2Section:NewButton("Gigachad Hub V3.5", "This Script Is Work For All Games", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/OWJBWKQLAISH/GigaChad-Hub/main/Version%20V3.5'))()
end)

Tab2Section:NewButton("Auratus X Hub", "This Script Is Work For All Games", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMrQuacks/AuratusX/master/Load"))()
end)

Tab2Section:NewButton("British Hub v9.5", "This Script Is Work For All Games", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RedCoat8102/Britishhub/main/Protected_5528274969578405.lua.txt"))()
end)

local Tab2Section = Tab2:NewSection("Keyboards")

Tab2Section:NewButton("Keyboard", "Keyboard", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

local Tab2Section = Tab2:NewSection("FE Scripts")

Tab2Section:NewButton("FE Bird ( Needs Shoulder )", "You Need Shoulder To Make This Script Works", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/OfficialKenfy/Bird/main/bird.r"))()
end)

Tab2Section:NewButton("FE Emote Gui", "You Dont Need Robux For Emote", function()
loadstring(game:HttpGetAsync("https://gist.githubusercontent.com/RedZenXYZ/3da6af1961efa275de6c3c2a6dbace03/raw/bb027f99cec0ea48ef9c5eabfb9116ddff20633d/FE%2520Emotes%2520Gui"))()
end)

Tab2Section:NewButton("FE Animation Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/d542725e-4e62-4a67-a6dc-02f5a2599e4a.txt'))()
end)

Tab2Section:NewButton("FE Spiderman Gui (Keybind Is C)", "This Script FE But The Shirt Is Not FE", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/2X0hKUgq'),true))()
end)

Tab2Section:NewToggle("FE Remove Animaton (Dont Walk Or Jump)", "FE Remove Animaton", function(state)
    if state then
game.Players.LocalPlayer.Character.Animate.Disabled = true
    else
game.Players.LocalPlayer.Character.Animate.Disabled = false
    end
end)

Tab2Section:NewToggle("FE Freeze Character", "FE Freeze Character", function(state)
    if state then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
end)

Tab2Section:NewButton("FE Upside down", "Op Script", function()
loadstring(game:HttpGet('https://paste.website/p/ca98574e-2aa9-4423-983d-84585c609f41.txt'))()
end)

Tab2Section:NewButton("FE Lag Switch", "Made By X", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/Protected%20-%202023-05-28T225112.055.lua.txt'),true))()
end)

Tab2Section:NewToggle("FE Fake Lag", "Made By Me (Haxker_6666666)", function(state)
    if state then
        FakeLag = true
 
 repeat wait()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	 wait(0.05)
	  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	  wait(0.05)
 until FakeLag == false
    else
        FakeLag = false
    end
end)

Tab2Section:NewButton("FE Copy Chat From Message", "Copy Chat From Message", function()
local Action = game.Players:GetPlayers()
  for i = 1,#Action do
Action[i].Chatted:connect(function(Message)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".."".." "..Message, "All")
  end)
end
end)

Tab2Section:NewButton("FE Message On Damage", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BidoSkinsYT/BidoSkinsYT/main/Fe%20message%20on%20damage'))()
end)

Tab2Section:NewButton("FE Stream Sniper", "FE Stream Sniper", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/Miscellaneous/main/StreamSniper.lua"))()
end)

Tab2Section:NewButton("FE Reverse Script", "Good For Trolling", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/L"))()
end)

Tab2Section:NewButton("FE Cctv Camera", "Very Useful In Hide And Seek Games", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/CCTV Camera'))()
end)

Tab2Section:NewButton("FE Har Orbit (Needs 3 Or 9 Hats)", "This Script Needs 3 Or 9 Hats", function()
loadstring(game:HttpGet('https://pastebin.com/raw/BsJ4xfXu'))()
end)

Tab2Section:NewButton("FE Ferris Wheel (Needs 3 Or 9 Hats)", "You Need 3 Or 9 Hats To Make This Script Works", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_8u7A6D92KJWJXgB4btM3lJNPDy2mCi61S191KbGF2EfX9621qbXQg0tBivwEi0Kr.lua.txt'),true))()
end)

Tab2Section:NewButton("FE Fish ( Needs Hat )", "You Need Hat To Make This Script Works", function()
loadstring(game:HttpGet(('https://paste.website/p/f89f593e-6942-4393-bdc9-d853d5d26881.txt'),true))()
end)

Tab2Section:NewButton("FE Jetpack ( Needs 2 Hats)", "You Needs 2 Hats For This Script Works", function()
loadstring(game:HttpGet("https://paste.website/p/89c35fa7-ef54-42cb-86c2-23d986382ae4.txt"))()
end)

Tab2Section:NewButton("FE Hoverboard ( Needs 1 Hats And 2 Glasses )", "You Need Hat And Glasses To Make This Script Works", function()
loadstring(game:GetObjects('rbxassetid://7339698872')[1].Source)()
end)

Tab2Section:NewButton("FE Chat Breaker", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/4323c218-0e8d-4b1d-ba7f-7303b437ca23.txt'))()
end)

Tab2Section:NewButton("FE Random Joke", "Made By Me (Haxker_6666666)", function()
   coroutine.wrap(function()
		 local HttpService = game:GetService('HttpService')
		 local check = "https://official-joke-api.appspot.com/jokes/programming/random"
		 local final1 = game:HttpGet(check)
		 local final = string.gsub(final1, "[%[%]]", "")
		 local decoded = HttpService:JSONDecode(final)
		 
			  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(decoded.setup, 'All')
		 wait(2)
			  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(decoded.punchline, 'All')
   end)()

end)

Tab2Section:NewButton("FE Creepy Chat", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/a2988024-44be-4785-ad56-413c3075e9f0.txt'))()
end)

Tab2Section:NewButton("FE China Chat", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/b6890159-3a34-48d6-84a2-1369c1676aeb.txt'))()
end)

Tab2Section:NewButton("FE Costom Sit Gui", "Made By ImPatrick", function()
loadstring(game:HttpGet(('https://pastefy.app/XKxQtK2K/raw'),true))()
end)

Tab2Section:NewButton("FE Very Very Low Quaility Script", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/WyZxG14C'))()
end)

local Tab2Section = Tab2:NewSection("Not FE Scripts")

Tab2Section:NewButton("1x1x1x1 Gui ( Not FE )", "This Script Only FE If You Use Server Side", function()
loadstring(game:HttpGet('https://paste.website/p/07bb235d-72ae-4c1e-b72b-82f88cf39619.txt'))()
end)

Tab2Section:NewButton("Coolkid Gui ( Not FE )", "This Script So Op But Sadly Is Not FE", function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)

Tab2Section:NewButton("Decal Spam ( Not FE )", "Decal Spam", function()
loadstring(game:HttpGet('https://paste.website/p/c6a68a53-4531-4a6f-855e-138dd5bfb1b8.txt'))()
end)

Tab2Section:NewButton("Particle Spam ( Not FE )", "Particle Spam", function()
loadstring(game:HttpGet('https://paste.website/p/bf2b6c62-809d-4dff-b2aa-d730cebab095.txt'))()
end)

Tab2Section:NewButton("Haxker_6666666 SkyBox ( Not FE )", "Haxker_6666666 SkyBox", function()
s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=14008644414"
s.SkyboxDn = "http://www.roblox.com/asset/?id=14008644414"
s.SkyboxFt = "http://www.roblox.com/asset/?id=14008644414"
s.SkyboxLf = "http://www.roblox.com/asset/?id=14008644414"
s.SkyboxRt = "http://www.roblox.com/asset/?id=14008644414"
s.SkyboxUp = "http://www.roblox.com/asset/?id=14008644414"
s.Parent = game.Lighting
end)

Tab2Section:NewButton("Disco ( Not FE )", "Disco", function()
    while true do
 wait(0.5)
 game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
 game.Lighting.ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
 game.Lighting.ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
 game.Lighting.ShadowColor = Color3.new(math.random(), math.random(), math.random())
 end
end)

Tab2Section:NewButton("Hint ( Not FE )", "Hint", function()
    local H = Instance.new("Hint", game.Workspace)
H.Parent = game.Workspace
H.Text = ("This Game Has Hacked By "..game.Players.LocalPlayer.Name)
end)

Tab2Section:NewButton("Message ( Not FE )", "Message", function()
    local M = Instance.new("Message", game.Workspace)
M.Parent = game.Workspace
M.Text = ("This Game Has Hacked By "..game.Players.LocalPlayer.Name)
		wait(5)
		M:remove()
end)

Tab2Section:NewButton("Block Spawner ( Warning: Lag ) ( Not FE )", "This Script Will Make You Device Lag", function()
loadstring(game:HttpGet("https://paste.website/p/58709f87-45b7-4484-a6f2-a81f3226e824.txt"))()
end)

local Tab2Section = Tab2:NewSection("Players")

Tab2Section:NewButton("Esp Chams", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/2e1606c0-96d9-48ce-8a25-ade84c79dcec.txt'))()
end)

Tab2Section:NewToggle("Esp Chams With Name Title", "Made By Me (Haxker_6666666)", function(state)
    if state then
        loadstring(game:HttpGet('https://paste.website/p/3d499d78-3b08-4160-a42e-2ff83ad01a82.txt'))()

    else
        addedFunc:Disconnect()
 for _, player in ipairs(game.Players:GetPlayers()) do
	 local character = player.Character
	 if character then
		 local highlight = character:FindFirstChild("Highlight")
		 if highlight then
			 highlight:Destroy()
		 end
	 end
 end
 
 game.Players.PlayerAdded:Connect(function(player)
	 player.CharacterAdded:Connect(function(character)
		 local highlight = character:FindFirstChild("Highlight")
		 if highlight then
			 highlight:Destroy()
		 end
	 end)
 end)

 for i,b in pairs(game.CoreGui:GetChildren()) do
if b:IsA("Folder") then
		b:Destroy()
end
 end
    end
end)

Tab2Section:NewButton("Esp (Name)", "Made By Me (Haxker_6666666)", function()
local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p, cr)
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("Head")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true -- Add black outline
    text.OutlineColor = Color3.new(0, 0, 0) -- Black outline color
    text.Font = 3
    text.Size = 25
    text.Color = Color3.fromRGB(0, 0, 255) -- Red color

    local conection
    local conection2
    local conection3

    local function dc()
        text.Visible = false
        text:Remove()
        if conection then
            conection:Disconnect()
            conection = nil
        end
        if conection2 then
            conection2:Disconnect()
            conection2 = nil
        end
        if conection3 then
            conection3:Disconnect()
            conection3 = nil
        end
    end

    conection2 = cr.AncestryChanged:Connect(function(_, parent)
        if not parent then
            dc()
        end
    end)

    conection3 = h.HealthChanged:Connect(function(v)
        if (v <= 0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
            dc()
        end
    end)

    conection = rs.RenderStepped:Connect(function()
        local hrp_pos, hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
        if hrp_onscreen then
            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
            text.Text = "[ " .. p.Name .. " ]"
            text.Visible = true
        else
            text.Visible = false
        end
    end)
end

local function p_added(p)
    if p.Character then
        esp(p, p.Character)
    end
    p.CharacterAdded:Connect(function(cr)
        esp(p, cr)
    end)
end

for i, p in next, ps:GetPlayers() do
    if p ~= lp then
        p_added(p)
    end
end

ps.PlayerAdded:Connect(p_added)
end)

local Tab2Section = Tab2:NewSection("Combat")

Tab2Section:NewButton("Hitbox", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/ad1b5be8-43f7-4fa2-9285-577f64f6eb3f.txt'))()
end)

Tab2Section:NewButton("Aimbot Gui", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/b1cfbafb-f003-4096-ad49-597de4ae3adb.txt'))()
end)

local Tab2Section = Tab2:NewSection("Render")

Tab2Section:NewButton("Night ( Not FE )", "Night", function()
game:GetService("Lighting").ClockTime = "24"
end)

Tab2Section:NewButton("Cool Night ( Not FE )", "Cool Night", function()
game:GetService("Lighting").ClockTime = "19"
end)

Tab2Section:NewButton("Day ( Not FE )", "Day", function()
game:GetService("Lighting").ClockTime = "12"
end)

Tab2Section:NewTextBox("Clock Time", "Changes Clock Times", function(txt)
game:GetService("Lighting").ClockTime = txt
end)

Tab2Section:NewButton("Full Bright (Updated)", "Very Useful In Horror Game", function()
loadstring(game:HttpGet('https://pastebin.com/raw/7S3aQsQF'))()

game:GetService("Lighting").ClockTime = "12"
end)

Tab2Section:NewToggle("Fog On/Off", "Fog", function(state)
    if state then
        game.Lighting.FogEnd = 50 game.Lighting.FogStart = 10 game.Lighting.OutdoorAmbient = Color3.fromRGB(40, 40, 40)
    else
        			 local Lighting = game.Lighting
			 Lighting.FogEnd = 100000
			 for i,v in pairs(Lighting:GetDescendants()) do
				 if v:IsA("Atmosphere") then
					 v:Destroy()
				 end
			 end
    end
end)

local Tab2Section = Tab2:NewSection("Maps")

Tab2Section:NewButton("Rainbow Map", "Makes Map Rainbow", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = math.random()
            local g = math.random()
            local b = math.random()
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait(0.6)
end
end)

Tab2Section:NewButton("Glitch Map", "Makes Map Glitch", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = math.random()
            local g = math.random()
            local b = math.random()
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

Tab2Section:NewButton("Red Map", "Makes Map Red", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = 255
            local g = 0
            local b = 0
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

Tab2Section:NewButton("Green Map", "Makes Map Green", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = 0
            local g = 255
            local b = 0
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

Tab2Section:NewButton("Yellow Map", "Makes Map Yellow", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = 255
            local g = 255
            local b = 0
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

Tab2Section:NewButton("Blue Map", "Makes Map Blue", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = 0
            local g = 0
            local b = 255
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

Tab2Section:NewButton("Cyan Map", "Makes Map Cyan", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = 0
            local g = 255
            local b = 255
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

Tab2Section:NewButton("White Map", "Makes Map White", function()
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = 255
            local g = 255
            local b = 255
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait()
end
end)

local Tab2Section = Tab2:NewSection("Device")

Tab2Section:NewButton("Detect Your Device (Updated)", "Detect Your Device", function()
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Wait 5 Second To Detect Your Device";
    Text = "Detecteding...";
    Icon = "";
    Duration = 5;
})

wait(5.5)

if table.find({Enum.Platform.Android}, game:GetService("UserInputService"):GetPlatform()) then 
		 wait();
		 
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Detected";
    Text = "You Are In Android";
    Icon = "";
    Duration = 5;
})

end

if table.find({Enum.Platform.IOS}, game:GetService("UserInputService"):GetPlatform()) then 
		 wait();
		 
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Detected";
    Text = "You Are In IOS";
    Icon = "";
    Duration = 5;
})

end

if table.find({Enum.Platform.Windows}, game:GetService("UserInputService"):GetPlatform()) then
		 wait();
		 
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Detected";
    Text = "You Are In PC (Windows)";
    Icon = "";
    Duration = 5;
})
end

if table.find({Enum.Platform.OSX}, game:GetService("UserInputService"):GetPlatform()) then
		 wait();
		 
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Detected";
    Text = "You Are In PC (OSX or macOS)";
    Icon = "";
    Duration = 5;
})
end

if table.find({Enum.Platform.Linux}, game:GetService("UserInputService"):GetPlatform()) then
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Detected";
    Text = "You Are In PC (Linux)";
    Icon = "";
    Duration = 5;
})

end

if table.find({Enum.Platform.XBoxOne}, game:GetService("UserInputService"):GetPlatform()) then
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Detected";
    Text = "You Are In Console (X Box One)";
    Icon = "";
    Duration = 5;
})

end
end)

local Tab2Section = Tab2:NewSection("Tool")

Tab2Section:NewButton("Invisible Tool", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/0d536d0c-281b-4f55-8b59-207058616a8c.txt'))()
end)

Tab2Section:NewButton("Click To Teleport Tool", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/XG17QQur'))()
end)

Tab2Section:NewButton("X-ray Tool", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://paste.website/p/129059e1-b1cd-47db-aee3-bdbe2419a813.txt'))()
end)

Tab2Section:NewButton("Telekinesis Tool (Only Works Game With Car)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/Q7GX2Fe5'))()
end)

local Tab2Section = Tab2:NewSection("Not FE Tools")

Tab2Section:NewButton("Btools ( Not FE )", "This Script So Op But Sadly Is Not FE", function()
loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

Tab2Section:NewButton("Clone And Hammer Tool ( Not FE )", "This Script So Op But Sadly Is Not FE", function()
loadstring(game:HttpGet('https://paste.website/p/64d20607-ab58-4241-835d-a91000be0020.txt'))()
end)

Tab3Section:NewButton("Infinite Jump", "Made By Me (Haxker_6666666)", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Tab3Section:NewTextBox("Walk Speed", "Changes Player Walk Speed", function(txt)	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Tab3Section:NewSlider("Walk Speed", "Changes Player Walk Speed", 100, 16, function(v)	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)


Tab3Section:NewTextBox("Jump Power", "Changes Player Jump Power", function(txt)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Tab3Section:NewSlider("Jump Power", "Changes Player Jump Power", 120, 50, function(v)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

Tab3Section:NewTextBox("Gravity", "Changes Player Gravity", function(txt)
	speaker = game.Players.LocalPlayer
 game.Workspace.Gravity = txt
end)

Tab3Section:NewSlider("Gravity", "Changes Player Gravity", 500, 200, function(v)
    	speaker = game.Players.LocalPlayer
 game.Workspace.Gravity = v
end)

Tab3Section:NewTextBox("Fov", "Changes Player Pov", function(txt)
game.Workspace.CurrentCamera.FieldOfView = txt
end)

Tab3Section:NewSlider("Fov", "Changes Player Pov", 80, 120, function(v) game.Workspace.CurrentCamera.FieldOfView = v
end)

Tab3Section:NewTextBox("Maxzoom", "Changes Maxzoom", function(txt)
game.Players.LocalPlayer.CameraMaxZoomDistance = txt
end)

Tab3Section:NewSlider("Maxzoom", "Changes Player Maxzoom", 70, 500, function(v)
game.Players.LocalPlayer.CameraMaxZoomDistance = v
end)

Tab3Section:NewTextBox("Health", "Changes Player Health", function(txt)
game.Players.LocalPlayer.Character.Humanoid.Health = txt
end)

Tab3Section:NewButton("Reset Walk Speed Into Normal", "Reset Walk Speed Into Normal", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Tab3Section:NewButton("Reset Jump Power Into Normal", "Reset Jump Power Into Normal", function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

Tab3Section:NewButton("Reset Health Into Normal", "Reset Health Into Normal", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 100
end)

Tab3Section:NewButton("Reset Gravity Into Normal", "Reset Gravity Into Normal", function()
	speaker = game.Players.LocalPlayer
 game.Workspace.Gravity = 200
end)

Tab3Section:NewButton("Reset Fov Into Normal", "Reset Pov Into Normal", function()
game.Workspace.CurrentCamera.FieldOfView = 70
end)

Tab3Section:NewButton("Reset Maxzoom Into Normal", "Reset Maxzoom Into Normal", function()
game.Players.LocalPlayer.CameraMaxZoomDistance = 100
end)

Tab3Section:NewTextBox("Chat", "Can Chat If Someone Muted You", function(...)
		local A_1 = (...)
	local A_2 = "All"
	if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(A_1)
		else
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(A_1,A_2)
	 end
end)

local Tab3Section = Tab3:NewSection("Anti Fling Script")

Tab3Section:NewButton("FE Anti Fling + Notif", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/SKJyZrrT'))()
end)

local Tab3Section = Tab3:NewSection("Fling Script")

Tab3Section:NewToggle("Walk Fling", "Walk Fling", function(state)
    if state then
	 if game:GetService("ReplicatedStorage"):FindFirstChild("juisdfj0i32i0eidsuf0iok") then
		 hiddenfling = true
	 else
		 hiddenfling = true
		 detection = Instance.new("Decal")
		 detection.Name = "juisdfj0i32i0eidsuf0iok"
		 detection.Parent = game:GetService("ReplicatedStorage")
		 local function fling()
			 local hrp, c, vel, movel = nil, nil, nil, 0.1
			 while true do
				 game:GetService("RunService").Heartbeat:Wait()
				 if hiddenfling then
					 local lp = game.Players.LocalPlayer
					 while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
						 game:GetService("RunService").Heartbeat:Wait()
						 c = lp.Character
						 hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
					 end
					 if hiddenfling then
						 vel = hrp.Velocity
						 hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
						 game:GetService("RunService").RenderStepped:Wait()
						 if c and c.Parent and hrp and hrp.Parent then
							 hrp.Velocity = vel
						 end
						 game:GetService("RunService").Stepped:Wait()
						 if c and c.Parent and hrp and hrp.Parent then
							 hrp.Velocity = vel + Vector3.new(0, movel, 0)
							 movel = movel * -1
						 end
					 end
				 end
			 end
		 end
		 
		 fling()
	 end
    else
		 hiddenfling = false
    end
end)

Tab4Section:NewButton("FE Sing Script (Rick Roll)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/MeQHUXLn'))()
end)

Tab4Section:NewButton("FE Sing Script (Cupid)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/c64Tk9ZD'))()
end)

Tab4Section:NewButton("FE Sing Script (Super Idol)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/hLduNJ7f'))()
end)

Tab4Section:NewButton("FE Sing Script (Myna Mitip)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/Z7KHAn3X'))()
end)

Tab4Section:NewButton("FE Sing Script (Dark Side)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/VctTZ3Xc'))()
end)

Tab4Section:NewButton("FE Sing Script (Waiting For Love)", "Made By Me (Haxker_6666666)", function()
loadstring(game:HttpGet('https://pastebin.com/raw/cCQn8fW1'))()
end)

Tab5Section:NewButton("Infinite Yield", "Op Admin Commands Script", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Tab5Section:NewButton("Universal Nameless Admin (Updated)", "Op Admin Commands Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end)

Tab5Section:NewButton("Raviz Admin", "Op Admin Commands Script", function()
loadstring(game:HttpGet('https://pastebin.com/raw/RqaZUrBZ'))()
end)

Tab5Section:NewButton("Fates Admin", "Op Admin Commands Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)

Tab5Section:NewButton("CMD-X Admin", "Op Admin Commands Script", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', true))()
end)

Tab6Section:NewButton("Synapse X Mobile ( Attach Before Execute )", "Now You Have Synapse X In Mobile", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))()
end)

Tab6Section:NewButton("Krnl Mobile ( Inject Before Execute )", "Now You Have Krnl In Mobile", function()
_G.KEY = '0f0bXkSA84nCSV7ruSCn8iARklACB84b5B38SN7A'
_G.IsThemed = false
_G.MainTitle = 'KRNL'
_G.MainTheme = ''

loadstring(game:HttpGet('https://raw.githubusercontent.com/ASD80D98AS8DX0A9S8MAF8SF8MA089FMFSAFA8F/SA0D8AZ0S89MDZM89AS8D9ZAS908MAFA7SFAHFASG/main/krnl.lua'))()
end)

Tab6Section:NewButton("Neptune Executor", "Neptune Executor", function()
loadstring(game:HttpGet('https://pastebin.com/raw/y3jhxS5r'))()
end)

Tab7Section:NewButton("Unlock All Gamepass", "This Script Only Works In Brookhaven", function()
loadstring(game:HttpGet('https://paste.website/p/a82c266e-3ba8-4348-9c3c-a8ae18f5dede.txt'))()
end)

Tab7Section:NewButton("Brookhaven🏠RP Trolling Gui", "This Script Only Works In Brookhaven", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\99\117\114\97\88\48\52\57\47\111\98\102\117\115\99\97\116\101\100\83\99\114\105\112\116\115\47\109\97\105\110\47\75\105\108\108\71\117\105\34\41\41\40\41\10")()
end)

local Tab7Section = Tab7:NewSection("Natural Disaster")

Tab7Section:NewButton("Natural Disaster Gui By LiverMods", "This Script Only Works In Natural Disaster", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/Rawnder-NTDR/main/NaturalDisaster'))()
end)

Tab7Section:NewButton("Natural Disaster Gui", "This Script Only Works In Natural Disaster", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end)

Tab7Section:NewButton("Auto Fram", "This Script Only Works In Natural Disaster", function()
while true do

wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279.6757507324219, 179.49998474121094, 339.7074279785156)
end
end)

local Tab7Section = Tab7:NewSection("Rainbow Friends Chapter 2")

Tab7Section:NewButton("Rainbow Friends Chapter 2 Gui By Tora IsMe", "This Script Only Works In Rainbow Friends Chapter 2", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0rainbow'))()
end)

local Tab7Section = Tab7:NewSection("Mega Hide And Seek")

Tab7Section:NewButton("Mega Hide And Seek Gui By Tora IsMe", "This Script Only Works In Mega Hide And Seek", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0megahide"))()
end)

local Tab7Section = Tab7:NewSection("Hide And Seek Extreme")

Tab7Section:NewButton("Hide And Seek Extreme Gui By Ghost Player", "This Script Only Works In Hide And Seek Extreme", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Hide%20And%20Seek%20Extreme'))()
end)

local Tab7Section = Tab7:NewSection("Yeet A Friend")

Tab7Section:NewButton("Yeet A Friend Gui By X_LuaF#0705", "This Script Only Works In Yeet A Friend", function()
loadstring(game:HttpGet('https://paste.website/p/f2960480-5fbb-4e9e-80c2-e34b6caba7d7.txt'))()
end)

local Tab7Section = Tab7:NewSection("Arm Wrestle Simulator")

Tab7Section:NewButton("Arm Wrestle Simulator Gui", "This Script Only Works In Arm Wrestle Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Arm-Wrestle-Simulator-Script/main/Arm-Wrestle-Simulator-Script"))()
end)

local Tab7Section = Tab7:NewSection("Bulid A Boat For Treasure")

Tab7Section:NewButton("Bulid A Boat For Treasure Gui", "This Script Only Works In Bulid A Boat For Treasure", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/XRoLLu/UWU/main/BUILD%20A%20BOAT%20FOR%20TREASURE.lua'))()
end)

local Tab7Section = Tab7:NewSection("Skydive Of A Tower")

Tab7Section:NewButton("Skydive Of A Tower Infinite Money", "This Script Only Works In Skydive Of A Tower", function()
loadstring(game:HttpGet('https://paste.website/p/33c3b198-471f-4c0d-98f4-aa3edaeeb0a4.txt'))()
end)

local Tab7Section = Tab7:NewSection("become a server owner to get revenge")

Tab7Section:NewButton("become a server owner to get revenge Gui", "Made By Tora IsMe", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0serverowner"))()
end)

local Tab7Section = Tab7:NewSection("Clone Tycoon 2")

Tab7Section:NewButton("Clone Tycoon 2 Gui", "This Script Only Works In Clone Tycoon 2", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Clone%20Tycoon%202.lua",true))()
end)

local Tab7Section = Tab7:NewSection("Race Simulator")

Tab7Section:NewButton("Race Simulator Gui By Tora IsMe", "This Script Only Works In Race Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0racesim"))()
end)

local Tab7Section = Tab7:NewSection("All No Jumping Obby")

Tab7Section:NewButton("Enable Jump", "Makes You Jump In The Game", function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local Tab7Section = Tab7:NewSection("Boxing Friend Simulator")

Tab7Section:NewButton("Boxing Friend Simulator Gui By Tora IsMe", "This Script Only Works In Boxing Friend Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Boxing"))()
end)

local Tab7Section = Tab7:NewSection("Punch A Skibi")

Tab7Section:NewButton("Punch A Skibi Gui By Tora IsMe", "This Script Only Works In Punch A Skibi", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0skibi"))()
end)

local Tab7Section = Tab7:NewSection("Sword Warriors")

Tab7Section:NewButton("Sword Warriors Gui By Tora IsMe", "This Script Only Works In Bulid A Boat For Treasure", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0swordwarrior"))()
end)

local Tab7Section = Tab7:NewSection("Secret Neighbor")

Tab7Section:NewButton("Infinite Coins And Coupons", "This Script Only Works In Secret Neighbor", function()
loadstring(game:HttpGet('https://paste.website/p/65c951c8-112a-4c87-82cd-be5f6e503f47.txt'))()
end)

Tab7Section:NewButton("Secret Neighbor Gui By Tora IsMe", "This Script Only Works In Secret Neighbor", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0secret"))()
end)

local Tab7Section = Tab7:NewSection("Shoot Wall Simulator")

Tab7Section:NewButton("Shoot Wall Simulator Gui By Tora IsMe", "This Script Only Works In Shoot Wall Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0shootwall"))()
end)

local Tab7Section = Tab7:NewSection("Hoop Simulator")

Tab7Section:NewButton("Hoop Simulator Gui By Tora IsMe", "This Script Only Works In Hoop Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0hoop"))()
end)

local Tab7Section = Tab7:NewSection("Fireball Punching Simulator")

Tab7Section:NewButton("Fireball Punching Simulator Gui", "By Tora IsMe", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Fireball"))()
end)

local Tab7Section = Tab7:NewSection("Escape Papa Pizza’s Pizzeria!")

Tab7Section:NewButton("Unlock All Gamepass Item", "This Script Only Works In Escape Papa Pizza’s Pizzeria!", function()
for _,v in pairs(game:GetDescendants()) do
if v.ClassName == "RemoteEvent" then
if v.Parent.Name == "WeaponsRemotes" or v.Parent.Name == "VipRemotes" or v.Parent.Name == "Remotes" then
v:FireServer()
end
end
end
end)

local Tab7Section = Tab7:NewSection("Zombie Wars Tycoon")

Tab7Section:NewButton("Zombie Wars Tycoon Gui By Tora IsMe", "This Script Only Works In Zombie Wars Tycoon", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0zombiewars"))()
end)

local Tab7Section = Tab7:NewSection("Super Bridge Runner")

Tab7Section:NewButton("Super Bridge Runner Gui By Tora IsMe", "This Script Only Works In Super Bridge Runner", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0superbridge"))()
end)

local Tab7Section = Tab7:NewSection("+1 Speed Race")

Tab7Section:NewButton("+1 Speed Race Gui By Tora IsMe", "This Script Only Works In +1 Speed Race", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/%2B1speedrace"))()
end)

local Tab7Section = Tab7:NewSection("Rocket Simulator")

Tab7Section:NewButton("Rocket Simulator Gui By Tora IsMe", "This Script Only Works In Rocket Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0rocket"))()
end)

local Tab7Section = Tab7:NewSection("Fishing Frenzy Simulator")

Tab7Section:NewButton("Fishing Frenzy Simulator Gui By Tora IsMe", "This Script Only Work In Fishing Frenzy Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0fishing"))()
end)

local Tab7Section = Tab7:NewSection("Poop In The Hood Tycoon")

Tab7Section:NewButton("Poop In The Hood Tycoon Gui By Tora IsMe", "This Script Only Works In Poop In The Hood Tycoon", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0poop"))()
end)

local Tab7Section = Tab7:NewSection("Dragon Race")

Tab7Section:NewButton("Dragon Race Gui By Tora IsMe", "This Script Only Works In Dragon Race", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/alialii404/DragonRace/main/Tora", true))()
end)

local Tab7Section = Tab7:NewSection("Wall Mining Simulator")

Tab7Section:NewButton("Wall Mining Simulator Gui", "This Script Only Works In Wall Mining Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0wallmining"))()
end)

local Tab7Section = Tab7:NewSection("Coal Miner Tycoon 2")

Tab7Section:NewButton("Coal Miner Tycoon 2 Gui", "By Tora IsMe", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0coal", true))()
end)

local Tab7Section = Tab7:NewSection("Throw Balls at People")

Tab7Section:NewButton("Throw Balls at People Gui", "By Tora Is Me", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0throwballs"))()
end)

local Tab7Section = Tab7:NewSection("🧱 Block Race")

Tab7Section:NewButton("🧱 Block Race Gui By Tora IsMe", "This Script Only Works In 🧱 Block Race", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0blockrace"))()
end)

local Tab7Section = Tab7:NewSection("Knife Clicker Simulator")

Tab7Section:NewButton("Knife Clicker Simulator Gui By Tora IsMe", "This Script Only Works In Knife Clicker Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0knife"))()
end)

local Tab7Section = Tab7:NewSection("Hammer Smashing Simulator")

Tab7Section:NewButton("Hammer Smashing Sim Gui", "By Tora IsMe", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0hammer"))()
end)

local Tab7Section = Tab7:NewSection("Block Mine Simulator")

Tab7Section:NewButton("Block Mine Simulator Gui By Tora IsMe", "This Script Only Works In Block Mine Simulator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0blockminesim", true))()
end)

local Tab7Section = Tab7:NewSection("FEEDING TRASH TO RICH PEOPLE TYCOON")

Tab7Section:NewButton("FEEDING TRASH TO RICH PEOPLE TYCOON", "Made By Tora IsMe", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0feeding", true))()
end)

local Tab7Section = Tab7:NewSection("Mining Factory Tycoon")

Tab7Section:NewButton("Mining Factory Tycoon Gui By Tora IsMe", "This Script Only Works In Mining Factory Tycoon", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0mining", true))()
end)

local Tab7Section = Tab7:NewSection("Murder Mystery 2")

Tab7Section:NewButton("Esp All Player", "This Script Only Works In Murder Mystery 2", function()
loadstring(game:HttpGet('https://paste.website/p/c658815a-5db4-4ee1-9f50-b3906939fbab.txt'))()
end)

Tab7Section:NewButton("Unlock All Weapons", "This Script Only Works In Murder Mystery 2", function()
---------------------------------------------------------------------------------------

-- You can edit min and max, if you want more of each set max higher
local WeaponOwnRange = {
min=1,
max=5
}

local DataBase, PlayerData = getrenv()._G.Database, getrenv()._G.PlayerData

local newOwned = {}

for i,v in next, DataBase.Item do
newOwned[i] = math.random(WeaponOwnRange.min, WeaponOwnRange.max) -- newOwned[Weapon]: ItemCount
end

local PlayerWeapons = PlayerData.Weapons

game:GetService("RunService"):BindToRenderStep("InventoryUpdate", 0, function()
PlayerWeapons.Owned = newOwned
end)

game.Players.LocalPlayer.Character.Humanoid.Health = 0

--------------------------------------------------------------------------------
end)

local Tab7Section = Tab7:NewSection("Fencing")

Tab7Section:NewButton("Fencing Gui", "This Script Only Works In Fencing", function()
loadstring(game:HttpGet('https://paste.website/p/14bed3f9-0c07-4547-913c-677a47f90847.txt'))()
end)

local Tab7Section = Tab7:NewSection("Tower Of Jump")

Tab7Section:NewButton("Teleport To Top", "This Script Only Works In Tower Of Jump", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32.7096672, 219.231033, 141.980164, -0.99984777, 6.68668121e-10, -0.0174477585, 2.91435986e-09, 1, -1.2868405e-07, 0.0174477585, -1.287153e-07, -0.99984777)
end)

local Tab7Section = Tab7:NewSection("Work At A Pizza Place")

Tab7Section:NewButton("Work At A Pizza Place Gui", "This Script Only Works In Work At A Pizza Place", function()
loadstring(game:HttpGet('https://paste.website/p/59c7d946-8104-40f3-88a2-f3a4e7a94b8c.txt'))()
end)

local Tab7Section = Tab7:NewSection("All Piano Games")

Tab7Section:NewButton("Auto Piano Gui", "Idk Who Made This", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Madness676/3.2Lol/main/AutoPiano3-2.lua", true))()
end)

local Tab7Section = Tab7:NewSection("Money Race")

Tab7Section:NewButton("Money Race Gui By Tora IsMe", "This Script Only Works In Money Race", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0MoneyRace"))()
end)

local Tab7Section = Tab7:NewSection("Restaurant Tycoon 2")

Tab7Section:NewButton("Restaurant Tycoon 2 Gui By ZeytreZz", "This Script Only Works In Money Race", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeytreZzz/ZeytreZz/main/Restaurant%20Tycoon%202"))()
end)

local Tab7Section = Tab7:NewSection("All Games Coming Soon")

Tab9Section:NewButton("Copy My Roblox User Link", "Please Follow Me", function()
setclipboard("https://www.roblox.com/users/4646960607/profile")
end)

Tab9Section:NewButton("Copy My Pastebin Link", "Please Like My Pastebin", function()
setclipboard("https://pastebin.com/u/FreeRobloxScripts1")
end)

Tab9Section:NewButton("Copy My Scriptblox Link", "Please Follow And Like My Scriptblox", function()
setclipboard("https://scriptblox.com/u/FreeRobloxScripts1")
end)

Tab9Section:NewButton("Copy My YouTube Link", "Please Sub And Like My Channel", function()
setclipboard("https://youtube.com/@BidoSkinsFan")
end)

Tab9Section:NewButton("Copy My Discord User Link", "My Discord Link", function()
setclipboard("https://discordapp.com/users/1123273096779006103")
end)

Tab9Section:NewButton("Copy Bido Skins YouTube Channel", "Sub Bido Skins And Like", function()
setclipboard("https://youtube.com/@bidoskins6908")
end)

Tab9Section:NewButton("Copy JN HH Gaming YouTube Channel", "Sub JN HH Gaming And Like", function()
setclipboard("https://youtube.com/@JNHHGaming")
end)

Tab9Section:NewButton("Copy Abrahamvideogames YouTube Channel", "Sub Abrahamvideogames And Like", function()
setclipboard("https://youtube.com/@Abrahamvideogames")
end)

Tab9Section:NewTextBox("Feedback", "Feedback", function(txt)
	game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Hey "..game.Players.LocalPlayer.Name.."!";
    Text = "Thanks For The Feedback We Will Respond Soon";
    Icon = "";
    Duration = 10;
    Button1 = "Ok";
})
end)

local Tab9Section = Tab9:NewSection("Showcaser That Showcase My Script")

local Tab9Section = Tab9:NewSection("1. Bido Skins")

local Tab9Section = Tab9:NewSection("2. Abrahamvideogames")

local Tab9Section = Tab9:NewSection("3. ???")

local Tab9Section = Tab9:NewSection("4. ???")

local Tab9Section = Tab9:NewSection("5. ???")

Tab9Section:NewButton("DO NOT CLICK THIS", "DO NOT CLICK THIS", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitzoon/Rogue-Hub/main/Main.lua", true))()
end)