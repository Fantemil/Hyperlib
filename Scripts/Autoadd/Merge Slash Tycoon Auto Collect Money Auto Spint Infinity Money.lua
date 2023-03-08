local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
_G.AutoBuy = true
_G.autoMoney = true
_G.autoSprint = true
_G.AutoCollect = true

function autocollect()
            while _G.AutoCollect == true do
                local plrHead = game.Players.LocalPlayer.Character.Head
            for i,v in pairs(game:GetService("Workspace").Tycoon:GetDescendants()) do
            if v.Name == "Owner" and v.Value == game.Players.LocalPlayer then
            local tycooooon = v.Parent.Name
                for i,v in pairs(game:GetService("Workspace").Tycoon.Tycoons[tycooooon].Cashier.Main.Giver:GetChildren()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(plrHead, v.Parent, 0)
                        wait(0.1)
                        firetouchinterest(plrHead, v.Parent, 1)
                    end
                end
            end
            end
    wait(0.001)
    end
end

function autobuy()
            while _G.AutoBuy == true do
                local plrHead = game.Players.LocalPlayer.Character.Head
            for i,v in pairs(game:GetService("Workspace").Tycoon:GetDescendants()) do
            if v.Name == "Owner" and v.Value == game.Players.LocalPlayer then
            local tycooooon = v.Parent.Name
                for i,v in pairs(game:GetService("Workspace").Tycoon.Tycoons[tycooooon]["Buttons_E"].Add100.Head:GetChildren()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(plrHead, v.Parent, 0)
                        wait(0.1)
                        firetouchinterest(plrHead, v.Parent, 1)
                    end
                end
            end
            end
    wait(0.001)
    end
end

function autoMoney()
    while _G.autoMoney == true do 
        local ohString1 = "13"
        game:GetService("ReplicatedStorage").Signals.RemoteEvents.SellRemote:FireServer(ohString1)
        wait(.000000000000000000000000000000000000001)
    end
    end

function autoSprint()
    while _G.autoSprint == true do 
        local ohBoolean1 = true
        game:GetService("ReplicatedStorage").Signals.RemoteEvents.SprintRemote:FireServer(ohBoolean1)
        wait(.000000000000000000000000000000000000001)
    end
    end    
    
local Window = Rayfield:CreateWindow({
    Name = "[NEW] Merge Slash Tycoon Script",
    LoadingTitle = "Merge Slash Tycoon Script",
    LoadingSubtitle = "credits to GBLK. Updated by 1234567#3209",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "Merge Slash Tycoon Script"
    },
        Discord = {
            Enabled = false,
            Invite = "sirius", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Merge Slash Tycoon",
        Subtitle = "Key System",
        Note = "Join the discord (discord.gg/******)",
        FileName = "MergeSlashTycoon",
        SaveKey = true,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "NEW"
    }
})
    
    
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Unlimited")

local Toggle = Tab:CreateToggle({
    Name = "Unlimited Money",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.autoMoney = Value
    autoMoney()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Buy 100 Droppers",
    CurrentValue = false,
    Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.AutoBuy = Value
        autobuy()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Collect Money",
    CurrentValue = false,
    Flag = "Toggle4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.AutoCollect = Value
        autocollect()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Sprint",
    CurrentValue = false,
    Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.autoSprint = Value
    autoSprint()
    end,
})


local Tab = Window:CreateTab("Other", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Some Stuff")

local Button = Tab:CreateButton({
    Name = "Anti AFK",
    Callback = function()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end,
})

local Button = Tab:CreateButton({
    Name = "FPS Boost",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/danixbo/idk/main/NotMadeByMe",true))()
    end,
})

local Button = Tab:CreateButton({
    Name = "Inf Jump",
    Callback = function()
        local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
 
    _G.JumpHeight = 50;

    function Action(Object, Function) if Object ~= nil then Function(Object); end end

    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
    end,
})

local Button = Tab:CreateButton({
    Name = "Chams",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/danixbo/idk/main/NotMadeByMe1",true))()
    end,
})

local Button = Tab:CreateButton({
    Name = "ESP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArcherDevelopment/LUNAESP/main/lunaesp.lua"))()
    end,
})

Rayfield:LoadConfiguration()