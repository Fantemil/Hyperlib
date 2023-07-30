-- execute webhook
local username = game:GetService("Players").LocalPlayer.Name
local executor = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or fluxus and "Fluxus" or KRNL_LOADED and "Krnl or Comet" or "Free or unkown executor"
local HttpService = game:GetService("HttpService")
local webhook_url = "https://discord.com/api/webhooks/1090884811964563466/Tg8xWAahhw8gs0o68KXc4EXQd7dCHJUa_ug8O9bFcxgTsltH2mFj-Zm73BY0DhDmitC3"
local options = http_request or syn.request or fluxus.request
function sendMessage(msg)
   local payload = {
       ["content"] = msg
   }
   local headers = {
           ["content-type"] = "application/json"
   }
   
   local request_body_encoded = HttpService:JSONEncode(payload)
   local request_payload = {Url=webhook_url, Body=request_body_encoded, Method="POST", Headers=headers}
   options(request_payload)
end

sendMessage("ðŸ”´ WERTYSCRIPT EXECUTE ðŸ”´ `INFO: {Beta 2.2} / USER: " ..username .. " / EXECUTOR: " ..executor .. " ` <@&1090849548018126908> ")
print("ðŸ”´ WERTYSCRIPT EXECUTE ðŸ”´ INFO: {Beta 2.2} / USER: " ..username .. " / EXECUTOR: " ..executor .. " ")
-- discord
local discoinvite11 = "https://discord.gg/9CxyDbaJK9"
if isfile and writefile and typeof(isfile) == 'function' and typeof(writefile) == 'function' then
	if not isfile('wertyscriptdiscordcheck.disco') then
		writefile('wertyscriptdiscordcheck.disco', game:GetService('HttpService'):JSONEncode('hi'))
		local Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
		Module.Prompt({
			invite = "https://discord.gg/9CxyDbaJK9",
			name = "WertyScript",
		})
	end
end
-- libary
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
-- window
local win = lib:Window("WertyScript {Beta 2.2} by itz.wer??????? CRACKED BY GRIMCITY | dsc.gg/grimcity",Color3.fromRGB(255, 255, 255), Enum.KeyCode.RightControl)
-- info
local tabinfo = win:Tab("info")
lib:Notification("dsc.gg/grimcity", "CRACKED BY GRIMCITY", "THANK YOU")
tabinfo:Button("Hi, I'm creating my own script, and this is the first version", function()
    lib:Notification("??????????", "Hello Hacker", "..........")
end)
tabinfo:Label("Beta eng script")
tabinfo:Button("Discord - https://discord.gg/9CxyDbaJK9", function(gg)
    lib:Notification("discord", "https://discord.gg/9CxyDbaJK9", "next")
    if isfile and writefile and typeof(isfile) == 'function' and typeof(writefile) == 'function' then
        if not isfile('wertyscriptdiscordcheck2.disco') then
            writefile('wertyscriptdiscordcheck2.disco', game:GetService('HttpService'):JSONEncode('hi'))
            local Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
            Module.Prompt({
                invite = "https://discord.gg/9CxyDbaJK9",
                name = "WertyScript",
            })
        end
    end
    copy(discoinvite11)
end)
tabinfo:Label("UI settings â¤µï¸")
tabinfo:Colorpicker("Change UI Color",Color3.fromRGB(25, 63, 116), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)

-- UI tabmain
local tabmain = win:Tab("Main")
tabmain:Label("WalkSpeed")
tabmain:Slider("SpeedðŸ”¥",0,1000,16, function(speed11)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed11
end)
tabmain:Button("Reset Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 
end)
tabmain:Label("JumpPower")
tabmain:Slider("JumpðŸ”¥",0,1000,50, function(jump11)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump11
end)
tabmain:Button("Reset Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 
end)
tabmain:Label("Gravity")
tabmain:Slider("GravityðŸ”¥",0,1000,16, function(gravity11)
    game:GetService("Workspace").Gravity = gravity11
end)
tabmain:Button("Reset Gravity", function()
    game:GetService("Workspace").Gravity = 200
end)
tabmain:Label("Flyâ¤µï¸")
tabmain:Toggle("NOT WORK",false , function(ff123)
    
end)




tabmain:Label("Flyâ¤´ï¸")




