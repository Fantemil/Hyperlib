local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Srupt Hub",Color3.fromRGB(255, 1, 0), Enum.KeyCode.RightControl)

local tab1 = win:Tab("Scripts")
local tab2 = win:Tab("Executer")
local tab3 = win:Tab("Credits")

tab1:Button("Admin", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end)

tab1:Dropdown("Auto Parry Mode",{"God","Top 1","Good","Normal","Bad"}, function(t)
print(t)
end)

tab1:Button("System Broken", function()
local credits = "SystemBroken made by system_calix"
loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
end)

tab1:Button("Ez hub", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)

tab1:Button("Nameless Admin", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source"))();
end)

tab1:Button("Neburise Blade ball", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptsExploit/Blade-Ball/main/Nebulorise%20RELEASE"))()
end)

tab1:Button("Auto Parry Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Code4Zaaa/X7Project/main/Game/AutoParryOnly"))()
end)

tab1:Button("Server Player(Tbao Hub)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubShow"))()
end)

tab2:Dropdown("What kind of script you will execute",{"Require","Lua","Loadstring","Protected","Or binary loadstring"}, function(t)
print(t)
end)

tab2:Textbox("Enter A script",true, function(t)
print(t)
end)

tab2:Button("Execute", function()
print('Executed')
end)

tab2:Button("KHogho", function()
end)

tab1:Slider("Set speed",0,500,22, function(t)
print(t)
end)

tab1:Toggle("Togle speed ",false, function(t)
print(t)
end)

tab3:Label("Thanks for using Script-Ware Hub thank you.")

tab3:Toggle("fps Unlocker",false, function(t)
print(t)
end)

tab3:Dropdown("Rate us!",{"Good 1","Nice","Very good","Best Script!"}, function(t)
print(t)
end)

tab1:Button("Phili hub/Rc7/", function()
loadstring(Game:HttpGet("https://pastebin.com/raw/Z7ipwMJ7"))()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Project-RC7-6752"))()
end)

tab1:Button("Synapse X", function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Synapse-X-Rework-6071"))()
end)

tab1:Button("Press Me", function()
lib:Notification("Notification", "Thanks For using our script.", "Welcome!")
end)