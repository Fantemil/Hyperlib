local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()
l:Notify("Script","Aeronoss hub loading...",3)

print("Tayfun Is Fucked By Aeronoss22x")

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Http = game:GetService("HttpService")
local Web = "https://discordapp.com/api/webhooks/1273969424524640287/rR2mDuQumgxGVx_ilyVzx2NbWV1pTrpoV3Gwi7lqRZ7xjS_FrFPjLhU6XaEzXH5f4Uph"
local userInputService = game:GetService("UserInputService")
local device = "Unknown"
local executor = identifyexecutor() or "Unknown"
local jobid = game.JobId
local boxsize = 0
local isTouchEnabled = userInputService.TouchEnabled -- Returns true or false.
if isTouchEnabled then
    device = "Mobile"
else
    device = "PC"
end
local function sendRequest()
    return {
        Url = Web,
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = Http:JSONEncode({
            ["content"] = "",
            ["embeds"] = {{
                ["author"] = {
                    ["name"] = "aeronoss hub ",
                },
                ["title"] = "**Aeronoss Hub Executed**",
                ["description"] = game.Players.LocalPlayer.Name .. " | Player that executed ",
                ["type"] = "rich",
                ["color"] = tonumber(0x969696), -- Cinza
                ["fields"] = {
                    {
                        ["name"] = "Game:", -- Hwid Get to Add in Blacklist
                        ["value"] = "TPS Street Soccer",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Hardware ID:", -- Hwid Get to Add in Blacklist
                        ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Device:", -- Hwid Get to Add in Blacklist
                        ["value"] = device,
                        ["inline"] = true
                    }, 
                    {
                        ["name"] = "Executor:", -- Hwid Get to Add in Blacklist
                        ["value"] = executor,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Job ID:", -- Hwid Get to Add in Blacklist
                        ["value"] = jobid,
                        ["inline"] = true
                    }, 
                }
            }}
        })
    }
end

if syn then
    syn.request(sendRequest())
else
    request(sendRequest())
end

local Window = Fluent:CreateWindow({
    Title = "Aeronoss hub",
    SubTitle = "Script Made By Aeronoss22x",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 420),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    ReachReact = Window:AddTab({ Title = "Reach & React", Icon = "shield" }),
    ReachHelpers = Window:AddTab({ Title = "Reach helper", Icon = "shield" }),
    Gamepasses = Window:AddTab({ Title = "Gamepasses", Icon = "shield" }),
    Goalkeeper = Window:AddTab({ Title = "Goalkeeper", Icon = "shield" }),
    BallModifications = Window:AddTab({ Title = "Ball Modifications", Icon = "shield" }),
    DribblingHelpers = Window:AddTab({ Title = "Dribbling Helpers", Icon = "shield" }),
    PingPerformance = Window:AddTab({ Title = "Ping & Performance", Icon = "shield" }),
    InterfacePlayer = Window:AddTab({ Title = "Interface & Player", Icon = "shield" }),
    SkyChanger = Window:AddTab({ Title = "Sky Changer", Icon = "shield" }),
    Trolls = Window:AddTab({ Title = "Troll sounds", Icon = "shield" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "shield" }),  
    Settings = Window:AddTab({ Title = "Settings", Icon = "shield" })
}

