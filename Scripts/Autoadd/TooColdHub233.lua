-- dont skid

--+1 jump

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--Main
local Window = Rayfield:CreateWindow({
   Name = "TooColdHub",
   LoadingTitle = "TooColdHub Test",
   LoadingSubtitle = "by MarcusFF2",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "TooColdHub Key",
      Subtitle = "Key System",
      Note = "A method of obtaining the key is provided",
      FileName = "toocoldhub key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/u3fvNvTw"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "welcome to toocoldhub",
   Content = "welcome",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 300},
   Increment = 1,
   Suffix = "JP",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Destory Script",
   Callback = function()
      Rayfield:Destroy()
   end,
})

-- 2 Main
local MainTab = Window:CreateTab("Test Features", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Home")

local Button = MainTab:CreateButton({
    Name = "Infinite Jump Toggle",
    Callback = function()
        --Toggles the infinite jump between on or off on every script run
 _G.infinjump = not _G.infinjump
 
 if _G.infinJumpStarted == nil then
     --Ensures this only runs once to save resources
     _G.infinJumpStarted = true
     
     --Notifies readiness
     game.StarterGui:SetCore("SendNotification", {Title="TooColdHub"; Text="Infinite Jump Activated!"; Duration=5;})
 
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
 
 local Button = MainTab:CreateButton({
    Name = "ANTIAFK",
    Callback = function()
        wait(0.5)local ba=Instance.new("ScreenGui")
        local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
        local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
        ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
        ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
        ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
        ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
        ca.TextSize=22;da.Parent=ca
        da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
        da.Size=UDim2.new(0,370,0,107)_b.Parent=da
        _b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
        _b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by Brandblox (please subscribe)"
        _b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
        ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
        ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
        ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
        bb:CaptureController()bb:ClickButton2(Vector2.new())
        ab.Text="Roblox Tried to kick you but we didnt let them kick you :D"wait(2)ab.Text="Status : Active"end)
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Auto Jump",
    Callback = function()
        while true do wait()
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
            --roblox autojump script
    end,
 })

--no skid