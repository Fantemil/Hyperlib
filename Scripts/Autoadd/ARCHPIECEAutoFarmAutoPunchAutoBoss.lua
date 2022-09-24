local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Arch Piece Skript (by pa1n)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
 Name = "MAIN",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


Tab:AddToggle({
 Name = "AUTO PUNCH",
 Default = false,
 Callback = function(Value)
  _G.hitmob = Value

        while wait() and _G.hitmob do
        
        local args = {[1] = "M1"} game:GetService("ReplicatedStorage").Combat.RemoteEvent:FireServer(unpack(args))
        
        end
 end    
})


Tab:AddToggle({
 Name = "ONE PUNCH MAN",
 Default = false,
 Callback = function(Value)
  _G.onehitmob = Value

        while wait(0.5) and _G.onehitmob do
        
        local args = {
            [1] = "BaraPunch",
            [2] = 10000000000000000
        }
        
        game:GetService("ReplicatedStorage").Bara:FireServer(unpack(args))
        
        end
 end    
})


Tab:AddDropdown({
 Name = "SELECT MOB",
 Default = "1",
 Options = {"Bandit[Lv.5]", "Marine[Lv.15]", "Clown[Lv.30]", "Chef[Lv.50]", "FishMan[Lv.50]", "BlackMoustache[Lv.350]"},
 Callback = function(mob)
  _G.mob = mob
 end    
})

Tab:AddToggle({
    Name = "AUTOFARM",
    Default = false,
    Callback = function(Value)
        _G.xd2 = Value
        local RunService = game:GetService("RunService")
        
        while _G.xd2 and RunService.RenderStepped:Wait() do
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == _G.mob then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                
                elseif not v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') then
                   for i,v in pairs(game:GetService("Workspace")["Other Islands"]:GetChildren()) do
                       for i,v in pairs(v:GetChildren()) do
                           if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == _G.mob then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                            end
                        end
                    end
                end
        end
        end
    end
})

Tab:AddToggle({
    Name = "AUTO BRING MOB",
    Default = false,
    Callback = function(Value)
        _G.bringmob = Value
        local RunService = game:GetService("RunService")
        
        while _G.bringmob and RunService.RenderStepped:Wait() do
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == _G.mob then
                    v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
                
                elseif not v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') then
                   for i,v in pairs(game:GetService("Workspace")["Other Islands"]:GetChildren()) do
                       for i,v in pairs(v:GetChildren()) do
                           if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == _G.mob then
                                v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
                            end
                        end
                    end
                end
        end
        end
    end
})

local Tab = Window:MakeTab({
 Name = "AUTO BOSS",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Go to the island if it wont work"
})

Tab:AddToggle({
 Name = "FARM ACE",
 Default = false,
 Callback = function(Value)
        _G.ace = Value
        local RunService = game:GetService("RunService")
        
        while _G.ace and RunService.RenderStepped:Wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == 'Ace' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                end
            end
        end)
        end
 end    
})

Tab:AddToggle({
 Name = "FARM BUGGY",
 Default = false,
 Callback = function(Value)
            _G.buggy = Value
            local RunService = game:GetService("RunService")
            
            while _G.buggy and RunService.RenderStepped:Wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace")["Other Islands"]["Buggy island"]:GetChildren()) do
                    if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == 'Buggy' then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                    end
                end
            end)
            end
 end    
})

Tab:AddToggle({
 Name = "FARM ARLONG",
 Default = false,
 Callback = function(Value)
            _G.arlong = Value
            local RunService = game:GetService("RunService")
            
            while _G.arlong and RunService.RenderStepped:Wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace")["Other Islands"]["Arlong island"]:GetChildren()) do
                    if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == 'Arlong' then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                    end
                end
            end)
            end
 end    
})

Tab:AddToggle({
 Name = "FARM ZEFF",
 Default = false,
 Callback = function(Value)
        _G.zeff = Value
        local RunService = game:GetService("RunService")
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3344.96094, 997.727051, -637.372864, 0.641438246, 3.27889573e-08, -0.767174661, 6.93203859e-08, 1, 1.00698976e-07, 0.767174661, -1.17773013e-07, 0.641438246)
        while _G.zeff and RunService.RenderStepped:Wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace")["Other Islands"].Baratie:GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v.Name == 'Zeff' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                end
            end
        end)
        end
 end    
})