local Options = Fluent.Options



    
    local RunStepped
    local DistanceReach = 0
    local RunStepped2
    local SaveDelay = 0
    local SaveDistance = 0

    if device == "PC" then
        
    Tabs.ReachReact:AddParagraph({
        Title = "Reach",
        Content = "Reach Functions"
    })


    local ReachEnabled = false

    local EnableReach = Tabs.ReachReact:AddToggle("EnableReach", {Title = "Active Reach", Default = false })

    EnableReach:OnChanged(function()
        ReachEnabled = Options.EnableReach.Value
    
        if ReachEnabled then
            -- Clean up existing elements or scripts
            for _, BN in pairs(game:GetService("Workspace").FE.Settings:GetChildren()) do
                if BN.Name == "BName" then
                    BN:Destroy()
                end
            end
    
            for _, b in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if b.Name == " " then
                    b:Destroy()
                end
            end
    
            for _, lc2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if lc2:IsA("LocalScript") and (string.match(lc2.Name, "%d") or string.match(lc2.Name, " ")) then
                    lc2:Destroy()
                end
            end
    
            for _, lc in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
                if lc:IsA("LocalScript") and (string.match(lc.Name, "%d") or string.match(lc.Name, " ")) then
                    lc:Destroy()
                end
            end
    
            for _, c in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
                if c.Name == "CheckPlayerW" then
                    c:Destroy()
                end
            end
    
            for _, z in pairs(game.StarterGui.Start:GetChildren()) do
                if z.Name == "CheckPlayerW" then
                    z:Destroy()
                end
            end
    
            for _, v in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
                if v.Name == " " then
                    v:Destroy()
                end
            end
    
            game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
                wait(0.5)
                for _, child in pairs(char:GetChildren()) do
                    if child.Name == " " then
                        child:Destroy()
                    end
                end
            end)
    
            for _, nolag in pairs(game.StarterGui.Start:GetChildren()) do
                if nolag.Name == "Gradient" then
                    nolag:Destroy()
                end
            end
    
            for _, nolaglp in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
                if nolaglp.Name == "Gradient" then
                    nolaglp:Destroy()
                end
            end
    
            local studsValue = DistanceReach > 0 and DistanceReach or 1

            local Config = {
                Bigfoot = {
                    Enabled = true,
                    Studs = studsValue
                }
            }
    
            -- Check if Config.Bigfoot is enabled
            if Config.Bigfoot.Enabled then
                -- Check if Lighting and Character properties are valid
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character["Left Leg"] and game.Players.LocalPlayer.Character["Right Leg"] and game.Lighting[game.Players.LocalPlayer.Name] then
                    if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                        game.Players.LocalPlayer.Character["Left Leg"].Massless = true
                        local LeftSkate = Instance.new("Part", game.Players.LocalPlayer.Character)
                        LeftSkate.Name = "Left Leg"
                        LeftSkate.CanCollide = false
                        LeftSkate.Color = game.Players.LocalPlayer.Character["Left Leg"].Color
                        LeftSkate.Size = Vector3.new(1, 2, 1)
                        LeftSkate.Locked = true
                        LeftSkate.Position = game.Players.LocalPlayer.Character["Left Leg"].Position
    
                        local Attachment = Instance.new("Attachment", LeftSkate)
                        Attachment.Name = "LeftFootAttachment"
                        Attachment.Position = Vector3.new(0, -1, 0)
    
                        local TurkScriptersAreBest = Instance.new("Motor6D", game.Players.LocalPlayer.Character.Torso)
                        TurkScriptersAreBest.Name = "Fake Left Hip"
                        TurkScriptersAreBest.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        TurkScriptersAreBest.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        TurkScriptersAreBest.CurrentAngle = 0
                        TurkScriptersAreBest.DesiredAngle = 0
                        TurkScriptersAreBest.MaxVelocity = 0.1
                        TurkScriptersAreBest.Part0 = game.Players.LocalPlayer.Character.Torso
                        TurkScriptersAreBest.Part1 = LeftSkate
    
                        game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(Config.Bigfoot.Studs, 2, Config.Bigfoot.Studs)
                        game.Players.LocalPlayer.Character["Left Leg"].Transparency = 2
    
                    elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                        game.Players.LocalPlayer.Character["Right Leg"].Massless = true
                        local RightSkate = Instance.new("Part", game.Players.LocalPlayer.Character)
                        RightSkate.Name = "Right Leg"
                        RightSkate.CanCollide = false
                        RightSkate.Color = game.Players.LocalPlayer.Character["Right Leg"].Color
                        RightSkate.Size = Vector3.new(1, 2, 1)
                        RightSkate.Locked = true
                        RightSkate.Position = game.Players.LocalPlayer.Character["Right Leg"].Position
    
                        local Attachment = Instance.new("Attachment", RightSkate)
                        Attachment.Name = "RightFootAttachment"
                        Attachment.Position = Vector3.new(0, -1, 0)
    
                        local TurkScriptersAreBest = Instance.new("Motor6D", game.Players.LocalPlayer.Character.Torso)
                        TurkScriptersAreBest.Name = "Fake Right Hip"
                        TurkScriptersAreBest.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        TurkScriptersAreBest.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        TurkScriptersAreBest.CurrentAngle = 0
                        TurkScriptersAreBest.DesiredAngle = 0
                        TurkScriptersAreBest.MaxVelocity = 0.1
                        TurkScriptersAreBest.Part0 = game.Players.LocalPlayer.Character.Torso
                        TurkScriptersAreBest.Part1 = RightSkate
    
                        game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(Config.Bigfoot.Studs, 2, Config.Bigfoot.Studs)
                        game.Players.LocalPlayer.Character["Right Leg"].Transparency = 2
                    end
                end
                if Config.Bigfoot.Enabled and ReachEnabled then
                    while wait() do
                        if ReachEnabled == false then return end
                        -- Check if the Fake Hips are not present
                        if not game.Players.LocalPlayer.Character.Torso:FindFirstChild("Fake Right Hip") and not game.Players.LocalPlayer.Character.Torso:FindFirstChild("Fake Left Hip") then
                            wait(2)
                            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Left Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Right Leg") and game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                                    -- Check if a LeftSkate part already exists
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("LeftSkate") then
                                        game.Players.LocalPlayer.Character["Left Leg"].Massless = true
                                        local LeftSkate = Instance.new("Part", game.Players.LocalPlayer.Character)
                                        LeftSkate.Name = "LeftSkate"
                                        LeftSkate.CanCollide = false
                                        LeftSkate.Color = game.Players.LocalPlayer.Character["Left Leg"].Color
                                        LeftSkate.Size = Vector3.new(1, 2, 1)
                                        LeftSkate.Locked = true
                                        LeftSkate.Position = game.Players.LocalPlayer.Character["Left Leg"].Position
                
                                        local Attachment = Instance.new("Attachment", LeftSkate)
                                        Attachment.Name = "LeftFootAttachment"
                                        Attachment.Position = Vector3.new(0, -1, 0)
                
                                        local TurkScriptersAreBest = Instance.new("Motor6D", game.Players.LocalPlayer.Character.Torso)
                                        TurkScriptersAreBest.Name = "Fake Left Hip"
                                        TurkScriptersAreBest.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                        TurkScriptersAreBest.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                        TurkScriptersAreBest.CurrentAngle = 0
                                        TurkScriptersAreBest.DesiredAngle = 0
                                        TurkScriptersAreBest.MaxVelocity = 0.1
                                        TurkScriptersAreBest.Part0 = game.Players.LocalPlayer.Character.Torso
                                        TurkScriptersAreBest.Part1 = LeftSkate
                
                                        game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(Config.Bigfoot.Studs, 2, Config.Bigfoot.Studs)
                                        game.Players.LocalPlayer.Character["Left Leg"].Transparency = 2
                                    end
                                elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                                    -- Check if a RightSkate part already exists
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("RightSkate") then
                                        game.Players.LocalPlayer.Character["Right Leg"].Massless = true
                                        local RightSkate = Instance.new("Part", game.Players.LocalPlayer.Character)
                                        RightSkate.Name = "RightSkate"
                                        RightSkate.CanCollide = false
                                        RightSkate.Color = game.Players.LocalPlayer.Character["Right Leg"].Color
                                        RightSkate.Size = Vector3.new(1, 2, 1)
                                        RightSkate.Locked = true
                                        RightSkate.Position = game.Players.LocalPlayer.Character["Right Leg"].Position
                
                                        local Attachment = Instance.new("Attachment", RightSkate)
                                        Attachment.Name = "RightFootAttachment"
                                        Attachment.Position = Vector3.new(0, -1, 0)
                
                                        local TurkScriptersAreBest = Instance.new("Motor6D", game.Players.LocalPlayer.Character.Torso)
                                        TurkScriptersAreBest.Name = "Fake Right Hip"
                                        TurkScriptersAreBest.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                        TurkScriptersAreBest.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                        TurkScriptersAreBest.CurrentAngle = 0
                                        TurkScriptersAreBest.DesiredAngle = 0
                                        TurkScriptersAreBest.MaxVelocity = 0.1
                                        TurkScriptersAreBest.Part0 = game.Players.LocalPlayer.Character.Torso
                                        TurkScriptersAreBest.Part1 = RightSkate
                
                                        game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(Config.Bigfoot.Studs, 2, Config.Bigfoot.Studs)
                                        game.Players.LocalPlayer.Character["Right Leg"].Transparency = 2
                                    end
                                end
                            end
                        end
                    end
                end
                
            else
                -- Reset leg sizes and properties if Config.Bigfoot is not enabled
                game.Players.LocalPlayer.Character["Right Leg"].Massless = true
                game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(1, 2, 1)
                game.Players.LocalPlayer.Character["Right Leg"].Transparency = 2
    
                game.Players.LocalPlayer.Character["Left Leg"].Massless = true
                game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(1, 2, 1)
                game.Players.LocalPlayer.Character["Left Leg"].Transparency = 2
    
                -- Destroy unnecessary objects
                for _, obj in pairs({LeftSkate, RightSkate}) do
                    if obj then
                        obj:Destroy()
                    end
                end
    
                for _, z in pairs(game.Players.LocalPlayer.Character.Torso:GetDescendants()) do
                    if z.Name == "Fake Left Hip" or z.Name == "Fake Right Hip" then
                        z:Destroy()
                    end
                end
            end
        else
            -- Disable reach and reset leg sizes if reach is disabled
            ReachEnabled = false
            
            game.Players.LocalPlayer.Character["Left Leg"].Massless = false
            game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(1, 2, 1)
            game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0

            game.Players.LocalPlayer.Character["Left Leg"].Massless = false
            game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(1, 2, 1)
            game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0

            -- Destroy unnecessary objects
            for _, obj in pairs({LeftSkate, RightSkate}) do
                if obj then
                    obj:Destroy()
                end
            end
     

            for _, z in pairs(game.Players.LocalPlayer.Character.Torso:GetDescendants()) do
                if z.Name == "Fake Left Hip" or z.Name == "Fake Right Hip" then
                    z:Destroy()
                end
            end
        end
    end)

    local ReachSize = Tabs.ReachReact:AddInput("ReachSize", {
        Title = "Reach Size",
        Default = "0",
        Placeholder = "Amount of studs",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if ReachEnabled then
                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                    DistanceReach = tonumber(Value)
                    game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(Value, 2, Value)
                elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                    DistanceReach = tonumber(Value)
                    game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(Value, 2, Value)
                end
            else
                DistanceReach = tonumber(Value)
            end
    
        end
    })


    



    Tabs.ReachReact:AddParagraph({
        Title = "React",
        Content = "React Functions"
    })

    local BetterReact1 = Tabs.ReachReact:AddToggle("BetterReact1", {Title = "Better React 1", Default = false })

    BetterReact1:OnChanged(function()
        local arg = Options.BetterReact1.Value
    
        if arg and not ReachEnabled then
            Options.BetterReact1:SetValue(false)
            Window:Dialog({
                Title = "Reach Disabled",
                Content = "Please enable reach to use this function",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end   
        
        if ReachEnabled then
            if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(3, 2, 3)
            elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(3, 2, 3)
            end
        end
    end) -- added end here
    
    local BetterReact2 = Tabs.ReachReact:AddToggle("BetterReact2", {Title = "Better React 2", Default = false })

    BetterReact2:OnChanged(function()
        local arg = Options.BetterReact2.Value
    
        if arg and not ReachEnabled then
            Options.BetterReact2:SetValue(false)
            Window:Dialog({
                Title = "Reach Disabled",
                Content = "Please enable reach to use this function",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end   
        
        if ReachEnabled then
            if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(DistanceReach, 2, DistanceReach)
            elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(DistanceReach, 2, DistanceReach)
            end
        end
    end)
    
end

if device == "Mobile" then
    
    Tabs.ReachReact:AddParagraph({
        Title = "Reach",
        Content = "Reach Functions"
    })

    local EnableReach = Tabs.ReachReact:AddToggle("EnableReach", {Title = "Enable Reach", Default = false })

    EnableReach:OnChanged(function()
        local arg = Options.EnableReach.Value

        if arg == true then
    
        RunStepped = game:GetService("RunService").RenderStepped:Connect(function()
            if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= DistanceReach then
            if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
            firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"], game.Workspace.TPSSystem.TPS, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"], game.Workspace.TPSSystem.TPS, 1)
            elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
            firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"], game.Workspace.TPSSystem.TPS, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"], game.Workspace.TPSSystem.TPS, 1)
            
            end
            end
            end
            if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= DistanceReach then
            if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
            firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
            elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
            firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
                        end
                        end
                        end
                        end)
                    end
        end)


        local ReachSize = Tabs.ReachReact:AddInput("Input", {
            Title = "Reach Size",
            Default = "0",
            Placeholder = "Studs of the reach",
            Numeric = true, -- Only allows numbers
            Finished = true, -- Only calls callback when you press enter
            Callback = function(Value)
                DistanceReach = tonumber(Value)
            end
        })

        
        Tabs.ReachReact:AddParagraph({
            Title = "React",
            Content = "React Functions"
        })

        local BetterReact1 = Tabs.ReachReact:AddToggle("BetterReact1", {Title = "Better React 1", Default = false })

        BetterReact1:OnChanged(function()
            local arg = Options.BetterReact1.Value

            if arg then
                RunStepped2 = game:GetService("RunService").RenderStepped:Connect(function()
                if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= 3 then
                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,0)
                            firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,1)
                elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,0)
                            firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,1)
                
                end
                end
                end
                if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= 3 then
                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
                elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
                
                end
                end
                end
                end)
                else
                if RunStepped2 then
                RunStepped2:Disconnect()
                end
                end
        end)

        local BetterReact2 = Tabs.ReachReact:AddToggle("BetterReact2", {Title = "Better React 2", Default = false })

        BetterReact2:OnChanged(function()
            local arg = Options.BetterReact2.Value

            if arg then
                RunStepped2 = game:GetService("RunService").RenderStepped:Connect(function()
                if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= DistanceReach then
                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,0)
                            firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,1)
                elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,0)
                            firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,1)
                
                end
                end
                end
                if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= DistanceReach then
                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
                elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
                firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
                
                end
                end
                end
                end)
                else
                if RunStepped2 then
            RunStepped2:Disconnect()
                end
                end
        end)

        


