getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Cheats",
    LoadingTitle = "AdminHaxcks",
    LoadingSubtitle = "icyatfretge",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = Admins, -- Create a custom folder for your hub/game
       FileName = "AdminHacks"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })





 local PlayerTab = Window:CreateTab("AdminScript", 4483362458) -- Title, Image
 local HaxckSection = PlayerTab:CreateSection("AdminScriptHack")
 HaxckSection:Set("AdminHax")

 local Button = PlayerTab:CreateButton({
    Name = "InfiYeild FE",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })

 local Button = PlayerTab:CreateButton({
    Name = "Button Example",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
    end,
 })












Rayfield:LoadConfiguration()