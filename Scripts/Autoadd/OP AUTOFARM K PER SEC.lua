local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Game exploit",
   LoadingTitle = "VERSION 1",
   LoadingSubtitle = "by NamesofUsernames",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

local Tab = Window:CreateTab("Autofarm", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Section Example")

local Button = Tab:CreateButton({
   Name = "Start autofarm!",
   Callback = function()
       Rayfield:Notify({
   Title = "Autofarm started!",
   Content = "500K Points per second :)",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
      end
   },
},
})
   local player = game:GetService("Players").LocalPlayer
local stage = game:GetService("Workspace").Wins.Stage8  --edit 8 on "1/2/3/4/5/6/7"
local stageCFrame = stage.CFrame
while true do
player.Character:SetPrimaryPartCFrame(stageCFrame)
wait(1)
end
   end,
   
   
})
