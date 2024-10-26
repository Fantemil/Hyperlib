-- THIS SCRIPT WAS MADE BY: GodofLove076 --

-- Send notifications
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Hello",
    Text = "hello lol",
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Wait...",
    Text = "Loading...",
})

wait()

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loaded!",
    Text = "Thank You For using my script!",
})

-- Load the library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- Create the main window
local Window = Library.CreateLib("Hyperion V", "Ocean")

-- Create tabs and sections
local HomeTab = Window:NewTab("Home")
local WelcomeSection = HomeTab:NewSection("Welcome To HyperionV!")
local ScriptsSection = HomeTab:NewSection("Scripts In section tabs!")
local CreditSection = HomeTab:NewSection("Roblox: GodofLove076")

local ScriptsTab = Window:NewTab("Scripts")
local ScriptsSection = ScriptsTab:NewSection("Scripts")

ScriptsSection:NewButton("BABFT Scripts [OLD]", "BABFT Old quests", function()
    print("Clicked")
    loadstring(game:HttpGet('https://pastebin.com/raw/wZcf0PwT'))()
end)

ScriptsSection:NewButton("Prison Life Admin [WORKS]", "Prison life Admin", function()
    print("Clicked")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
end)

local AdminTab = Window:NewTab("Admin")
local AdminSection = AdminTab:NewSection("Admin")

AdminSection:NewButton("Simple Spy", "Admin ig?", function()
    print("Clicked")
    loadstring(game:HttpGet("https://pastebin.com/raw/GE6Yii93", true))()
end)

AdminSection:NewButton("Infinite yield", "this good", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

AdminSection:NewButton("Fates Admin", "Admin ig???", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua", true))()
end)

AdminSection:NewButton("Fedora Admin", "Admin", function()
    print("Clicked")
loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/fedoratoomutch/main/toomucth'))()   
end)

AdminSection:NewButton("Nameless Admin", "nameless i think", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source", true))()
end)

local HubTab = Window:NewTab("Hubs")
local HubSection = HubTab:NewSection("Hubs")


HubSection:NewButton("OP Trolling Hub", "...", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://pastebin.com/raw/bZFnsBZv"))();
end)


HubSection:NewButton("Syntax Hub ", "... ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Memeboiyot/SyntaxRebornOfficial/main/SyntaxReborn", true))()
end)

HubSection:NewButton("Sky hub", "Sky", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()  
end)


HubSection:NewButton("Domain X Hub", "Domain X script", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/DomainX/main/source", true))()
end)

HubSection:NewButton("JulzHub", "Brookheaven", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub"))()
end)

HubSection:NewButton("Owl Hub", "MM2 Script", function()
    print("Clicked")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end)

HubSection:NewButton("Tiger X V3 Hub", "Tiger like rawr", function()
    print("Clicked")
loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20its%20Back"))()
end)

-- Create and play the sound
local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://6712558779"
Sound.Volume = 1
Sound.Parent = game:GetService("Workspace")
Sound:Play()

-- Ensure the sound stops and cleans up after it finishes playing
Sound.Ended:Connect(function()
    Sound:Destroy()
end)