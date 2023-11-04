local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
   Name = "get haste'd",
   LoadingTitle = "Interface Loading...",
   LoadingSubtitle = "By haste",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "haste"
   },
   Discord = {
      Enabled = false,
      Invite = "CpjJEfZcRy", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Lake",
      Subtitle = "Key System",
      Note = "Key in discord(No Downloads/Linkvertise!)",
      FileName = "Lake - Key",
      SaveKey = false,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "https://pastebin.com/raw/jWQFi8kR"
   }
})


Rayfield:Notify({
   Title = "Script From noone",
   Content = "Thank you for using nobody script",
   Duration = 0.1,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "e",
         Callback = function()
         print("you sir are disabled")
      end
   },
},
})

local Tab = Window:CreateTab("Main", 4483362458)
local Button = Tab:CreateButton({
   Name = "Global Script - 1",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
   end,
})

local Tab2 = Window:CreateTab("Credits", 4483362458)
local Paragraph = Tab2:CreateParagraph({Title = "Youtube Channel", Content = ""})
local Paragraph = Tab2:CreateParagraph({Title = "Website", Content = ""})
local Paragraph = Tab2:CreateParagraph({Title = "Discord Server", Content = ""})