-- script tab
local scripttab = win:Tab("Script")
scripttab:Label("âš«Sâš«Câš«Râš«Iâš«Pâš«Tâš«")
scripttab:Label("unfortunately, there are no authors of these scripts here")
scripttab:Label("Real good scriptâ¤µï¸")
scripttab:Button("Infinite Yield", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    sendMessage("USER: " ..username .. " / EXECUTE: Infinite Yield / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Pretty Please PLS DONATE tuba#8890 ", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    lib:Notification("Info - Warning", "script only for pls donate | Free version by tuba#8890", "ok")
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/33a0c8d179ae6e3085e69e26344786a4.lua"))()
    sendMessage("USER: " ..username .. " / EXECUTE: PRETTY PLEASE / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Better Roblox by Jayz", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Better Roblox by Jayz / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("UniversalFE", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
    sendMessage("USER: " ..username .. " / EXECUTE: UniversalFE / EXECUTOR: " ..executor .. " ")
end)
scripttab:Label("Real good scriptâ¤´ï¸")
scripttab:Label("âš«âš«âš«âš«âš«")
scripttab:Label("Real good hubâ¤µï¸")
scripttab:Button("Domain", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexsoftworks/Domain/main/source'),true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Domain / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Ez Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Ez Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Orca", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Orca / EXECUTOR: " ..executor .. " ")
end)
scripttab:Label("Real good hubâ¤´ï¸")
scripttab:Label("âš«âš«âš«âš«âš«")
scripttab:Label("Hub â¤µï¸")
scripttab:Button("Antix Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    -- https://raw.githubusercontent.com/rksssgthjuk7j66h/AntixHub/main/Games.lua

    repeat wait() until game:IsLoaded()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/rksssgthjuk7j66h/AntixHub/main/Loader.lua"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Antix Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Crazy Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CrazyHub123/CrazyHubScripts/main/CrazyHubMain.lua'))()
    sendMessage("USER: " ..username .. " / EXECUTE: Crazy Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Cat Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://pastebin.com/raw/CxqDYXpw"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Cat Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("BatuhanG Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/YtBatuhanG/roblox/main/BatuhanGHub"))()
    sendMessage("USER: " ..username .. " / EXECUTE: BatuhanG Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Air Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Air Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Legend Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L3G3NDPL4YZ/Legend-Hub-2V/main/LegendPlayz%20GUI%202v",true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Legend Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Crystal Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VeaBee4445/CrystalHubNewLua/main/CrystalHub.Lua",true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Crystal Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Space Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/SpaceHubLoader"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Space Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Pig Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iPigTW/PigHub/main/pighub.lua",true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Pig Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Script X Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ragoon821/ScriptXHub-v2/main/ScriptXhub%20v2.1-serpent"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Script X Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Moon Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://pastebin.com/raw/Gae7YC84"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Moon Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("UTG V3", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
    sendMessage("USER: " ..username .. " / EXECUTE: UTG V3 / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Unfair Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Unfair Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("DarkWare Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Darkmantis-dev/Darkware/main/Script.lua")))()
    sendMessage("USER: " ..username .. " / EXECUTE: DarkWare Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("LunarHub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/probablYnicKxD/ProjectLunar/main/LunarHub/Source.lua"))()()
    sendMessage("USER: " ..username .. " / EXECUTE: LunarHub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Shiba Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rawget69420/Shiba/main/main.lua"))()
    sendMessage("USER: " ..username .. " / EXECUTE: Shiba Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Skittle Ware", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bloodlxst/SkittleWare/main/Script.txt", true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Skittle Ware / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Control Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/darkkcontrol/Control-Hub-Roblox-OP-Script/main/Control%20Hub"),true))()
    sendMessage("USER: " ..username .. " / EXECUTE: Control Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("NukeVsCity", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
    sendMessage("USER: " ..username .. " / EXECUTE: NukeVsCity / EXECUTOR: " ..executor .. " ")
end)
scripttab:Button("Lazium Hub", function()
    lib:Notification("Execute!", "downloading the script may take time", "next")
    loadstring(game:HttpGet"https://raw.githubusercontent.com/CheapeeWastaken/Lazium/main/TheMain")()
    sendMessage("USER: " ..username .. " / EXECUTE: Lazium Hub / EXECUTOR: " ..executor .. " ")
end)
scripttab:Label("Hub â¤´ï¸")

scripttab:Label("âš«Eâš«Nâš«Dâš«")

local CustomNotification = win:Tab("Script2 - PROGRESS")
CustomNotification:Label("Coming soon (10 script, 5 hubs)")

































-- credits tab
local creditstab = win:Tab("Credits")
creditstab:Label("CREDITSâ¤µï¸")
creditstab:Label("----------")
creditstab:Label("----------")
creditstab:Label("UI by dawid (vapeUI)")
creditstab:Label("script by ??????")














-- Notification
game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "WertyScript Loaded!";
    Text = "Thank you for use script â¤ï¸ wertyscript â¤ï¸";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 5
print("wertyscript loaded!")
sendMessage("ðŸ”´ WERTYSCRIPT LOADED! ðŸ”´ `INFO: {Beta 2.2} / USER: " ..username .. " / EXECUTOR: " ..executor .. " ` <@&1090849548018126908> ")
--tab:Toggle("Toggle",false, function(t)
--print(t)
--end)

--tab:Slider("Slider",0,100,30, function(t)
--print(t)
--end)

--tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(t)
--print(t)
--end)

--tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(t)
--print(t)
--end)

--tab:Textbox("Textbox",true, function(t)
--print(t)
--end)

--tab:Bind("Bind",Enum.KeyCode.RightShift, function()
--print("Pressed!")
--end)

--tab:Label("Label")

--local changeclr = win:Tab("Change UI Color")

--changeclr:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
--lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
--end) 