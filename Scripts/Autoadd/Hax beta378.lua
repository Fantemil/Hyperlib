local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "Arsenal Hax (beta)",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by KR1B TEAM",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Arsenal Hax (beta)"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "KR1BGUI CHECK",
      Note = "No method of obtaining the key is provided",
      FileName = "KR1B", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/gxaiLtVY"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("scriptz", nil) -- Title, Image
local MainSection = MainTab:CreateSection("main")

local Button = MainTab:CreateButton({
   Name = "big hitboxes",
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/HQwShgnb', true))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Aimbot",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/yzeedw/Mortalv2-main/main/UNIVERSAL%20AIMBOT"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "other arsenal script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Arsenalscript.txt"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "soon",
   Callback = function()
   game.Players.LocalPlayer.PlayerGui.NewShop.ShopMainGui.ShopMain.go.WeaponsRemotes.B14:FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "soon",
   Callback = function()
   game.Players.LocalPlayer.PlayerGui.NewShop.ShopMainGui.ShopMain.go.WeaponsRemotes.B15:FireServer()
   end,
})