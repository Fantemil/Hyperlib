local Rayfield = loadstring(game:HttpGet('https://[Log in to view URL]'))()

local Window = Rayfield:CreateWindow({
   Name = "Script Hub",
   LoadingTitle = "Script Hub is  loading",
   LoadingSubtitle = "by Simpleiinous ",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "local script hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "amazing",
      Subtitle = "Key System",
      Note = "Key is accepted.",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"accepted"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

 Rayfield:Notify({
    Title = "Script Hub Executed!",
    Content = "Script Hub has succesfully loaded in! <3",
    Duration = 5,
    Image = nil,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Nice!",
          Callback = function()
          print("Original Creator = Simpleiinous <3")
       end
    },
 },
 })



local Tab = Window:CreateTab("Built In Scripts", 4483362458) -- Title, Image-- Originally created by Simpleiinous

local Section = Tab:CreateSection("Scripts")-- Originally created by Simpleiinous

local Input = Tab:CreateInput({-- Originally created by Simpleiinous
   Name = "WalkSpeed",-- Originally created by Simpleiinous
   PlaceholderText = "1-500",-- Originally created by Simpleiinous
   RemoveTextAfterFocusLost = false,-- Originally created by Simpleiinous
   Callback = function(Text)-- Originally created by Simpleiinous
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)-- Originally created by Simpleiinous
   end,-- Originally created by Simpleiinous
})-- Originally created by Simpleiinous

local Input = Tab:CreateInput({-- Originally created by Simpleiinous
   Name = "JumpPower",-- Originally created by Simpleiinous
   PlaceholderText = "1-500",-- Originally created by Simpleiinous
   RemoveTextAfterFocusLost = false,-- Originally created by Simpleiinous
   Callback = function(Text)-- Originally created by Simpleiinous
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Text)-- Originally created by Simpleiinous
   end,-- Originally created by Simpleiinous

local Button = Tab:CreateButton({-- Originally created by Simpleiinous
   Name = "Infinite Jump",-- Originally created by Simpleiinous
   Callback = function()-- Originally created by Simpleiinous
  local InfiniteJumpEnabled = true-- Originally created by Simpleiinous
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then-- Originally created by Simpleiinous
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")-- Originally created by Simpleiinous
	end-- Originally created by Simpleiinous
end)-- Originally created by Simpleiinous
local InfiniteJump = CreateButton("Infinite Jump: On", StuffFrame)
InfiniteJump.Position = UDim2.new(0,10,0,130) -- Originally created by Simpleiinous
InfiniteJump.Size = UDim2.new(0,150,0,30)-- Originally created by Simpleiinous
InfiniteJump.MouseButton1Click:connect(function()-- Originally created by Simpleiinous
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
	local new = state == "Off" and "On" or state == "On" and "Off"-- Originally created by Simpleiinous
	InfiniteJumpEnabled = new == "On"-- Originally created by Simpleiinous
	InfiniteJump.Text = "Infinite Jump: " .. new-- Originally created by Simpleiinous
end)-- Originally created by Simpleiinous
   end,-- Originally created by Simpleiinous
})-- Originally created by Simpleiinous

local Button = Tab:CreateButton({-- Originally created by Simpleiinous
   Name = "Destroy Script Hub",-- Originally created by Simpleiinous
   Callback = function()-- Originally created by Simpleiinous
   Rayfield:Destroy()-- Originally created by Simpleiinous
   end,-- Originally created by Simpleiinous

Rayfield:LoadConfiguration()-- Originally created by Simpleiinous


                