local Tab = Window:MakeTab({
 Name = "AUTO SKILL",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddToggle({
 Name = "AUTO SKILL Z",
 Default = false,
 Callback = function(Value)
  _G.AUTOSKILLZ = Value

        while _G.AUTOSKILLZ and wait(2) do
        local gay = game:GetService("VirtualInputManager")
        gay:SendKeyEvent(true,"Z",false,game)
        game:GetService("RunService").RenderStepped:Wait()
        end
 end    
})

Tab:AddToggle({
 Name = "AUTO SKILL X",
 Default = false,
 Callback = function(Value)
  _G.AUTOSKILLX = Value

        while _G.AUTOSKILLX and wait(2) do
        local gay = game:GetService("VirtualInputManager")
        gay:SendKeyEvent(true,"X",false,game)
        game:GetService("RunService").RenderStepped:Wait()
        end
 end    
})

Tab:AddToggle({
 Name = "AUTO SKILL C",
 Default = false,
 Callback = function(Value)
  _G.AUTOSKILLC = Value

        while _G.AUTOSKILLC and wait(2) do
        local gay = game:GetService("VirtualInputManager")
        gay:SendKeyEvent(true,"C",false,game)
        game:GetService("RunService").RenderStepped:Wait()
        end
 end    
})

Tab:AddToggle({
 Name = "AUTO SKILL V",
 Default = false,
 Callback = function(Value)
  _G.AUTOSKILLV = Value

        while _G.AUTOSKILLV and wait(2) do
        local gay = game:GetService("VirtualInputManager")
        gay:SendKeyEvent(true,"V",false,game)
        game:GetService("RunService").RenderStepped:Wait()
        end
 end    
})


local Tab = Window:MakeTab({
 Name = "TELEPORT",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({
 Name = "SHELL ISLAND",
 Callback = function()
        local args = {
    [1] = "Shell Island"
}

game:GetService("ReplicatedStorage").SPAWNSHIP:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "BUGGY ISLAND",
 Callback = function()
     local args = {
    [1] = "Buggy Island"
}

game:GetService("ReplicatedStorage").SPAWNSHIP:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "ARLONG ISLAND",
 Callback = function()
     local args = {
    [1] = "Arlong Island"
}

game:GetService("ReplicatedStorage").SPAWNSHIP:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "BARATIE",
 Callback = function()
    local args = {
    [1] = "Baratie"
}

game:GetService("ReplicatedStorage").SPAWNSHIP:FireServer(unpack(args))
   end    
})


Tab:AddButton({
 Name = "BEARD ISLAND",
 Callback = function()
   local args = {
    [1] = "Beard Island"
}

game:GetService("ReplicatedStorage").SPAWNSHIP:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "AFK ZONE",
 Callback = function()
     local args = {
    [1] = "afk"
}

game:GetService("ReplicatedStorage").TELETOAFK:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "RANDOM FRUITS",
 Callback = function()
     local args = {
    [1] = "rf"
}

game:GetService("ReplicatedStorage").TELETOAFK:FireServer(unpack(args))
   end    
})


local Tab = Window:MakeTab({
 Name = "MISC",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


Tab:AddToggle({
 Name = "AUTO GET CHEST (NEED TO BE IN THE ISLAND)",
 Default = false,
 Callback = function(Value)
  _G.Chest = Value
        while wait(1) and _G.Chest do
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "Chest" and v.Parent.Name == "Workspace" then
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Chest.CFrame
                end
            end
        end
 end    
})

Tab:AddButton({
 Name = "BUY RANDOM FRUIT",
 Callback = function()
       local args = {
            [1] = "N"
        }
        
        game:GetService("ReplicatedStorage").RobuxSpinEvent:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "REDEEM ALL CODES",
 Callback = function()
       local args = {
    [1] = "SubToPitBull"
}

game:GetService("ReplicatedStorage").CodeRE:FireServer(unpack(args))

local args = {
    [1] = "SubToJZGaming"
}

game:GetService("ReplicatedStorage").CodeRE:FireServer(unpack(args))

   end    
})

Tab:AddButton({
 Name = "BUY BLACKLEG",
 Callback = function()
        local args = {
            [1] = "1"
        }
        
        game:GetService("ReplicatedStorage").BLRE:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "BUY BLACKLEG v2",
 Callback = function()
        local args = {
            [1] = "2"
        }
        
        game:GetService("ReplicatedStorage").BLRE:FireServer(unpack(args))
   end    
})



OrionLib:MakeNotification({
 Name = "Arch Piece",
 Content = "Skirpt loaded suxesfully",
 Image = "rbxassetid://4483345998",
 Time = 5
})