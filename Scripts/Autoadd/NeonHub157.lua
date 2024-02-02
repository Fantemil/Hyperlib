local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 NeonCNP Script Hub | Game 🔫",
   LoadingTitle = "🔫 Gun Simulator 💥",
   LoadingSubtitle = "by Vestavik2010",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "cZHYkKrH", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | NeonCNP Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server: https://discord.gg/cZHYkKrH",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Release","Update","GreekUpdate"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Join our discord server",
   Content = "Join our discord to get notifed for updates",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="NeonCNP Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Dropdown = MainTab:CreateDropdown({
   Name = "Select Area",
   Options = {"Starter World","Pirate Island","Pineapple Paradise"},
   CurrentOption = {"Starter World"},
   MultipleOptions = false,
   Flag = "dropdownarea", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
        print(Option)
   end,
})

local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local OtherSection = MainTab:CreateSection("Other")

local Toggle = MainTab:CreateToggle({
   Name = "Auto Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print("FARMING")
   end,
})

local TPTab = Window:CreateTab("🏝 Teleports", nil) -- Title, Image

local Button1 = TPTab:CreateButton({
   Name = "Starter Island",
   Callback = function()
        --Teleport1
   end,
})

local Button2 = TPTab:CreateButton({
   Name = "Pirate Island",
   Callback = function()
        --Teleport2
   end,
})

local Button3 = TPTab:CreateButton({
   Name = "Pineapple Paradise",
   Callback = function()
        --Teleport3
   end,
})

local TPTab = Window:CreateTab("🎲 Misc", nil) -- Title, Image
local TPSection = TPTab:CreateSection("🎲 Misc")

local Button1 = TPTab:CreateButton({
   Name = "Roll Dice",
   Callback = function()
        --Teleport1
   end,
})

local TPSection = TPTab:CreateSection("Others")

local Input = TPTab:CreateInput({
   Name = "Roll Dice",
   PlaceholderText = "1-500 Times",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local Toggle = TPTab:CreateToggle({
   Name = "Auto Farm Dice",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print("FARMING")
   end,
})

  local Input = TPTab:CreateInput({
   Name = "Discord link",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})

local RBTab = Window:CreateTab("📊 Stats", nil) -- Title, Image
local RBSection = RBTab:CreateSection("📊 Stats")

local Label = RBTab:CreateLabel("Coming Soon")

local MRTab = Window:CreateTab("🛠 Server", nil) -- Title, Image
local MRSection = MRTab:CreateSection("🛠 Server")

local Label = MRTab:CreateLabel("Coming Soon")

local ADTab = Window:CreateTab("🛡 Admin", nil) -- Title, Image
local ADSection = ADTab:CreateSection("🛡 Admin")

local Paragraph = ADTab:CreateParagraph({Title = "ACCESS GRANTED DENIED!", Content = "You are categorically FORBIDDEN from laying eyes upon this page. If you harbor the slightest inkling of a belief that this could be an error, it is IMPERATIVE that you CONTACT Vestavik2010 IMMEDIATELY, with an unparalleled sense of urgency, or brace yourself for the GRAVEST repercussions!"})

local Dropdown = ADTab:CreateDropdown({
   Name = "Select Role",
   Options = {"Member","Moderator","Staff","Admin","Manager","FULL PERMS"},
   CurrentOption = {"Member"},
   MultipleOptions = false,
   Flag = "dropdownarea", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
        print(Option)
   end,
})

local CSTab = Window:CreateTab("⚙ Credits", nil) -- Title, Image
local CSSection = CSTab:CreateSection("⚙ Credits")

local Paragraph = CSTab:CreateParagraph({Title = "Credits", Content = "Everything: Fanxx (@fanxxHD)                                          ‍‍‍ㅤㅤ ‍‍ㅤㅤㅤ‍‍ Everything: Fanxx (@fanxxHD)                    ㅤㅤ                    ㅤㅤ  ‍‍‍ㅤㅤㅤㅤ ‍‍‍‍ Tester: Tuon (@Tuon1115)"})