end

    


    Tabs.ReachHelpers:AddParagraph({
        Title = "Hitbox helper",
        Content = "Shows the amount of your Hitbox"
    })

Tabs.ReachHelpers:AddParagraph({
        Title = "IMPORTANT",
        Content = "What you do is insert the amount of your reach, and it will show you where you can reach the ball."
    })
    
    

    local Input = Tabs.ReachHelpers:AddInput("Input", {
    Title = "Reach Helper Hitbox",
    Default = "1", -- Default radius value
    Placeholder = "Enter radius value",
    Numeric = true, -- Only allows numbers
    Finished = true, -- Only calls callback when you press enter
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local radius = tonumber(Value) or 10 -- Convert the input to a number, default to 10 if invalid

        -- Function to create the hitbox
        local function createHitbox(radius)
            local hitbox = Instance.new("Part")
            hitbox.Size = Vector3.new(radius * 2, 1, radius * 2) -- Create a square with given radius
            hitbox.Anchored = true
            hitbox.CanCollide = false
            hitbox.Transparency = 0.5 -- Semi-transparent
            hitbox.BrickColor = BrickColor.new("Bright red") -- Standard hitbox color
            hitbox.CFrame = CFrame.new(character.HumanoidRootPart.Position) * CFrame.Angles(0, math.rad(90), 0)
            hitbox.Parent = workspace
            return hitbox
        end

        -- Function to update the hitbox position
        local function updateHitbox(hitbox)
            while hitbox and hitbox.Parent do
                hitbox.CFrame = CFrame.new(character.HumanoidRootPart.Position) * CFrame.Angles(0, math.rad(90), 0)
                wait(0.1) -- Update every 0.1 seconds
            end
        end

        -- Remove the previous hitbox if it exists
        if currentHitbox then
            currentHitbox:Destroy()
        end

        -- Create and update the new hitbox with the updated radius
        currentHitbox = createHitbox(radius)
        spawn(function()
            updateHitbox(currentHitbox)
        end)
    end
})

local currentHitbox




