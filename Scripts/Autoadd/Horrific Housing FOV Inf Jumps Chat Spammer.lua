local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
 Name = "Horrific Housing Hub",
 LoadingTitle = "Sius Hub",
 LoadingSubtitle = "By Sius",
 ConfigurationSaving = {
  Enabled = true,
  FileName = "Sius Hub"

 },
    Discord = {
        Enabled = true,
        Invite = "https://discord.gg/v2aNAnp45Q", -- The Discord invite code, do not include discord.gg/
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up


 },
 KeySystem = true, -- Set this to true to use our key system
 KeySettings = {
  Title = "Horrific Housing",
  Subtitle = "Key System",
  Note = "Welcome to Sius Hub! Join our discord to get key ! https://discord.gg/3HsT6F4ZAw. Don't leave the server after getting the key. We'll change the key monthly ( warning : if you enter the wrong key code 3 times. your roblox will be closed",
  Key = "30974"
 }
})


Rayfield:Notify({
   Title = "Loaded",
   Content = "Welcome back to Sius Hub version 1.5.1",
   Duration = 6.5,
   Image = 10010348543,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Close",
         Callback = function()
         print("Successful loaded Sius Hub 1.5.1. Created by Sius")
      end
   },
},
})


local Tab = Window:CreateTab("What's new")
local Section = Tab:CreateSection("announcement")
local Paragraph = Tab:CreateParagraph({Title = "Version 1.5.1", Content = "Changed Free Item to Dropdown Elements | Changed Free Item to Dropdown Elements | Temporary removed Infinite Coin | Fixed some bugs."})
local Label = Tab:CreateLabel("More infomation in our discord server | https://discord.gg/3HsT6F4ZAw")

local Tab = Window:CreateTab("Character")
local Section = Tab:CreateSection("Section 1")

local Paragraph = Tab:CreateParagraph({Title = "Reset Character", Content = "Kill yourself once you press the Button"})

