local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "KR1BGUI",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by g0d0ds",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "KR1BGUI"
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
   Name = "minigun",
   Callback = function()
    game.Players.LocalPlayer.PlayerGui.NewShop.ShopMainGui.ShopMain.go.WeaponsRemotes.B12:FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Flamethrower",
   Callback = function()
   game.Players.LocalPlayer.PlayerGui.NewShop.ShopMainGui.ShopMain.go.WeaponsRemotes.B8:FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "nuke",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
function scripta()
    --script
    print("Success")
end
for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
    if v:IsA("RemoteEvent") then
        v:FireServer(scripta())
print(v.Name)
    end
            end
   end,
})