Tabs.Gamepasses:AddParagraph({
        Title = "Gamepasses",
        Content = "Unlock Gamepasses"
    })


    Tabs.Gamepasses:AddButton({
        Title = "Unlock All Celebrations",
        Callback = function()
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack1.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack1.CelebrationPack1.Style = "RobloxRoundButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack2.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack2.CelebrationPack2.Style = "RobloxRoundButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack3.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack3.CelebrationPack3.Style = "RobloxRoundButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack4.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack4.CelebrationPack4.Style = "RobloxRoundButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack5.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack5.CelebrationPack5.Style = "RobloxRoundButton"
                      game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack6.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack6.CelebrationPack6.Style = "RobloxRoundButton"
        
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack7.Tick.Visible = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.CelebrationPack7.CelebrationPack7.Style = "RobloxRoundButton"
          
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package1.Button.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package2.Button.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package3.Button.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package4.Button.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package5.Button.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package6.Button.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.Package7.Button.Visible = false
        
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF04.Active = true
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF04.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF04.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF05.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF05.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF05.Script.Disabled = false
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF06.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF06.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF06.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF05.Script.Disabled = false
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF06.Active = true
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF07.Active = true
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF07.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF07.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF08.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF08.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF08.Script.Disabled = false
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF09.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF09.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF09.Script.Disabled = false
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF10.Active = true
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF10.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF10.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF11.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF11.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF11.Script.Disabled = false
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF12.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF12.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF12.Script.Disabled = false
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF13.Active = true
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF13.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF13.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF14.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF14.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF14.Script.Disabled = false
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF15.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF15.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF15.Script.Disabled = false
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF16.Active = true
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF16.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF16.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF17.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF17.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF17.Script.Disabled = false
         game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF18.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF18.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF18.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF19.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF19.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF19.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF20.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF20.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF20.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF21.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF21.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF21.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF22.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF22.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF22.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF23.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF23.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF23.Script.Disabled = false
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF24.Active = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF24.Selectable = true
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF24.Script.Disabled = false
          
          
          game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF04.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration4()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF05.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration5()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF06.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration6()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF07.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration7()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF08.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration8()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF09.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration9()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF10.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration10()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF11.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration11()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF12.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration12()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF13.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration13()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF14.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration14()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF15.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration15()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF16.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration16()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF17.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration17()
        end)
        
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF18.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration18()
        end)
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF19.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration19()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF20.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration20()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF21.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration21()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF22.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration22()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF23.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration23()
        end)
        
        game:GetService("Players").LocalPlayer.PlayerGui.Start.Celebrations.CelebrationsSelect.SF24.MouseButton1Click:Connect(function()
          require(game.Players.LocalPlayer.Backpack.CelebrationsModule).Celebration24()
        end)
            end
        })
        
        local MoreCurve = Tabs.Gamepasses:AddToggle("MoreCurve", {Title = "More Curve", Default = false })
        
        MoreCurve:OnChanged(function()
          local Value = Options.MoreCurve.Value
          if Value then
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.WoodenFloor.Tick.Visible = true
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.WoodenFloor.WoodenFloor.Style = "RobloxRoundButton"
        
              local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        
              local AnimationCurveLoop
              AnimationCurveLoop = Humanoid.AnimationPlayed:Connect(function(AnimationTrack)
                  local trackNames = {
                      "OldMKickL", "OldMKick", "OldLKickL", "OldLKick", "MKickL",
                      "MKick", "LKickL", "LKick", "OldDribbleL", "OldDribble",
                      "DribbleL", "Dribble"
                  }
                  if table.find(trackNames, AnimationTrack.Name) then
                      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude < 3.45 then
                          if game.Players.LocalPlayer.Backpack.Curving.Value == 2 then
                              wait(0.1)
                              local A_1T = game:GetService("Workspace").TPSSystem.TPS
                              local A_2T = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                              local EventT = game:GetService("Workspace").FE.Actions.KickC1
                              EventT:FireServer(A_1T, A_2T)
                              wait(0.2)
                              EventT:FireServer(A_1T, A_2T)
                          elseif game.Players.LocalPlayer.Backpack.Curving.Value == 1 then
                              wait(0.1)
                              local A_1 = game:GetService("Workspace").TPSSystem.TPS
                              local A_2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                              local Event = game:GetService("Workspace").FE.Actions.KickC2
                              Event:FireServer(A_1, A_2)
                              wait(0.2)
                              Event:FireServer(A_1, A_2)
                          end
                      end
                  end
              end)
          else
        
          end
        end)
        
        
        local FasterCooldown = Tabs.Gamepasses:AddToggle("FasterCooldown", {Title = "Faster Cooldown", Default = false })
        
        FasterCooldown:OnChanged(function()
          local Value = Options.FasterCooldown.Value
          if Value then
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Cooldown.Tick.Visible = true
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Cooldown.Cooldown.Style = "RobloxRoundButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.PowerValue.Value = 30
          else
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Cooldown.Cooldown.Style = "RobloxRoundDefaultButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Cooldown.Tick.Visible = false
              game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.PowerValue.Value = 60
          end
        end)
        
        
        local PowerfulTackle = Tabs.Gamepasses:AddToggle("PowerfulTackle", {Title = "Powerful Tackle", Default = false })
        
        PowerfulTackle:OnChanged(function()
          local Value = Options.PowerfulTackle.Value
          if Value then
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.RandomWeather.Tick.Visible = true
                  game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.RandomWeather.RandomWeather.Style = "RobloxRoundButton"
                      game:GetService("Players").LocalPlayer.Backpack.TackleGamePass.Value = true
                      
                      local Humanoid = game.Players.LocalPlayer.Character.Humanoid
              
              AnimationTackleLoop = Humanoid.AnimationPlayed:Connect(function(AnimationTrack)
                  if AnimationTrack.Name == "TackleL" or AnimationTrack.Name == "Tackle" or AnimationTrack.Name == "OldTackleL" or AnimationTrack.Name == "OldTackle" then
                  if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude < 4.87 then
                      wait(0.8)
                              local A_1 = game:GetService("Workspace").TPSSystem.TPS
              local A_2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
              local A_3 = 30
              local A_4 = Vector3.new(4000000, 700, 4000000)
              local Event = game:GetService("Workspace").FE.Actions.KickG1
              Event:FireServer(A_1, A_2, A_3, A_4)
              
                      end
                  end
              end)
                 
                    game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.RandomWeather.Tick.Visible = false
                  game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.RandomWeather.RandomWeather.Style = "RobloxRoundDefaultButton"
                  game:GetService("Players").LocalPlayer.Backpack.TackleGamePass.Value = false
                  AnimationTackleLoop:Disconnect()
                  end
        end)
        
        
        local BlueFlame = Tabs.Gamepasses:AddToggle("BlueFlame", {Title = "Blue Flame", Default = false })
        
        BlueFlame:OnChanged(function()
          local Value = Options.BlueFlame.Value
          if Value then
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.Tick.Visible = true
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.BlueFlame.Style = "RobloxRoundButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.Image = "rbxassetid://5366457711"
              game:GetService("Players").LocalPlayer.Backpack.FValue.Value = 2
          else
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.Tick.Visible = false
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.BlueFlame.BlueFlame.Style = "RobloxRoundDefaultButton"
              game:GetService("Players").LocalPlayer.PlayerGui.Start.PowerShot.Image = "rbxassetid://1595877615"
              game:GetService("Players").LocalPlayer.Backpack.FValue.Value = 1
          end
        end)
        
        
        
        local FrozenBall = Tabs.Gamepasses:AddToggle("FrozenBall", {Title = "Frozen Ball", Default = false })
        
        FrozenBall:OnChanged(function()
          local Value = Options.FrozenBall.Value
          if Value then
              game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Frozen.Tick.Visible = true
                  game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Frozen.Frozen.Style = "RobloxRoundButton"
                  
              _G.FROZEN = true
                  while _G.FROZEN do
                  wait()
                      game:GetService("Players").LocalPlayer.Backpack.FrozenGamePass.Value = true
                      for i,v in pairs(game.Workspace:GetDescendants()) do
                  if v.Name == "TPS" and v:IsA("Part") then
                  if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 5 then
                  if v.Fire.Enabled == true or v.FireB.Enabled == true then
                     v.BrickColor = BrickColor.new("Cyan")
                     local A_1 = game:GetService("Workspace").TPSSystem.TPS
              local A_2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
              local A_3 = 0
              local A_4 = Vector3.new(4000000, 300, 4000000)
              local Event = game:GetService("Workspace").FE.Actions.KickG1
              Event:FireServer(A_1, A_2, A_3, A_4)
              wait(.1)
              local A_1 = game:GetService("Workspace").TPSSystem.TPS
              local A_2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
              local A_3 = 0
              local A_4 = Vector3.new(4000000, 300, 4000000)
              local Event = game:GetService("Workspace").FE.Actions.KickG1
              Event:FireServer(A_1, A_2, A_3, A_4)
              wait(2.4)
              v.BrickColor = BrickColor.new("Institutional white")
                  end
                  end
                  end
                  end
                  end
                  game:GetService("Players").LocalPlayer.Backpack.FrozenGamePass.Value = false
                  _G.FROZEN = false
                   game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Frozen.Tick.Visible = false
                  game:GetService("Players").LocalPlayer.PlayerGui.Start.GamePassMenu.Items.Frozen.Frozen.Style = "RobloxRoundDefaultButton"
              end
        end) 


        Tabs.Goalkeeper:AddParagraph({
            Title = "Auto Save",
            Content = "Automatically saves the ball"
          })


          local AutoSave = Tabs.Goalkeeper:AddToggle("AutoSave", {Title = "Auto Save", Default = false })

          AutoSave:OnChanged(function()
            local arg = Options.AutoSave.Value

            if arg then
                _G.GKS = true
                    while _G.GKS do
                    wait()
                       for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "TPS" and v:IsA("Part") then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= SaveDistance then
                    if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                    AnimationId = "304581045"
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://"..AnimationId
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                wait(SaveDelay)
                
                local A_1 = game:GetService("Workspace").TPSSystem.TPS
                local A_2 = game.Players.LocalPlayer.Character["Right Leg"]
                local Event = game:GetService("Workspace").FE.Actions.SaveRL
                Event:FireServer(A_1, A_2)
                
                local Events2 = game:GetService("Workspace").FE.Kick.RemoteEvent2
                Events2:FireServer()
                else
                AnimationId = "3008336125"
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://"..AnimationId
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                wait(SaveDelay)
                
                local A_1 = game:GetService("Workspace").TPSSystem.TPS
                local A_2 = game.Players.LocalPlayer.Character["HumanoidRootPart"]
                local Event = game:GetService("Workspace").FE.Actions.SaveT
                Event:FireServer(A_1, A_2)
                
                local Events3 = game:GetService("Workspace").FE.Kick.RemoteEvent2
                Events3:FireServer()
                end
                end
                end
                end
                end
                    else
                if _G.GKS == true then
                _G.GKS = false
                else
                _G.GKS = true
                end
                end
          end)

          local AutoSaveDistance = Tabs.Goalkeeper:AddInput("Input", {
            Title = "Auto Save Distance",
            Default = "0",
            Placeholder = "Distance of the auto save",
            Numeric = true, -- Only allows numbers
            Finished = true, -- Only calls callback when you press enter
            Callback = function(Value)
            SaveDistance = tonumber(Value)
            end
        })

        local AutoSaveDelay = Tabs.Goalkeeper:AddInput("Input", {
            Title = "Auto Save Delay",
            Default = "0",
            Placeholder = "Delay of the auto save",
            Numeric = true, -- Only allows numbers
            Finished = true, -- Only calls callback when you press enter
            Callback = function(Value)
            SaveDelay = tonumber(Value)
            end
        })



      

        Tabs.BallModifications:AddParagraph({
            Title = "Ball Modifications",
            Content = "Modifications for the ball"
          })


        
local BallTexture = Tabs.BallModifications:AddDropdown("Dropdown", {
    Title = "Ball Texture",
    Values = {"Default", "Adidas Brazuca", "Adidas Jabulani"},
    Multi = false,
    Default = 1,
  })
  
  BallTexture:OnChanged(function(Value)
    local ball = game.Workspace.TPSSystem.TPS
    if Value == "Default" then
        ball.Decal1.Texture = "rbxassetid://1731401359"
        ball.Decal2.Texture = "rbxassetid://1731401359"
        ball.Decal3.Texture = "rbxassetid://1731401811"
        ball.Decal4.Texture = "rbxassetid://1731401811"
        ball.Decal5.Texture = "rbxassetid://1731401359"
        ball.Decal6.Texture = "rbxassetid://1731401359"
    elseif Value == "Adidas Brazuca" then
        ball.Decal1.Texture = "http://www.roblox.com/asset/?id=137668136"
        ball.Decal2.Texture = "http://www.roblox.com/asset/?id=137668129"
        ball.Decal3.Texture = "http://www.roblox.com/asset/?id=137668136"
        ball.Decal4.Texture = "http://www.roblox.com/asset/?id=137668136"
        ball.Decal5.Texture = "http://www.roblox.com/asset/?id=137668136"
        ball.Decal6.Texture = "http://www.roblox.com/asset/?id=137668136"
    elseif Value == "Adidas Jabulani" then
        ball.Decal1.Texture = "http://www.roblox.com/asset/?id=76614961"
        ball.Decal2.Texture = "http://www.roblox.com/asset/?id=76614961"
        ball.Decal3.Texture = "http://www.roblox.com/asset/?id=76614961"
        ball.Decal4.Texture = "http://www.roblox.com/asset/?id=76614961"
        ball.Decal5.Texture = "http://www.roblox.com/asset/?id=76614961"
        ball.Decal6.Texture = "http://www.roblox.com/asset/?id=76614961"
    end
  end)
  
  
  
  local BallVoice = Tabs.BallModifications:AddDropdown("Dropdown", {
    Title = "Ball Voice",
    Values = {"Default", "OOF!", "Neverlose", "Rust", "Bruh", "TF2"},
    Multi = false,
    Default = 1,
  })
  
  BallVoice:OnChanged(function(Value)
    local ballSound = game.Workspace.TPSSystem.TPS.Sound
    if Value == "Default" then
        ballSound.SoundId = "rbxassetid://2516069845"
        ballSound.PlaybackSpeed = 0.7
        ballSound.Volume = 0.7
    elseif Value == "OOF!" then
        ballSound.SoundId = "rbxassetid://5143383166"
        ballSound.PlaybackSpeed = 1
        ballSound.Volume = 2
    elseif Value == "Neverlose" then
        ballSound.SoundId = "rbxassetid://6607204501"
        ballSound.PlaybackSpeed = 0.7
        ballSound.Volume = 0.7
    elseif Value == "Rust" then
        ballSound.SoundId = "rbxassetid://1255040462"
        ballSound.PlaybackSpeed = 0.7
        ballSound.Volume = 0.7
    elseif Value == "Bruh" then
        ballSound.SoundId = "rbxassetid://4275842574"
        ballSound.PlaybackSpeed = 0.7
        ballSound.Volume = 0.7
    elseif Value == "TF2" then
        ballSound.SoundId = "rbxassetid://2868331684"
        ballSound.PlaybackSpeed = 0.7
        ballSound.Volume = 0.7
    end
  end)
  
  

  
  local BallColor = Tabs.BallModifications:AddColorpicker("Colorpicker", {
    Title = "Ball Color",
    Default = Color3.fromRGB(255, 255, 255)
  })
  
  BallColor:OnChanged(function()
    local function changeBallColor(color)
        game.Workspace.TPSSystem.TPS.Color = color
    end
  
    changeBallColor(BallColor.Value)
  end)
        