local Button = Tab:CreateButton({
 Name = "Reset Character",
 Callback = function()
  game.Players.LocalPlayer.Character.Humanoid.Health = 0-- Means The Character Health will turn to 0
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Walkspeed", Content = "Change your walkspeed whatever you wanted to ( Limit : 100 )"})

local Slider = Tab:CreateSlider({
 Name = "Walkspeed",
 Range = {16, 100},
 Increment = 1,
 Suffix = "Value",
 CurrentValue = 16,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Jumppower", Content = "Change your jumppower whatever you wanted to ( Limit : 200 )"})

local Slider = Tab:CreateSlider({
 Name = "Jumppower",
 Range = {40, 200},
 Increment = 1,
 Suffix = "Value",
 CurrentValue = 40,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Set Health", Content = "You can change your Health whatever you wanted to ( Limit : 100 )"})

local Slider = Tab:CreateSlider({
 Name = "Set Health",
 Range = {0, 100},
 Increment = 1,
 Suffix = "Health",
 CurrentValue = 100,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(s)
        game.Players.LocalPlayer.Character.Humanoid.Health = s
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Infinte Jump", Content = "You can jump infinite times once you press it!"})

local Button = Tab:CreateButton({
 Name = "Infinite Jump",
 Callback = function()
  local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
 if InfiniteJumpEnabled then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end)

 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Chat spammer", Content = "Chat. you're right."})

local Button = Tab:CreateButton({
 Name = "Chat spammer",
 Callback = function()
while wait(5) do
local args = {
    [1] = "Sius Hub : Sooner than you think",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

 end,
})



local Paragraph = Tab:CreateParagraph({Title = "Future Plan", Content = "In the future, I'll add fly,noclip and even god mode inside here. Coming soon! ( I won't discontinue this project )"})


        
local Tab = Window:CreateTab("Visuals")
local Section = Tab:CreateSection("Section 1")

local Paragraph = Tab:CreateParagraph({Title = "ESP", Content = "Indicates the locations of all the players (Our ESP is very buggy right now. I recommended you go to others and use Unnamed ESP instead"})

local Toggle = Tab:CreateToggle({
 Name = "Esp",
 CurrentValue = true,
 Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
        local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function getdistancefc(part)
    return (part.Position - c.CFrame.Position).Magnitude
end

local function esp(p,cr)
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("HumanoidRootPart")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true 
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,255,255)
    text.Size = 13

    local c1 
    local c2 
    local c3 

    local function dc()
        text.Visible = false
        text:Remove()
        if c1 then
            c1:Disconnect()
            c1 = nil 
        end
        if c2 then
            c2:Disconnect()
            c2 = nil 
        end
        if c3 then
            c3:Disconnect()
            c3 = nil 
        end
    end

    c2 = cr.AncestryChanged:Connect(function(_,Value)
        if not parent then
            dc()
        end
    end)

    c3 = h.HealthChanged:Connect(function(Value)
        if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
            dc()
        end
    end)

    c1 = rs.RenderStepped:Connect(function(Value)
        local hrp_pos,hrp_os = c:WorldToViewportPoint(hrp.Position)
        if hrp_os then
            text.Position = Vector2.new(hrp_pos.X,hrp_pos.Y)
            text.Text = p.Name .. ' ('..tostring(math.floor(getdistancefc(hrp)))..' ms)'
            text.Visible = true 
        else
            text.Visible = false 
        end
    end)
end

local function p_added(p)
    if p.Character then
        esp(p,p.Character)
    end
    p.CharacterAdded:Connect(function(cr)
        esp(p,cr)
    end)
end


for i,p in next, ps:GetPlayers() do 
    if p ~= lp then
        p_added(p)
    end
end

ps.PlayerAdded:Connect(p_added)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Highlight = Instance.new("Highlight")
Highlight.Name = "Highlight"
function ApplyToCurrentPlayers()
    for i,player in pairs(Players:GetChildren()) do 
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local HighlightClone = Highlight:Clone()
            HighlightClone.Adornee = player.Character
            HighlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            HighlightClone.Name = "Highlight"
        end
    end
end    
RunService.Heartbeat:Connect(function(Value)
    ApplyToCurrentPlayers()
end)-- The function that takes place when the toggle is pressed
      -- The variable (Value) is a boolean on whether the toggle is true or false
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Warning", Content = "Future Project. Not in the UI"})
local Paragraph = Tab:CreateParagraph({Title = "X-ray", Content = "Make surrounding obstacles invisible"})

local Paragraph = Tab:CreateParagraph({Title = "Brightness", Content = "Change the game brightness ( Use it when the you're surrounded by darkness "})

local Slider = Tab:CreateSlider({
 Name = "Brightness",
 Range = {1, 100},
 Increment = 1,
 Suffix = "Brightness",
 CurrentValue = 1,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(s)
        game.Lighting.Brightness = s
 end,
})


local Paragraph = Tab:CreateParagraph({Title = "NEW! Fov", Content = "Change your camera FOV"})

local Slider = Tab:CreateSlider({
 Name = "FOV",
 Range = {0, 100},
 Increment = 1,
 Suffix = "Value",
 CurrentValue = 40,
 Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  local FOV = Value
         game.Workspace.Camera.FieldOfView = FOV-- The function that takes place when the slider changes
      -- The variable (Value) is a number which correlates to the value the slider is currently at
 end,
})

local Tab = Window:CreateTab("Teleportation")
local Section = Tab:CreateSection("Section 1")
local Paragraph = Tab:CreateParagraph({Title = "TP to another person", Content = "Teleport onto another player by type their username"})
local Input = Tab:CreateInput({
 Name = "TP to another person",
 PlaceholderText = "Username",
 RemoveTextAfterFocusLost = false,
 Callback = function(Username)
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local p2 = Username
        local pos = p1.CFrame
        
        p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
 end,
})


local Button = Tab:CreateButton({
 Name = "Checkpoint 1 ( obby )",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(-0.102802634, 17.5549927, -68.6698685, 0.989578247, -3.82994481e-09, 0.14399597, 2.32248198e-09, 1, 1.06368736e-08, -0.14399597, -1.01915916e-08, 0.989578247), -- your desired position
         
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Button = Tab:CreateButton({
 Name = "Checkpoint 2 ( obby )",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(-3.67434549, 51.9500046, -101.83606, 0.502718627, 7.78887497e-08, 0.864450097, -2.38615989e-08, 1, -7.6225426e-08, -0.864450097, 1.76927806e-08, 0.502718627), -- your desired position
         
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Button = Tab:CreateButton({
 Name = "End of the obby",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(64.0310211, 126.607292, -118.963501, -0.585728467, 1.81736919e-08, -0.810507357, 2.60501913e-08, 1, 3.59694963e-09, 0.810507357, -1.90070359e-08, -0.585728467), -- your desired position
         
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Button = Tab:CreateButton({
 Name = "Auto complete Escape Room Obby",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(0.441482306, 547.629578, -482.253204, -0.410465389, -1.74443464e-08, 0.911876202, 5.56876856e-08, 1, 4.41970265e-08, -0.911876202, 6.89216222e-08, -0.410465389), -- your desired position
         
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})


local Button = Tab:CreateButton({
 Name = "Teleport to the center of the map",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(-0.756521761, 4.60199594, 63.6695213, -0.998800337, 8.80920115e-10, 0.0489683449, -9.82119941e-10, 1, -3.80217422e-08, -0.0489683449, -3.8024222e-08, -0.998800337), -- your desired position
         
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Button = Tab:CreateButton({
 Name = "Teleport to the lobby",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(0.122447081, 6.49999809, -6.97339392, 0.99983269, -1.13094334e-08, -0.0182915237, 1.2380692e-08, 1, 5.8452585e-08, 0.0182915237, -5.8669265e-08, 0.99983269), -- your desired position
         
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Button = Tab:CreateButton({
 Name = "Teleport to the lobby",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(-4.38307858, 5.66799784, -17.024128, 0.0788220093, 2.30728787e-08, 0.996888697, 6.40295497e-08, 1, -2.82075785e-08, -0.996888697), -- your desired position
            location2 = Vector3.new(6.60537083e-08, 0.0788220093, -21.8640709, 5.99999809, -9.3168869, 0.999688745, -2.14913349e-08, -0.0249474552, 2.18280309e-08, 1, 1.32238638e-08, 0.0249474552, -1.37643017e-08, 0.999688745), -- your desired position
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Button = Tab:CreateButton({
 Name = "Teleport to the elevator",
 Callback = function()
  local teleport_table = {
            location1 = Vector3.new(6.60537083e-08, 0.0788220093, -21.8640709, 5.99999809, -9.3168869, 0.999688745, -2.14913349e-08, -0.0249474552, 2.18280309e-08, 1, 1.32238638e-08, 0.0249474552, -1.37643017e-08, 0.999688745), -- your desired position
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.location1)-- The function that takes place when the button is pressed
 end,
})

local Tab = Window:CreateTab("Shop")
local Section = Tab:CreateSection("Section 1")

local Dropdown = Tab:CreateDropdown({
   Name = "Free item",
   Options = {"EggPets","Ornament","Furniture","HouseChest","Spooky","HeartBalloons","interChest","Spooky","HeartBalloons","WinterChest","Easter","Summer2","Autumn","LunarBundle"},
   CurrentOption = "None",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
    local args = {
        [1] = 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001,
        [2] = Options
    }
    
    game:GetService("ReplicatedStorage").ShopPurchase:FireServer(unpack(args))
   end,
})

local Tab = Window:CreateTab("Others")
local Section = Tab:CreateSection("Section 1")

local Paragraph = Tab:CreateParagraph({Title = "Others", Content = "Hey. We know that our script wasn't powerful enough. So we recommend you some other script that's 100% safe"})

local Button = Tab:CreateButton({
 Name = "infinite Yield | Edge",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
 end,
})

local Button = Tab:CreateButton({
 Name = "Domain X | Sirius",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "Domain X", Content = "Sius Hub will be closed after executed this script"})

local Button = Tab:CreateButton({
 Name = "CMD- X | Various Developers",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
 end,
})

local Paragraph = Tab:CreateParagraph({Title = "CMD-X", Content = "Sius Hub will be closed after executed this script"})

local Button = Tab:CreateButton({
 Name = "Hydroxide | Upbolt",
 Callback = function()
        local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
 end,
})

local Button = Tab:CreateButton({
 Name = "SimpleSpy | exx",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua", true))()
 end,
})

local Button = Tab:CreateButton({
 Name = "Unnamed ESP | ic3w0lf22",
 Callback = function()
        pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
 end,
})

local Button = Tab:CreateButton({
 Name = "Dark Dex | Moon & Courtney",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
 end,
})


-- Sius Hub : Rayfield Interface Suite Edition, 630 Line of Codes, Created in October 30 2022 , Sius