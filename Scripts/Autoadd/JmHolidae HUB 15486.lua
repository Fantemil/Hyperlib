if game.PlaceId == 16097368264 then

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Cash Clicker V1.5",
   LoadingTitle = "Wait...",
   LoadingSubtitle = "by Jmholidae",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "CashClickerHub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = false
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"}
   }
})
_G.AutoSpeed = true

function AutoSpeed( )
while _G.AutoSpeed == true do
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Event.BuildingTimer:FireServer(unpack(args))
wait (0.000000001)
end
end

local MainTab = Window:CreateTab("Home", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Enjoy the 1.5 UI update!",
   Content = "Update 1.5",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Ok :D",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Toggle = MainTab:CreateToggle({
   Name = "Auto-SpeedTime",
   CurrentValue = false,
   Flag = "toggleexample", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.AutoSpeed = Value
   AutoSpeed( )
   end,
})
end