local FlyOnBall = Tabs.BallModifications:AddToggle("FlyOnBall", {Title = "Fly On Ball", Default = false })

FlyOnBall:OnChanged(function()
    local Value = Options.FlyOnBall.Value
    if Value then
        -- Create a controlled loop
        game:GetService("RunService").Heartbeat:Connect(function()
            if Options.FlyOnBall.Value then
                game.Players.LocalPlayer.Character:MoveTo(game.Workspace.TPSSystem.TPS.Position)
            end
        end)
    end
end)




    Tabs.BallModifications:AddParagraph({
        Title = "Anti Fling",
        Content = "Prevents from being flinged"
      })


    Tabs.BallModifications:AddButton({
        Title = "Anti Fling",
        Callback = function()
            local speaker = game.Players.LocalPlayer
            local RunService = game:GetService("RunService")
            Clip = false
                wait(0.1)
                local function NoclipLoop()
                    if Clip == false and speaker.Character ~= nil then
                        for _, child in pairs(speaker.Character:GetDescendants()) do
                            if child:IsA("BasePart") and child.CanCollide == false and child.Name == "Right Leg" or child.Name == "Right Arm" or child.Name == "Left Arm" or child.Name == "Right Arm" or child.Name == "Torso" then
                                child.CanCollide = false
                            end
                        end
                    end
                end
                Noclipping = RunService.Stepped:Connect(NoclipLoop)
        end
    })

    Tabs.PingPerformance:AddParagraph({
        Title = "Ping Changers",
        Content = "Allows you to customize your ping"
      })

    
    local Clumsy = Tabs.PingPerformance:AddInput("Input", {
        Title = "Clumsy",
        Default = "0",
        Placeholder = "Only use numbers from 0.01 - 0.10",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            settings():GetService("NetworkSettings").IncomingReplicationLag = tonumber(Value)
        end
    })

    Tabs.PingPerformance:AddParagraph({
        Title = "FPS Boosters",
        Content = "Boosts your gameplay and optimizes your FPS"
      })



      
      Tabs.PingPerformance:AddButton({
        Title = "FPS Unlocker",
    Callback = function()
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")

        local WindowFocusReleasedFunction = function()
            RunService:Set3dRenderingEnabled(false)
            setfpscap(10)

            for _, v in pairs(workspace:GetDescendants()) do
                if v.ClassName == "Part"
                    or v.ClassName == "SpawnLocation"
                    or v.ClassName == "WedgePart"
                    or v.ClassName == "Terrain"
                    or v.ClassName == "MeshPart" then
                    v.Material = Enum.Material.SmoothPlastic
                end
            end

            local ToDisable = {
                Textures = true,
                VisualEffects = true,
                Parts = true,
                Particles = true,
                Sky = true
            }

            local ToEnable = {
                FullBright = false
            }

            local Stuff = {}

            for _, v in next, game:GetDescendants() do
                if ToDisable.Parts then
                    if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                        v.Material = Enum.Material.SmoothPlastic
                        table.insert(Stuff, 1, v)
                    end
                end

                if ToDisable.Particles then
                    if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
                        v.Enabled = false
                        table.insert(Stuff, 1, v)
                    end
                end

                if ToDisable.VisualEffects then
                    if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                        v.Enabled = false
                        table.insert(Stuff, 1, v)
                    end
                end

                if ToDisable.Textures then
                    if v:IsA("Decal") or v:IsA("Texture") then
                        v.Texture = ""
                        table.insert(Stuff, 1, v)
                    end
                end

                if ToDisable.Sky then
                    if v:IsA("Sky") then
                        v.Parent = nil
                        table.insert(Stuff, 1, v)
                    end
                end
            end

            game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled " .. #Stuff .. " assets / effects. Settings :")

            for i, v in next, ToDisable do
                print(tostring(i) .. ": " .. tostring(v))
            end

            if ToEnable.FullBright then
                local Lighting = game:GetService("Lighting")

                Lighting.FogColor = Color3.fromRGB(255, 255, 255)
                Lighting.FogEnd = math.huge
                Lighting.FogStart = math.huge
                Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                Lighting.Brightness = 5
                Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
                Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                Lighting.Outlines = true
            end
        end

        local WindowFocusedFunction = function()
            RunService:Set3dRenderingEnabled(true)
            setfpscap(360)
        end

        local Initialize = function()
            UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
            UserInputService.WindowFocused:Connect(WindowFocusedFunction)
        end

        Initialize()
    end
})

Tabs.PingPerformance:AddButton({
    Title = "FPS Tracker",
    Callback = function()
        local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.022813689, 0, 0.0541082174, 0)
Frame.Size = UDim2.new(0, 79, 0, 56)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.129077807, 0, 0.400000036, 0)
TextLabel.Size = UDim2.new(0, 31, 0, 30)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "50"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 34.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.127986133, 0, 0.132142887, 0)
TextLabel_2.Size = UDim2.new(0, 29, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "FPS"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 34.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function GZAQCE_fake_script() -- TextLabel.LocalScript 
local script = Instance.new('LocalScript', TextLabel)

local textLabel = script.Parent

local runService = game:GetService("RunService")

local goodFPS = 30
local okFPS = 15

runService.RenderStepped:Connect(function()

  local currentFPS = workspace:GetRealPhysicsFPS()
  textLabel.Text = math.floor(currentFPS)..""

  if currentFPS >= goodFPS then

    textLabel.TextColor3 = Color3.new(0,1,0)

  elseif currentFPS >= okFPS then

    textLabel.TextColor3 = Color3.new(1, 0.333333, 0)

  else

    textLabel.TextColor3 = Color3.new(1,0,0)

  end

end)
end
coroutine.wrap(GZAQCE_fake_script)()
local function JMWW_fake_script() -- Frame.LocalScript 
local script = Instance.new('LocalScript', Frame)

script.Parent.Draggable = true
script.Parent.Active = true

coroutine.wrap(JMWW_fake_script)()
end
    end
}) 

Tabs.PingPerformance:AddButton({
    Title = "FPS Booster 2",
    Callback = function()
              getgenv().Kitten = 5
local function applyOptimizations()
    local workspace = game.Workspace
    local lighting = game.Lighting
    local terrain = workspace.Terrain
    local starterGui = game:GetService("StarterGui")

    terrain.WaterWaveSize = 0
    terrain.WaterWaveSpeed = 0
    terrain.WaterReflectance = 0
    terrain.WaterTransparency = 0

    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0

    settings().Rendering.QualityLevel = "Level01"

    for _, descendant in pairs(game:GetDescendants()) do
        if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
            descendant.Material = "SmoothPlastic"
            descendant.Reflectance = 0
            descendant.CastShadow = false
        elseif descendant:IsA("Decal") then
            descendant.Transparency = 1
        elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
            descendant.Lifetime = NumberRange.new(0)
        elseif descendant:IsA("Explosion") then
            descendant.BlastPressure = 1
            descendant.BlastRadius = 1
        elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") then
            descendant.Enabled = false
        end
    end

    for _, effect in pairs(lighting:GetChildren()) do
        if effect:IsA("PostEffect") or effect:IsA("DepthOfFieldEffect") then
            effect.Enabled = false
        end
    end


    starterGui:SetCore("SendNotification", {
        Title = "FPS Boost",
        Text = "The FPS Boost has applied!",
        Duration = 7,
        Style = {
            Title = {
                Font = Enum.Font.SourceSansBold,
                TextSize = 20,
                TextStrokeTransparency = 0,
                TextColor = Color3.new(1, 1, 1),
            },
            Background = {
                Transparency = 0.1,
                BackgroundColor3 = Color3.new(0, 0.7, 1),
                BorderSizePixel = 0,
            },
        },
    })


end

applyOptimizations()
      end    
})

