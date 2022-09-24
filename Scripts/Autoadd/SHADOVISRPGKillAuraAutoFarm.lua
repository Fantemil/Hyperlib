local function getexploit() local exploit = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or (KRNL_LOADED and "Krnl") or ("Unsupported") return exploit end
local Exploit = getexploit()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Shadovis RPG | NotOreoz (V3rm) ", HidePremium = false, IntroEnabled = false})
local ChangeTab = Window:MakeTab({Name = "Changelog",Icon = "rbxassetid://",PremiumOnly = false})
local KillAuraTab = Window:MakeTab({Name = "Kill Aura",Icon = "rbxassetid://",PremiumOnly = false})
local AutoFarmTab = Window:MakeTab({Name = "Auto Farm",Icon = "rbxassetid://",PremiumOnly = false})
local PlrTab = Window:MakeTab({Name = "Local Player",Icon = "rbxassetid://",PremiumOnly = false})
local ItemTab = Window:MakeTab({Name = "Grab Items",Icon = "rbxassetid://",PremiumOnly = false})
local OtherTab = Window:MakeTab({Name = "Other/Utility",Icon = "rbxassetid://",PremiumOnly = false})
local PlatformTab = Window:MakeTab({Name = "Platform",Icon = "rbxassetid://",PremiumOnly = false})
local Cont = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Container
local NPCTable = {}
local ThrowAwayTable = {}
local Nums1 = {"K","M","B","T","Qd"}
local Nums2 = {"000","000000","000000000","000000000000","000000000000000"}

getgenv().KillAura_BRUH = false
getgenv().KillAuraRange_BRUH = 25
getgenv().KillAuraAttack_BRUH = "Slash"
getgenv().KillAuraDelay_BRUH = 0

getgenv().AutoPickupItems_BRUH = false
getgenv().AutoPickupItemsNearby_BRUH = false
getgenv().AutoPickupItemsNearbyRange_BRUH = 35

getgenv().ShopToOpen_BRUH = "None"
getgenv().TextTransparency1_BRUH = 0

getgenv().KillAuraAddonTP_BRUH = false
getgenv().KillAuraAddonTPDelay_BRUH = 0.5

getgenv().AutoFarmMaster_BRUH = false
getgenv().AutoFarmDistance_BRUH = -5
getgenv().AboveOrBelow_BRUH = false
getgenv().AutoFarmKillAura_BRUH = false
getgenv().AutoFarmStayStill_BRUH = false

PlrTab:AddSlider({Name = "Walkspeed",Min = 0,Max = 250,Default = 16,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "",Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end})

PlrTab:AddButton({Name = "Anchor/Unanchor Self",Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = not game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored
end})

KillAuraTab:AddLabel("Jousts are Buggy, use at own risk.")
local wep_BRUH = nil
local KAToggle = KillAuraTab:AddToggle({Name = "Kill Aura",Default = false,Callback = function(Value)
    KillAura_BRUH = Value
    while KillAura_BRUH do
        wait(KillAuraDelay_BRUH)
        for _,v in pairs(game.Workspace.NPCs:GetChildren()) do 
            pcall(function()
                game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
                game.Workspace:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart")
                game.Workspace.NPCs:WaitForChild(v.Name):WaitForChild("HumanoidRootPart")
                if v:FindFirstChild("HumanoidRootPart") and game.Workspace.NPCs:FindFirstChild(v.Name) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).magnitude < KillAuraRange_BRUH then 
                        game.Workspace:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("Equipment")
                        for _,z in pairs(game.Workspace[game.Players.LocalPlayer.Name].Equipment:GetDescendants()) do 
                            if z:IsA("Attachment") and string.find(z.Name, "DmgPoint") then 
                                if KillAuraAttack_BRUH == "JoustHurt" then
                                    wep_BRUH = "JoustHurt"
                                    wait(0.1)
                                else
                                    wep_BRUH = KillAuraAttack_BRUH.."Event"
                                end
                                local args = {
                                    [1] = "Input",
                                    [2] = z.Parent.Name,
                                    [3] = 0,
                                    [4] = wep_BRUH,
                                    [5] = v.HumanoidRootPart
                                }
                                
                                game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end)
        end
    end
end})

