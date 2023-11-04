local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "TooColdHub",
    LoadingTitle = "Full Verison",
    LoadingSubtitle = "by marcusbored",
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
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "TooColdHub Key",
       Subtitle = "Key System",
       Note = "https://pastebin.com/raw/YYtR5GLv",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"https://pastebin.com/raw/YYtR5GLv"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local MainTab = Window:CreateTab("Home", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
    Title = "Welcome to toocoldhub",
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

 local Button = MainTab:CreateButton({
    Name = "Preset MS",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local rs = game:GetService("RunService")
         
        function magBall(ball)
           if ball and plr.Character then
               firetouchinterest(plr.Character["Left Arm"], ball, 0)
               task.wait()
               firetouchinterest(plr.Character["Left Arm"], ball, 1)
           end
        end
         
        rs.Stepped:Connect(function()
           for i,v in pairs(workspace:GetChildren()) do
               if v.Name == "Football" and v:IsA("BasePart") then
                   local mag = (plr.Character.Torso.Position - v.Position).Magnitude
                   magBall(v)
               end
           end
        end)
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Ball Tracers",
    Callback = function()
    -- Highlight the football in red

local football = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Football")

if football then
    football.Material = game:GetService("MaterialService"):CreateMaterial("SmoothPlastic", {DiffuseColor = Color3.new(1, 0, 0)})
end

    end,
 })

--2 main

 local MainTab = Window:CreateTab("Player", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Main")

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

 local Slider = MainTab:CreateSlider({
    Name = "Hip Height",
    Range = {0, 50},
    Increment = 10,
    Suffix = "2",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = (Value)
    end,
 })

 local MainTab = Window:CreateTab("Break Script", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Main")

 local Button = MainTab:CreateButton({
    Name = "Break Script",
    Callback = function()
        Rayfield:Destroy()
    end,
 })