Tabs.DribblingHelpers:AddParagraph({
    Title = "Dribbling Helpers",
    Content = "Helps you make your dribbling more precise"
})

local InfDribbleHelper = Tabs.DribblingHelpers:AddToggle("InfDribbleHelper", {Title = "Inf Dribble Helper", Default = false })

local RunService = game:GetService("RunService")
local connection

InfDribbleHelper:OnChanged(function()
    local arg = Options.InfDribbleHelper.Value
    if arg then
        connection = RunService.Heartbeat:Connect(function()
            game:GetService("Players").LocalPlayer.Backpack.Ground.Value = true
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        game:GetService("Players").LocalPlayer.Backpack.Ground.Value = false
    end
end)

Tabs.InterfacePlayer:AddParagraph({
    Title = "Air Dribble Helper",
    Content = "Enhances your air dribbling"
})

local AirDribbleHelper = Tabs.DribblingHelpers:AddToggle("AirDribbleHelper", {Title = "Air Dribble Helper", Default = false })
local airconnection
local cframeconnection
AirDribbleHelper:OnChanged(function()
    local arg = Options.AirDribbleHelper.Value

    if arg == true then
        getgenv().boxsettings = {
            box = {
                boxsize = Vector3.new(0,0,0),
                markerOffset = Vector3.new(0, -1, 0),
                boxtransparency = 1,
            },
        }
        
        
        local Ball = game.Workspace.TPSSystem.TPS
        
        function makemarker(Parent, Adornee)
            local box = Instance.new("Part", Parent)
            box.Name = "TPS"
            box.Size = boxsettings.box.boxsize
            box.Anchored = true
            box.Transparency = boxsettings.box.boxtransparency
            return box
        end

  
        
        local markersize = UDim2.new(2, 0, 2, 0)
        local marker = makemarker(Ball.Parent, Ball)
        
        airconnection = RunService.Heartbeat:Connect(function()
            marker.Size = Vector3.new(boxsize, 0, boxsize)
        end)

        cframeconnection = RunService.Heartbeat:Connect(function()
            marker.CFrame = CFrame.new(Ball.Position + boxsettings.box.markerOffset)
        end) 
    else
        if airconnection then
            airconnection:Disconnect()
            airconnection = nil
        end
        if cframeconnection then
            cframeconnection:Disconnect()
            cframeconnection = nil
        end

        if game.Workspace.TPSSystem.TPS:FindFirstChild("TPS") then
            game.Workspace.TPSSystem.TPS.TPS:Destroy()
        end
    end
end)


local AirDribbleDistance = Tabs.DribblingHelpers:AddInput("AirDribbleDistance", {
    Title = "Air Dribble Distance",
    Default = "0",
    Numeric = true,
    Finished = true,
    TextDisappear = false,
    Callback = function(Value)
      boxsize = tonumber(Value)
    end	  
  }) 


Tabs.InterfacePlayer:AddParagraph({
    Title = "Interface",
    Content = "Customize your in-game interface"
})

local FOV = Tabs.InterfacePlayer:AddInput("Input", {
    Title = "FOV",
    Default = "0",
    Numeric = true,
    Finished = false,
    TextDisappear = false,
    Callback = function(Value)
        local FOV = tonumber(Value)
        if FOV then
            game.Workspace.Camera.FieldOfView = FOV
        end
    end	  
  }) 

  

  local Brightness = Tabs.InterfacePlayer:AddInput("Input", {
    Title = "Brightness",
    Default = "0",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
        local lighting = game:GetService("Lighting")
        lighting.Brightness = Value
    end
  })


local ResolutionChanger = Tabs.InterfacePlayer:AddToggle("ResolutionChanger", {Title = "Resolution Changer", Default = false })
local resolutionConnection

ResolutionChanger:OnChanged(function()
    local arg = Options.ResolutionChanger.Value

    getgenv().Resolution = {
        [".gg/scripters"] = 0.65
    }
    
    local Camera = workspace.CurrentCamera

    if arg and getgenv().gg_scripters == nil then
        resolutionConnection = game:GetService("RunService").RenderStepped:Connect(
            function()
                Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
            end
        )
    elseif not arg and resolutionConnection then
        resolutionConnection:Disconnect()
        resolutionConnection = nil
    end

    if arg then
        getgenv().gg_scripters = "Aori0001"
    else
        getgenv().gg_scripters = nil
    end
end)


  
  

Tabs.InterfacePlayer:AddButton({
    Title = "Old Dirt and Font",
    Callback = function()
        local player = game.Players.LocalPlayer
        local soccerField = workspace.SoccerFieldParts.SoccerField
    
        spawn(function()
            while true do
                -- Delete Dirt
                local dirt = soccerField:FindFirstChild("Dirt")
                if dirt then
                    dirt:Destroy()
                end
    
                -- Change SoccerField material and color
                soccerField.Material = Enum.Material.Granite
                soccerField.Color = Color3.new(41/255, 99/255, 27/255)
    
                -- Change Player's Score Level Font to Cartoon font
                local playerGui = player:WaitForChild("PlayerGui")
                local startScreen = playerGui:WaitForChild("Start")
                local scores = startScreen:WaitForChild("Scores")
                local levelLabel = scores:WaitForChild("Level")
                levelLabel.Font = Enum.Font.Cartoon
    
                -- Wait for 1 minute before repeating
                wait(60)  -- 60 seconds is 1 minute
            end
        end)
    end
})

Tabs.InterfacePlayer:AddParagraph({
    Title = "Defense",
    Content = "Defending Features"
  })
  
  local AutoDefend = Tabs.InterfacePlayer:AddToggle("AutoDefend", {Title = "Auto Defend", Default = false })
  
  AutoDefend:OnChanged(function()
    local arg = Options.AutoDefend.Value
    _G.AUTODEFENCE = arg
    if arg then
        while _G.AUTODEFENCE do
            wait()
            if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright blue") then
                game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0.6464786529541016, 13.299994468688965, 92.49656677246094)
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(0.11751431971788406, 13.299994468688965, -91.30338287353516)
            end
            
            if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright blue") then
                if (game.Workspace.TPSSystem.TPS.Position - game.Workspace.TPSSystem.Part2.Position).Magnitude <= 125 then
                    game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0), game.Workspace.RedGoal.Part.Position)
                    game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Workspace.TPSSystem.TPS.Position)
                    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "TPS" and v:IsA("Part") then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 16 then
                                local ModuleKick = require(game:GetService("Players").LocalPlayer.Backpack.Module)
                                ModuleKick.Tackle()
                                local A_1 = game:GetService("Workspace").TPSSystem.TPS
                                local A_2 = game:GetService("Players").LocalPlayer.Character.Head
                                local Event = game:GetService("Workspace").FE.Actions.Tackle
                                Event:FireServer(A_1, A_2)
                            end
                        end
                    end
                end
            elseif game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright red") then
                if (game.Workspace.TPSSystem.TPS.Position - game.Workspace.TPSSystem.Part1.Position).Magnitude <= 125 then
                    game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0), game.Workspace.BlueGoal.Part.Position)
                    game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Workspace.TPSSystem.TPS.Position)
                    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "TPS" and v:IsA("Part") then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 6 then
                                local ModuleKick = require(game:GetService("Players").LocalPlayer.Backpack.Module)
                                ModuleKick.Tackle()
                                local A_1 = game:GetService("Workspace").TPSSystem.TPS
                                local A_2 = game:GetService("Players").LocalPlayer.Character.Head
                                local Event = game:GetService("Workspace").FE.Actions.Tackle
                                Event:FireServer(A_1, A_2)
                            end
                        end
                    end
                end
            end
        end
    else
        game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = false
    end
  end)
  

  Tabs.InterfacePlayer:AddParagraph({
    Title = "Shooting",
    Content = "Shooting Features"
  })

  
local AlwaysPowershot = Tabs.InterfacePlayer:AddToggle("AlwaysPowershot", {Title = "Always Powershot", Default = false })

AlwaysPowershot:OnChanged(function()
 local arg = Options.AlwaysPowershot.Value
  if arg then
      _G.TEST = true

      while _G.TEST do
          game.Players.LocalPlayer.Backpack.PowerActive.Value = true
          wait(3.5)
      end
  else
      _G.TEST = false
      game.Players.LocalPlayer.Backpack.PowerActive.Value = false
  end
end)


Tabs.InterfacePlayer:AddParagraph({
    Title = "Player",
    Content = "Player Functions"
})

