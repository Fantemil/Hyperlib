local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "Title of the library",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local Tab = Window:MakeTab({
    Name = "scripts/main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "speed 50(good for cook burgers lol)",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
    end    
})

Tab:AddButton({
    Name = "jump power 100(good for cook burgers lol)",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    end    
})

Tab:AddButton({
    Name = "inf yield(universal)",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Infinite-Yield_500"))()
    end    
})

Tab:AddTextbox({
    Name = "WalkSpeed",
    Default = "15",
    TextDisappear = true,
    Callback = function(Value)
        local newWalkSpeed = tonumber(Value)
        if newWalkSpeed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = newWalkSpeed
        else
            warn("ÐÐ²ÐµÐ´Ð¸ÑÐµ ÐºÐ¾ÑÑÐµÐºÑÐ½Ð¾Ðµ ÑÐ¸ÑÐ»Ð¾Ð²Ð¾Ðµ Ð·Ð½Ð°ÑÐµÐ½Ð¸Ðµ Ð´Ð»Ñ ÑÐºÐ¾ÑÐ¾ÑÑÐ¸ Ð¸Ð³ÑÐ¾ÐºÐ°")
        end
    end	  
})

Tab:AddTextbox({
    Name = "JumpPower",
    Default = "15",
    TextDisappear = true,
    Callback = function(Value)
        local newJumpPower = tonumber(Value)
        if newJumpPower then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = newJumpPower
        else
            OrionLib:MakeNotification({
                Name = "ÐÐ²ÐµÐ´Ð¸ÑÐµ Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½Ð¾Ðµ ÑÐ¸ÑÐ»Ð¾ Ð¿ÑÑÐ¶ÐºÐ°",
                Content = "-_-",
                Image = "rbxassetid://12345678",
                Time = 3
            })
        end
    end	  
})

Tab:AddButton({
    Name = "mflyð(universal)",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Mfly-9410"))()
    end    
})

Tab:AddButton({
    Name = "chat bypass(some games)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
    end    
})

Tab:AddButton({
    Name = "10 (Repeated)",
    Callback = function()
        local count = 0
        local maxCount = 10
        local interval = 0.2

        local function fireServerRepeatedly()
            if count < maxCount then
                count = count + 1
                if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                    game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
                end
                wait(interval)
                fireServerRepeatedly()
            end
        end

        fireServerRepeatedly()
    end    
})

local ToggleActive = false
local Interval = 0.05
local Timer

Tab:AddToggle({
    Name = "give kill",
    Default = false,
    Callback = function(Value)
        ToggleActive = Value
        if ToggleActive then
            Timer = game:GetService("RunService").Heartbeat:Connect(function()
                if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                    game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
                end
                wait(Interval)
            end)
        else
            if Timer then
                Timer:Disconnect()
            end
        end
    end    
})

local Tab2 = Window:MakeTab({
    Name = "slap battles spam sound",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab2:AddButton({
    Name = "10",
    Callback = function()
        for i = 1, 10 do
            if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
            end
            wait(0.2)
        end
    end    
})

Tab2:AddButton({
    Name = "25",
    Callback = function()
        for i = 1, 25 do
            if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
            end
            wait(0.2)
        end
    end    
})

Tab2:AddButton({
    Name = "50",
    Callback = function()
        for i = 1, 50 do
            if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
            end
            wait(0.2)
        end
    end    
})

Tab2:AddButton({
    Name = "100",
    Callback = function()
        for i = 1, 100 do
            if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
            end
            wait(0.2)
        end
    end    
})

Tab2:AddButton({
    Name = "250",
    Callback = function()
        for i = 1, 250 do
            if game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button then
                game.Players.LocalPlayer.PlayerGui.GlovesButton.KillstreakBtn.Button:FireServer()
            end
            wait(0.2)
        end
    end    
})

Tab2:AddTextbox({
    Name = "Player Teleport",
    Default = "Username",
    TextDisappear = false,
    Callback = function(Value)
        local targetAbbreviation = Value
        local targetPlayer
        for _, v in pairs(game.Players:GetPlayers()) do
            if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
                targetPlayer = v
                break
            end
        end
        if targetPlayer then
            _G.PlayerTeleport = targetPlayer.Name
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Found Player [ ".._G.PlayerTeleport.." ]",
                Image = "rbxassetid://7733658504",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Can't find player",
                Image = "rbxassetid://7733658504",
                Time = 5
            })
        end
    end	  
})

Tab:AddSlider({
    Name = "WalkSpeed",
    Min = 15,
    Max = 1000,
    Default = 20,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "WalkSpeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        Walkspeed = Value
    end    
})

Tab2:AddToggle({
    Name = "collect slapple",
    Default = false,
    Callback = function(Value)
        ToggleActive = Value
        if ToggleActive then
            Timer = game:GetService("RunService").Heartbeat:Connect(function()
                for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (v.Name == "Slapple" or v.Name == "GoldenSlapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                    end
                end
                wait(Interval)
            end)
        else
            if Timer then
                Timer:Disconnect()
            end
        end
    end    
})