KillAuraTab:AddLabel("35 Max For Default Enemies, 36+ For Large Enemies.")
KillAuraTab:AddSlider({Name = "Kill Aura Range",Min = 5,Max = 75,Default = 25,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "",Callback = function(Value)
KillAuraRange_BRUH = Value
end})

KillAuraTab:AddDropdown({Name = "Attack Type",Default = "Slash - Swords",Options = {"Slash - Swords", "Slam - Mallets", "Joust - Lance"},Callback = function(Value)
    if Value == "Slash - Swords" then 
        KillAuraAttack_BRUH = "Slash"
    elseif Value == "Slam - Mallets" then 
        KillAuraAttack_BRUH = "Slam"
    else
        KillAuraAttack_BRUH = "JoustHurt"
    end
end})

KillAuraTab:AddSlider({Name = "Attack Delay/Speed",Min = 0,Max = 5,Default = 0,Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "",Callback = function(Value)
    KillAuraDelay_BRUH = Value
end})

local test1 = nil
local NPCHRP = nil
AutoFarmTab:AddToggle({Name = "Auto Farm Toggle",Default = false,Callback = function(Value)
    AutoFarmMaster_BRUH = Value
    if Value then 
        KAToggle:Set(true)
    end
    while AutoFarmMaster_BRUH do 
        wait()
    end
    KAToggle:Set(false)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
    wait(0.1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
end})

AutoFarmTab:AddToggle({Name = "Below?",Default = false,Callback = function(Value)
    AboveOrBelow_BRUH = not Value
end})

AutoFarmTab:AddToggle({Name = "Follow Target(s)",Default = false,Callback = function(Value)
    AutoFarmStayStill_BRUH = not Value
end})

local NPCT = nil
local AutoFarm_DROPDOWN = AutoFarmTab:AddDropdown({Name = "Select NPC", Default = "None", Options = NPCTable, Callback = function(Value)
    if Value == "None" then 
    else
        NPCHRP = nil
        for _,v in pairs(game.Workspace.NPCs:GetChildren()) do 
            if v.Name == Value then 
                NPCHRP = v.HumanoidRootPart.CFrame
                NPCT = v.Name
            end
        end
        if NPCHRP == nil then 
            NPCHRP = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end})

AutoFarmTab:AddButton({Name = "Refresh NPC List",Callback = function()
    NPCTable = {}
    for _,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
            local Split1 = string.split(tostring(v),"Lv")
            local TempName = "DM NotOreoz On V3rm (Bug)"
            for _1,v1 in next, Nums1 do 
                if string.find(tostring(Split1[#Split1]),v1) then
                    if not string.find(tostring(v.Name),"000") then
                        TempName = Split1[1]..string.gsub(Split1[#Split1],v1,"")..Nums2[_1]
                        v.Name = TempName
                    end
                end
            end
            table.insert(NPCTable, v.Name)
        end
    end
    table.sort(NPCTable, function(a, s)
        return tonumber(string.match(a, "%d+")) < tonumber(string.match(s, "%d+"))
    end)
    AutoFarm_DROPDOWN:Refresh(NPCTable,true)
end})

AutoFarmTab:AddSlider({Name = "Distance",Min = 1,Max = 25,Default = 5,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "",Callback = function(Value)
    AutoFarmDistance_BRUH = Value
end})

ItemTab:AddToggle({Name = "Auto Pickup ALL Items",Default = false,Callback = function(Value)
    AutoPickupItems_BRUH = Value
    while AutoPickupItems_BRUH do 
        wait()
        for _,v in pairs(game.Workspace.Projectiles:GetChildren()) do 
            if v:IsA("UnionOperation") and v:FindFirstChild("ProximityPrompt") and v.Name ~= "Part" or v:IsA("Part") and v:FindFirstChild("ProximityPrompt") and v.Name ~= "Part" then 
                pcall(function()
                    v.CanCollide = false
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    fireproximityprompt(v.ProximityPrompt)
                end)
            end
        end
    end
end})

ItemTab:AddToggle({Name = "Auto Pickup NEARBY Items",Default = false,Callback = function(Value)
    AutoPickupItemsNearby_BRUH = Value
    while AutoPickupItemsNearby_BRUH do 
        wait()
        for _,v in pairs(game.Workspace.Projectiles:GetChildren()) do 
            if v:IsA("UnionOperation") and v:FindFirstChild("ProximityPrompt") and v.Name ~= "Part" or v:IsA("Part") and v:FindFirstChild("ProximityPrompt") and v.Name ~= "Part" then 
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < AutoPickupItemsNearbyRange_BRUH then 
                    pcall(function()
                        v.CanCollide = false
                        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        fireproximityprompt(v.ProximityPrompt)
                    end)
                end
            end
        end
    end
end})

ItemTab:AddSlider({Name = "Nearby Range",Min = 5,Max = 500,Default = 35,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "",Callback = function(Value)
    AutoPickupItemsNearbyRange_BRUH = Value
end})

local ShopNames = {"Armor Shop","Beginners Shop","General Store","Epic Store","Cavern Store","Legendary Store","Sky Store","Depths Store","Dragon"}
for _,v in pairs(game:GetService("Workspace").Stores:GetChildren()) do 
    v.Name = ShopNames[_]
end

local OldPos1 = nil
local ShopTouchInt = nil

OtherTab:AddDropdown({Name = "Shop Opener", Default = "None", Options = ShopNames, Callback = function(Value)
    if Value == "None" then 
    else
        ShopTouchInt = nil
        for _,v in pairs(game.Workspace.Stores[Value]:GetDescendants()) do 
            if v.Name == "TouchInterest" then 
                ShopTouchInt = v.Parent.CFrame
            end
        end
        if ShopTouchInt == nil then 
            ShopTouchInt = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        OldPos1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ShopTouchInt
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos1
    end
end})

OtherTab:AddButton({Name = "Get World Cubits",Callback = function()
    for _,v in pairs(game.Workspace["Client Cubits"]:GetDescendants()) do
        if v:IsA("MeshPart") and v:FindFirstChildWhichIsA("ProximityPrompt") then
            wait()
            fireproximityprompt(v:FindFirstChildWhichIsA("ProximityPrompt"))
        end
    end
end})

local StatsName = ""
local GetStatsBoost_BRUH = true
local GetStatsBoost_TEMP_BRUH = 0
local function GetStats(Bonus)
    StatsName = ""
    for _,v in pairs(Cont.Reader.Boosts:GetChildren()) do 
        if v:IsA("TextLabel") and v.Text ~= "Stats" then
            if Bonus and GetStatsBoost_BRUH then
                if v.Text == "Bonuses" then 
                    StatsName = StatsName.."\n"..v.Text.."\n"
                    GetStatsBoost_BRUH = false
                end
            else
                StatsName = StatsName.."\n"..v.Text
            end
        end
    end
    GetStatsBoost_BRUH = true
    return StatsName
end

local ex1 = false
OtherTab:AddToggle({Name = "Show Item Bonuses (ONLY) in Inventory",Default = false,Callback = function(Value)
    if Value then
        if Exploit == "Synapse" and ex1 or Exploit == "Krnl" and ex1 then 
            for i = 3,1,-1 do 
                OrionLib:MakeNotification({
                 Name = "Creating In "..i,
                 Content = "This is for SynX/Krnl; Will Freeze Your Game Temporarily",
                 Image = "rbxassetid://",
                 Time = 3
                })
            wait(1)
            end
            local Name = ""
            for _,v in pairs(Cont.Inventory.Items:GetChildren()) do 
                if v:IsA("TextButton") then
                    for _,v in pairs(v:GetChildren()) do 
                        if v.Name == "BruhLabel" then 
                            v:Destroy()
                        end
                    end
                end
            end
            
            for _,v in pairs(Cont.Inventory.Items:GetChildren()) do 
                if v:IsA("TextButton") then
                    local Button = v
                    local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
                    for i,v in pairs(events) do
                        for i,v in pairs(getconnections(Button[v])) do
                            v:Fire()
                        end
                    end
                    Name = Cont.Reader.ItemName.Text
                    local Temp = Instance.new("TextLabel")
                    Temp.Parent = v
                    Temp.Name = "BruhLabel"
                    Temp.Text = Name
                    Temp.TextColor3 = Color3.new(255,255,255)
                    Temp.Size = UDim2.new(0, 100, 0, 100)
                    Temp.TextYAlignment = 0
                    Temp.TextWrapped = true
                    Temp.Transparency = TextTransparency1_BRUH
                    Temp.BackgroundTransparency = 1
                    Temp.BorderSizePixel = 0
                    
                    local Temp = Instance.new("TextLabel")
                    Temp.Parent = v
                    Temp.Name = "BruhLabel"
                    Temp.Text = GetStats(true)
                    Temp.TextColor3 = Color3.new(255,255,255)
                    Temp.Size = UDim2.new(0, 100, 0, 100)
                    Temp.TextYAlignment = 2
                    Temp.TextWrapped = true
                    Temp.TextScaled = true
                    Temp.Transparency = TextTransparency1_BRUH
                    Temp.BackgroundTransparency = 1
                    Temp.BorderSizePixel = 0
                end
            end
            OrionLib:MakeNotification({
             Name = "Done!",
             Content = "Open Your Inventory",
             Image = "rbxassetid://",
             Time = 5
            })
        elseif Exploit ~= "Synapse" and ex1 then 
            OrionLib:MakeNotification({
             Name = "Not on Synapse.",
             Content = "This is a SynX/Krnl ONLY Feature",
             Image = "rbxassetid://",
             Time = 15
            })
        end
    else
        for _,v in pairs(Cont.Inventory.Items:GetChildren()) do 
            if v:IsA("TextButton") then
                for _,v in pairs(v:GetChildren()) do 
                    if v.Name == "BruhLabel" then 
                        v:Destroy()
                    end
                end
            end
        end
    end
end})

OtherTab:AddToggle({Name = "Show Item Stats in Inventory",Default = false,Callback = function(Value)
    if Value then
        if Exploit == "Synapse" and ex1 or Exploit == "Krnl" and ex1 then 
            for i = 3,1,-1 do 
                OrionLib:MakeNotification({
                 Name = "Creating In "..i,
                 Content = "This is for SynX/Krnl; Will Freeze Your Game Temporarily",
                 Image = "rbxassetid://",
                 Time = 3
                })
            wait(1)
            end
            local Name = ""
            for _,v in pairs(Cont.Inventory.Items:GetChildren()) do 
                if v:IsA("TextButton") then
                    for _,v in pairs(v:GetChildren()) do 
                        if v.Name == "BruhLabel" then 
                            v:Destroy()
                        end
                    end
                end
            end
            
            for _,v in pairs(Cont.Inventory.Items:GetChildren()) do 
                if v:IsA("TextButton") then
                    local Button = v
                    local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
                    for i,v in pairs(events) do
                        for i,v in pairs(getconnections(Button[v])) do
                            v:Fire()
                        end
                    end
                    Name = Cont.Reader.ItemName.Text
                    local Temp = Instance.new("TextLabel")
                    Temp.Parent = v
                    Temp.Name = "BruhLabel"
                    Temp.Text = Name
                    Temp.TextColor3 = Color3.new(255,255,255)
                    Temp.Size = UDim2.new(0, 100, 0, 100)
                    Temp.TextYAlignment = 0
                    Temp.TextWrapped = true
                    Temp.Transparency = TextTransparency1_BRUH
                    Temp.BackgroundTransparency = 1
                    Temp.BorderSizePixel = 0
                    
                    local Temp = Instance.new("TextLabel")
                    Temp.Parent = v
                    Temp.Name = "BruhLabel"
                    Temp.Text = GetStats(false)
                    Temp.TextColor3 = Color3.new(255,255,255)
                    Temp.Size = UDim2.new(0, 100, 0, 100)
                    Temp.TextYAlignment = 2
                    Temp.TextWrapped = true
                    Temp.TextScaled = true
                    Temp.Transparency = TextTransparency1_BRUH
                    Temp.BackgroundTransparency = 1
                    Temp.BorderSizePixel = 0
                end
            end
            OrionLib:MakeNotification({
             Name = "Done!",
             Content = "Open Your Inventory",
             Image = "rbxassetid://",
             Time = 5
            })
        elseif Exploit ~= "Synapse" and ex1 then 
            OrionLib:MakeNotification({
             Name = "Not on Synapse.",
             Content = "This is a SynX/Krnl ONLY Feature",
             Image = "rbxassetid://",
             Time = 15
            })
        end
    else
        for _,v in pairs(Cont.Inventory.Items:GetChildren()) do 
            if v:IsA("TextButton") then
                for _,v in pairs(v:GetChildren()) do 
                    if v.Name == "BruhLabel" then 
                        v:Destroy()
                    end
                end
            end
        end
    end
end})
ex1 = true

OtherTab:AddSlider({Name = "Text Transparency (For Above)",Min = 0,Max = 0.9,Default = 0,Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "",Callback = function(Value)
    TextTransparency1_BRUH = Value
end})

OtherTab:AddToggle({Name = "Old Numbers (Enemy HP)",Default = false,Callback = function(Value)
    if Value then
        
    end
end})

PlatformTab:AddParagraph("Platform Info","this will create a platform. wow. useful for going above enemies or groups and using killaura (thats how im gonna use it lol)")

PlatformTab:AddButton({Name = "Create Platform",Callback = function()
    for _,v in pairs(game.Workspace:GetChildren()) do if string.find(v.Name,"BRUH_SOUND_EFFECT_") then v:Destroy() end end
    
    local BruhFolder = Instance.new("Folder")
    BruhFolder.Parent = game.Workspace
    BruhFolder.Name = "BRUH_SOUND_EFFECT_"..math.random(500,15000)
    
    local PlatFormPart = Instance.new("Part")
    PlatFormPart.Parent = BruhFolder
    PlatFormPart.Name = "b"
    PlatFormPart.Size = Vector3.new(20,1,20)
    PlatFormPart.CanCollide = true
    PlatFormPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
    PlatFormPart.Anchored = true
    PlatFormPart.Transparency = 0.5
    PlatFormPart.Color = Color3.fromRGB(1,1,1)
end})

PlatformTab:AddButton({Name = "TP to Platform",Callback = function()
    for _,v in pairs(game.Workspace:GetChildren()) do if string.find(v.Name,"BRUH_SOUND_EFFECT_") then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.b.CFrame * CFrame.new(0,2,0) end end
end})

KillAuraTab:AddParagraph("KA Addon Info","press buttons below to create a platform/part, then turn on the toggle to teleport between those parts.")

local KAANum = 0

KillAuraTab:AddButton({Name = "Create TP Part",Callback = function()
    KAANum = KAANum + 1
    for _,v in pairs(game.Workspace:GetChildren()) do if string.find(v.Name,"BRUH_SOUND_EFFECT2_") then BF2N = v.Name end end
    local PlatFormPart2 = Instance.new("Part")
    PlatFormPart2.Parent = game.Workspace[BF2N]
    PlatFormPart2.Name = "TP_"..KAANum
    PlatFormPart2.Size = Vector3.new(20,1,20)
    PlatFormPart2.CanCollide = true
    PlatFormPart2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
    PlatFormPart2.Anchored = true
    PlatFormPart2.Transparency = 0.5
    PlatFormPart2.Color = Color3.fromRGB(1,1,1)
end})

KillAuraTab:AddButton({Name = "Clear All TP Parts",Callback = function()
    for _,v in pairs(game.Workspace:GetChildren()) do if string.find(v.Name,"BRUH_SOUND_EFFECT2_") then v:Destroy() end end
    local BruhFolder2 = Instance.new("Folder")
    BruhFolder2.Parent = game.Workspace
    BruhFolder2.Name = "BRUH_SOUND_EFFECT2_"..math.random(500,15000)
    KAANum = 0
end})

KillAuraTab:AddToggle({Name = "TP Toggle",Default = false,Callback = function(Value)
    KillAuraAddonTP_BRUH = Value
    while KillAuraAddonTP_BRUH do 
        wait()
        for _,v in pairs(game.Workspace:GetChildren()) do if string.find(v.Name,"BRUH_SOUND_EFFECT2_") then BF2N = v.Name end end
        for _,v in pairs(game.Workspace[BF2N]:GetChildren()) do 
            if KillAuraAddonTP_BRUH then
                wait(KillAuraAddonTPDelay_BRUH)
                if KillAuraAddonTP_BRUH then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,1,0)
                end
            end
        end
    end
end})

KillAuraTab:AddSlider({Name = "TP Delay",Min = 0,Max = 5,Default = 0.5,Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "",Callback = function(Value)
    KillAuraAddonTPDelay_BRUH = Value
end})

OrionLib:MakeNotification({
 Name = "NotOreoz (v3rm)",
 Content = ":) No Discord, DM on V3rm",
 Image = "rbxassetid://",
 Time = 30
})
if Exploit == "Unsupported" then 
    OrionLib:MakeNotification({
     Name = "Read Me!",
     Content = "This was made for KNRL/Synapse, script may break.",
     Image = "rbxassetid://",
     Time = 30
    })
end

for _,v in pairs(game.Workspace:GetChildren()) do if string.find(v.Name,"BRUH_SOUND_EFFECT2_") then v:Destroy() end end
local BruhFolder2 = Instance.new("Folder")
BruhFolder2.Parent = game.Workspace
BruhFolder2.Name = "BRUH_SOUND_EFFECT2_"..math.random(500,15000)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

game:GetService("RunService").RenderStepped:Connect(function(step)
    if AutoFarmMaster_BRUH and NPCHRP ~= nil and NPCT ~= nil then
        if not AutoFarmStayStill_BRUH then
            for _,v in pairs(game.Workspace.NPCs:GetChildren()) do 
                if string.find(v.Name,NPCT) and v:FindFirstChild("HumanoidRootPart") then 
                    NPCHRP = v.HumanoidRootPart.CFrame
                else
                    NPCHRP = NPCHRP
                end
            end
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if AboveOrBelow_BRUH then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NPCHRP * CFrame.new(0,AutoFarmDistance_BRUH,0)
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NPCHRP * CFrame.new(0,tonumber("-"..AutoFarmDistance_BRUH),0)
        end
    end
end)

ChangeTab:AddParagraph("ReadMe","If you need to report a bug, request something or give feedback dm me on V3rm ONLY. -NotOreoz (V3rm)")

ChangeTab:AddParagraph("V2.6.1",[[
    +Removed Auto Refresh (Button Now)
    ; i forgot orion was dogshit
    and cant handle big tables
    my bad :>
    
    NotOreoz (V3rm)
    ]])

ChangeTab:AddParagraph("V2.6",[[
    +Select Target (Auto Farm),
    changes K,M,B,T,Qd to their
    correct numbers
    ; Enemies Only 
    ; Other things break the game
    
    +Removed Select Target (Auto Farm)
    ; Automatic, every 5 seconds it reloads
    
    NotOreoz (V3rm)
    ]])


ChangeTab:AddParagraph("V2.5.2",[[
    +Fixed not being able to jump after autofarm
    
    ; AutoFarm Follow Target works on enemies with the
    same name, which lets you multi-target 
    (Might add multi-target soon)
    NotOreoz (V3rm)
    ]])

ChangeTab:AddParagraph("V2.5.1",[[
    +Fixed not being able to fly after autofarm
    
    +Fixed Shop Opener (like 3 versions ago lol)
    
    NotOreoz (V3rm)
    ]])

ChangeTab:AddParagraph("V2.5",[[
    +Fixed Chestplate Pickup (Grab Items)
    +Added Option to Follow Targets (Auto Farm)
    
    -Removed TP Tab 
    -Removed Discord Tab
    
    NotOreoz (V3rm)
    ]])

OrionLib:Init()