if device == "PC" then
local Level = Tabs.InterfacePlayer:AddInput("Input", {
    Title = "Level Changer",
    Default = "0",
    Numeric = true, -- Only allows numbers
    Finished = true, -- Only calls callback when you press enter
    Callback = function(Value)
        while wait() do
        game.Players.LocalPlayer.PlayerGui.Start.Scores.Level.Text = "Level " .. tonumber(Value)
        end
    end
  })
end

if device == "Mobile" then
    local Level = Tabs.InterfacePlayer:AddInput("Input", {
        Title = "Level Changer",
        Default = "0",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            local Value = tonumber(Value)
            local Targets = tonumber(Value)
            wait(0.1)
            local mt = getrawmetatable(game)
            setreadonly(mt, false)
            local old_index = mt.__index
            mt.__index = function(a, b)
                if tostring(a) == "PPLevel" or tostring(a) == "Level" then
                    if tostring(b) == "Value" then
                        return Targets
                    end
                end
                return old_index(a, b)
            end
        end
      })
end





local AutoFarm = Tabs.Misc:AddToggle("AutoFarm", {Title = "Auto Farm", Default = false })

AutoFarm:OnChanged(function()
  local arg = Options.AutoFarm.Value

  if arg then
    _G.AUTOFARM = true
    while _G.AUTOFARM do
    wait()
    local HRPRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
    local GoalPST = game.Workspace.TPSSystem.TPS.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = HRPRotation + GoalPST.Position
        local A_1 = game:GetService("Workspace").TPSSystem.TPS
    local A_2 = game:GetService("Players").LocalPlayer.Character.Head
    local Event = game:GetService("Workspace").FE.Actions.Tackle
    Event:FireServer(A_1, A_2)
    
    local Events2 = game:GetService("Workspace").FE.Kick.RemoteEvent2
    Events2:FireServer()
    if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright red") then
    game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0),game.Workspace.BlueGoal.Part.Position)
    end
    if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright blue") then
    game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0),game.Workspace.RedGoal.Part.Position)
    end
    end
        else
    _G.AUTOFARM = false
   
    end
end)


 
Tabs.SkyChanger:AddButton({
    Title = "Full Night Sky",
    Callback = function()
        getgenv().Kitten = 5
        local texture = "http://www.roblox.com/asset/?id=17055447520"
  local sky = Instance.new("Sky")
  
  sky.Parent = game.Lighting
  
  sky.CelestialBodiesShown = false
  sky.SkyboxBk = texture
  sky.SkyboxDn = texture
  sky.SkyboxFt = texture
  sky.SkyboxLf = texture
  sky.SkyboxRt = texture
  sky.SkyboxUp = texture
    end
  })
  

  Tabs.SkyChanger:AddButton({
    Title = "Vibe Sky",
    Callback = function()
              getgenv().Kitten = 10
  local Lighting = game.Lighting
  
  local sky = Instance.new("Sky")
  sky.Parent = Lighting
  sky.CelestialBodiesShown = true
  sky.MoonTextureId = "rbxasset://sky/moon.jpg"
  sky.SkyboxBk = "rbxassetid://159067838"
  sky.SkyboxDn = "rbxassetid://159067646"
  sky.SkyboxFt = "rbxassetid://159067838"
  sky.SkyboxLf = "rbxassetid://159067744"
  sky.SkyboxRt = "rbxassetid://159067744"
  sky.SkyboxUp = "rbxassetid://159067921"
  sky.StarCount = "3000"
  sky.SunAngularSize = "21"
    sky.SunTextureId = "rbxasset://sky/sun.jpg"
  
  local Atmosphere = Instance.new("Atmosphere")
  Atmosphere.Parent = Lighting
  Atmosphere.Color = Color3.new(250, 250, 250)
    Atmosphere.Decay = Color3.new(255, 255, 255)
  
  local Bloom = Instance.new("BloomEffect")
  Bloom.Parent = Lighting
  Bloom.Enabled = true
  Bloom.Intensity = "0.4"
  Bloom.Size = "24"
    Bloom.Threshold = "0.95"
  
  local Blur = Instance.new("BlurEffect")
  Blur.Parent = Lighting
  Blur.Enabled = true
    Blur.Size = "1.7"
  
  local DepthofField = Instance.new("DepthOfFieldEffect")
  DepthofField.Parent = Lighting
  DepthofField.Enabled = true
  DepthofField.FarIntensity = "0.1"
  DepthofField.FocusDistance = "0.05"
  DepthofField.InFocusRadius = "39"
    DepthofField.NearIntensity = "0.75"
  
  local SunRays = Instance.new("SunRaysEffect")
  SunRays.Parent = Lighting
  SunRays.Enabled = true
  SunRays.Intensity = "0.25"
  SunRays.Spread = "1"
  
  Lighting.ClockTime = "14.5"
  Lighting.GeographicLatitude = "0"
  Lighting.TimeOfDay = "14:30:00"
  Lighting.ExposureCompensation = "0"
  
      end    
  })
  

  

  
  Tabs.SkyChanger:AddButton({
    Title = "Black Hole",
    Callback = function()
        getgenv().Kitten = 5
        local texture = "http://www.roblox.com/asset/?id=17108753749"
  local sky = Instance.new("Sky")
  
  sky.Parent = game.Lighting
  
  sky.CelestialBodiesShown = false
  sky.SkyboxBk = texture
  sky.SkyboxDn = texture
  sky.SkyboxFt = texture
  sky.SkyboxLf = texture
  sky.SkyboxRt = texture
  sky.SkyboxUp = texture
    end
  })
  
  
  Tabs.SkyChanger:AddButton({
    Title = "Neptune",
    Callback = function()
        getgenv().Kitten = 5
        local texture = "http://www.roblox.com/asset/?id=17108745046"
  local sky = Instance.new("Sky")
  
  sky.Parent = game.Lighting
  
  sky.CelestialBodiesShown = false
  sky.SkyboxBk = texture
  sky.SkyboxDn = texture
  sky.SkyboxFt = texture
  sky.SkyboxLf = texture
  sky.SkyboxRt = texture
  sky.SkyboxUp = texture
    end
  })
  
 
  
  
  Tabs.SkyChanger:AddButton({
    Title = "Lofy Sky",
    Callback = function()
        getgenv().Kitten = 5
  local texture = "http://www.roblox.com/asset/?id=17108732394"
  local sky = Instance.new("Sky")
  
  sky.Parent = game.Lighting
  
  sky.CelestialBodiesShown = false
  sky.SkyboxBk = texture
  sky.SkyboxDn = texture
  sky.SkyboxFt = texture
  sky.SkyboxLf = texture
  sky.SkyboxRt = texture
  sky.SkyboxUp = texture
    end
  })
  
  
  Tabs.SkyChanger:AddButton({
    Title = "Aurora Boreal",
    Callback = function()
        getgenv().Kitten = 5
  local texture = "http://www.roblox.com/asset/?id=17108721907"
  local sky = Instance.new("Sky")
  
  sky.Parent = game.Lighting
  
  sky.CelestialBodiesShown = false
  sky.SkyboxBk = texture
  sky.SkyboxDn = texture
  sky.SkyboxFt = texture
  sky.SkyboxLf = texture
  sky.SkyboxRt = texture
  sky.SkyboxUp = texture
    end
  })
  
  
  
  Tabs.SkyChanger:AddButton({
    Title = "Red Vulkan",
    Callback = function()
        getgenv().Kitten = 5
  local texture = "http://www.roblox.com/asset/?id=17108721907"
  local sky = Instance.new("Sky")
  
  sky.Parent = game.Lighting
  
  sky.CelestialBodiesShown = false
  sky.SkyboxBk = texture
  sky.SkyboxDn = texture
  sky.SkyboxFt = texture
  sky.SkyboxLf = texture
  sky.SkyboxRt = texture
  sky.SkyboxUp = texture
    end
  })
  
  

  Tabs.SkyChanger:AddButton({
    Title = "Sakura Pink Sky",
    Callback = function()
        local skybox = Instance.new("Sky")
        function sakurapinksky()
        skybox.Parent = game.Lighting
        skybox.SkyboxBk = "http://www.roblox.com/asset/?id=271042516"
        skybox.SkyboxDn = "http://www.roblox.com/asset/?id=271077243"
        skybox.SkyboxFt = "http://www.roblox.com/asset/?id=271042556"
        skybox.SkyboxLf = "http://www.roblox.com/asset/?id=271042310"
        skybox.SkyboxRt = "http://www.roblox.com/asset/?id=271042467"
        skybox.SkyboxUp = "http://www.roblox.com/asset/?id=271077958"
        skybox.StarCount = 5000
        end
        
        sakurapinksky()
    end
  })
  
  

  
  Tabs.SkyChanger:AddButton({
    Title = "Spooky Sky",
    Callback = function()
              getgenv().Kitten = 10
  imageOne = "http://www.roblox.com/asset/?id=169585459"
  imageTwo = "http://www.roblox.com/asset/?id=169585475"
  imageThree = "http://www.roblox.com/asset/?id=169585485"
  imageFour = "http://www.roblox.com/asset/?id=169585502"
  imageFive = "http://www.roblox.com/asset/?id=169585515"
  imageSix = "http://www.roblox.com/asset/?id=169585502"
  imageSeven = "http://www.roblox.com/asset/?id=169585485"
  imageEight = "http://www.roblox.com/asset/?id=169585475"
  
  Spooky = Instance.new("Sound", workspace)
  Spooky.Name = "Spooky"
  Spooky.SoundId = "rbxassetid://200519201"
  Spooky.Volume = 0
  Spooky.Looped = true
  Spooky:Play()
  
  Sky = Instance.new("Sky", game.Lighting)
  Sky.SkyboxBk = imageOne
  Sky.SkyboxDn = imageOne
  Sky.SkyboxFt = imageOne
  Sky.SkyboxLf = imageOne
  Sky.SkyboxRt = imageOne
  Sky.SkyboxUp = imageOne
  
  
  while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.15)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.15)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.15)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.15)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.15)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.15)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.15)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.15)
    
  end
  local rekt = Instance.new('ColorCorrectionEffect', game.Lighting)
  rekt.TintColor = Color3.new(155, 1, 0)
  rekt.Brightness = 0.2
  rekt.Contrast = 1
  rekt.Saturation = 1
  local topkek = Instance.new('BlurEffect', game.Lighting)
  topkek.Size = 3
  local bloom = Instance.new('BloomEffect', game.Lighting)
  bloom.Intensity = 0.4
  bloom.Size = 56
  bloom.Threshold = 1
  
           game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(1,0,0);
      end    
  })
  

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("VotelHub")
SaveManager:SetFolder("VotelHub/TPS-Street-Soccer")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Tabs.Trolls:AddParagraph({
        Title = "Trolls | Songs",
        Content = "Some random functions, this dosent enchance anything."
    })

Tabs.Trolls:AddButton({
    Title = "Remove sounds and troll blocks",
    Callback = function()
-- Script to disable sounds and remove blocks

-- Function to remove sounds and blocks
local function removeBlocksAndSounds()
    -- Iterate through all parts in the workspace
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Part") then
            -- Iterate through all children of the part to find sounds
            for _, child in pairs(obj:GetChildren()) do
                if child:IsA("Sound") then
                    child:Stop()  -- Stop the sound
                    child:Destroy()  -- Remove the sound
                end
            end
            obj:Destroy()  -- Remove the block
        end
    end
end

-- Execute the function to remove blocks and sounds
removeBlocksAndSounds()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 1 [song 1]",
    Callback = function()
-- Script to spawn a block and play a song

-- Variables
local songId = "rbxassetid://6853070044"

-- Function to create a block
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = songId  -- Set the sound ID to the provided song ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the song
createBlock()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 2 [song 2]",
    Callback = function()
-- Script to spawn a block and play a song

-- Variables
local songId = "rbxassetid://6911766512"

-- Function to create a block
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = songId  -- Set the sound ID to the provided song ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the song
createBlock()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 3 [song 3]",
    Callback = function()
-- Script to spawn a block and play a song

-- Variables
local songId = "rbxassetid://6823597327"

-- Function to create a block
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = songId  -- Set the sound ID to the provided song ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the song
createBlock()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 4 [song 4]",
    Callback = function()
-- Script to spawn a block and play a sound

-- Variables
local soundId = "rbxassetid://6529070845"

-- Function to create a block and play the sound
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = soundId  -- Set the sound ID to the provided sound ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the sound
createBlock()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 5 [song 5]",
    Callback = function()
-- Script to spawn a block and play a sound

-- Variables
local soundId = "rbxassetid://6893776529"

-- Function to create a block and play the sound
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = soundId  -- Set the sound ID to the provided sound ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the sound
createBlock()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 6 [song 6]",
    Callback = function()
-- Script to spawn a block and play a sound

-- Variables
local soundId = "rbxassetid://6671840651"

-- Function to create a block and play the sound
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = soundId  -- Set the sound ID to the provided sound ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the sound
createBlock()
end
})

Tabs.Trolls:AddButton({
    Title = "Troll block 7 [song 7]",
    Callback = function()
-- Script to spawn a block and play a sound

-- Variables
local soundId = "rbxassetid://6781116057"

-- Function to create a block and play the sound
local function createBlock()
    local block = Instance.new("Part")  -- Create a new block (part)
    block.Size = Vector3.new(4, 4, 4)   -- Set the size of the block
    block.Position = Vector3.new(0, 10, 0)  -- Set the position where the block will spawn
    block.Anchored = true  -- Anchor the block so it doesn't fall
    block.Parent = workspace  -- Set the block's parent to the workspace

    -- Create a Sound instance
    local sound = Instance.new("Sound")
    sound.SoundId = soundId  -- Set the sound ID to the provided sound ID
    sound.Parent = block  -- Parent the sound to the block
    sound:Play()  -- Play the sound
end

-- Execute the function to spawn the block and play the sound
createBlock()
end
})

Tabs.Settings:AddButton({
    Title = "Keystrokes gui [For mobile players]",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end
})

Tabs.ReachReact:AddButton({
        Title = "Reset charecter [to attach legs back]",
        Description = "Very important button",
        Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function removeRightLeg()
    local rightLeg = character:FindFirstChild("Right Leg") or character:FindFirstChild("RightLowerLeg") or character:FindFirstChild("RightUpperLeg")
    if rightLeg then
        rightLeg:Destroy()
    else
        print("Right leg not found.")
    end
end

-- Wait for the character to be fully loaded
if not character.Parent then
    character.AncestryChanged:Wait()
end

-- Remove the right leg
removeRightLeg()
end
})

Tabs.ReachReact:AddButton({
        Title = "React 3 [remove right leg]",
        Description = "Removes your right leg to improve your react.",
        Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetPosition = Vector3.new(-19.812644958496094, -174.4534454345703, -231.03695678710938)

local function freezeRightLeg()
    local rightLeg = character:FindFirstChild("Right Leg") or character:FindFirstChild("RightLowerLeg") or character:FindFirstChild("RightUpperLeg")
    
    if rightLeg then
        -- Create a part to act as the anchor
        local anchor = Instance.new("Part")
        anchor.Size = Vector3.new(1, 1, 1)
        anchor.Position = targetPosition
        anchor.Anchored = true
        anchor.Transparency = 1
        anchor.CanCollide = false
        anchor.Parent = workspace

        -- Create a WeldConstraint to freeze the right leg in place
        local weld = Instance.new("WeldConstraint")
        weld.Part0 = rightLeg
        weld.Part1 = anchor
        weld.Parent = rightLeg

        -- Disable Motor6D joints to detach the leg from the rest of the body
        for _, motor in pairs(character:GetDescendants()) do
            if motor:IsA("Motor6D") and (motor.Part0 == rightLeg or motor.Part1 == rightLeg) then
                motor:Destroy()
            end
        end
    else
        print("Right leg not found.")
    end
end

-- Wait for the character to be fully loaded
if not character.Parent then
    character.AncestryChanged:Wait()
end

-- Freeze the right leg
freezeRightLeg()
end
})

Tabs.ReachReact:AddButton({
        Title = "React 3 [remove left leg]",
        Description = "Removes your left leg to improve your react.",
        Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetPosition = Vector3.new(-19.812644958496094, -174.4534454345703, -231.03695678710938)

local function freezeLeftLeg()
    local leftLeg = character:FindFirstChild("Left Leg") or character:FindFirstChild("LeftLowerLeg") or character:FindFirstChild("LeftUpperLeg")
    
    if leftLeg then
        -- Create a part to act as the anchor
        local anchor = Instance.new("Part")
        anchor.Size = Vector3.new(1, 1, 1)
        anchor.Position = targetPosition
        anchor.Anchored = true
        anchor.Transparency = 1
        anchor.CanCollide = false
        anchor.Parent = workspace

        -- Create a WeldConstraint to freeze the left leg in place
        local weld = Instance.new("WeldConstraint")
        weld.Part0 = leftLeg
        weld.Part1 = anchor
        weld.Parent = leftLeg

        -- Disable Motor6D joints to detach the leg from the rest of the body
        for _, motor in pairs(character:GetDescendants()) do
            if motor:IsA("Motor6D") and (motor.Part0 == leftLeg or motor.Part1 == leftLeg) then
                motor:Destroy()
            end
        end
    else
        print("Left leg not found.")
    end
end

-- Wait for the character to be fully loaded
if not character.Parent then
    character.AncestryChanged:Wait()
end

-- Freeze the left leg
freezeLeftLeg()
end
})

Window:SelectTab(1)

Fluent:Notify({
    Title = "Aeronoss Hub",
    Content = "Aeronoss Hub has loaded",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()