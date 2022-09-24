--// Exploit Check \\--
if #{firetouchinterest, fireproximityprompt, hookmetamethod, setupvalue, getgc} ~= 5 then
    while true do
    end
end

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end

--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService = game:GetService("MarketplaceService")
local GroupService = game:GetService("GroupService") 
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

--// Variables \\--
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = Workspace.CurrentCamera
local Rocks = Workspace:WaitForChild("MiningRocks")
local Robbable = Workspace:WaitForChild("Robbable")
local PlayerStats = ReplicatedStorage:WaitForChild("PlayerStats")
local Local_PlayerStats = PlayerStats:WaitForChild(Player.Name)
local Buttons = Workspace:WaitForChild("Buttons")
local Swing = ReplicatedStorage:WaitForChild("Events"):WaitForChild("WeaponEvent")

--// TP Cooldown \\--
local CD = false
function TeleportCooldown()
    if CD == true then
        return false
    else
        CD = true
        task.delay(1, function()
            CD = false
        end)
        return true
    end
end

--// Get Scrap \\--
local LootSpawns = nil
for _, A_1 in next, Workspace:GetChildren() do
    if A_1:IsA("Folder") then
        for _, A_2 in next, A_1:GetChildren() do
            if A_2:IsA("Model") and A_2:FindFirstChildWhichIsA("Script") and A_2.PrimaryPart and A_2.PrimaryPart:FindFirstChildWhichIsA("ProximityPrompt", true) then
                LootSpawns = A_1
                break
            end
        end
        if LootSpawns ~= nil then
            break
        end
    end
end
if LootSpawns == nil then
    return
end

--// Anti-Mod \\--
local PlaceInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local Group_ID = PlaceInfo.Creator.CreatorTargetId
local Roles = GroupService:GetGroupInfoAsync(Group_ID).Roles
local Ranks = {}
Ranks.Guest = 0
for Name, Rank in next, Roles do
    Ranks[Name] = Rank
end
function ModCheck(A_1)
    local Rank = Ranks[A_1:GetRoleInGroup(Group_ID)]
    if Rank and Rank > 2 then 
        Player:Kick("Mod " .. A_1.Name .. " joined your game.")
    end
end

--// Random Teleport \\--
local Random_Plat = Instance.new("Part")
Random_Plat.Parent = Workspace
Random_Plat.Size = Vector3.new(15, 1, 15)
Random_Plat.Anchored = true
Random_Plat.CastShadow = false
Random_Plat.CanCollide = true
Random_Plat.CanTouch = false
Random_Plat.CFrame = CFrame.new(
    math.random(-20000, 20000),
    math.random(5000, 20000),
    math.random(-20000, 20000)
)

--// Fullbright \\--
local Old_Ambient = Lighting.Ambient

--// Get Game-Functions \\--
local AddStamina;
local RegWalkStuff;
function UpdateFuncs()
    local Scr = Player:FindFirstChild("LocalMain", true)
    if Scr then
        for _, A_1 in next, getgc() do
            if type(A_1) == "function" and getfenv(A_1).script == Scr then
                local Name = getinfo(A_1).name
                if Name == "AddStamina" then
                    AddStamina = A_1
                elseif Name == "RegWalkStuff" then
                    RegWalkStuff = A_1
                end
            end
        end
    end
end

--// TP Bypass \\--
local OldIndex = nil
OldIndex = hookmetamethod(game, "__index", function(Self, Key)
    if not checkcaller() and tostring(Self) == "TeleportPass" and Key == "Value" then
        return true
    end
    return OldIndex(Self, Key)
end)

--// ESP Library \\--
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.AutoRemove = false
ESP.Rob = false
ESP.Tracers = false

--// UI Library \\--
local File = writefile and readfile or false
local Library = false
Success, Library = pcall(function()
    return readfile("uwuware UI.lua")
end)
if Success == false then
    Library = game:HttpGet('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware')
    if File then
        writefile("uwuware UI.lua", Library)
    end
end
Library = loadstring(Library)()
local Window = Library:CreateWindow("Helper by Ezpi#0474")

--// ESP Color \\--
ESP.Overrides.GetColor = function(A_1)
    local A_2 = ESP:GetPlrFromChar(A_1)
    if A_2 then
        local A_3 = PlayerStats:FindFirstChild(A_2.Name)
        local A_4 = A_2:FindFirstChild("Bounty", true)
        if A_3 and A_3:FindFirstChild("Cop") and A_3.Cop.Value == true then
            return Color3.new(0.2, 0.2, 1)
        elseif A_4 and A_4.Value > 0 then
            return Color3.new(1, 0.2, 0.2)
        end
    end
    return Color3.new(1, 1, 1)
end

--// Get Target \\--
function GetTarget()
    -- Variables
    local Distance = Library.flags.Range + 0.1
    local Closest = false
    local Cop = Local_PlayerStats.Cop.Value
    -- Go Through Players
    for _, A_1 in next, Players:GetPlayers() do
        local Char = A_1.Character
        -- Player Check
        if Char and A_1 ~= Player and Char:FindFirstChild("Head") and Char:FindFirstChild("Humanoid") and Char.Humanoid.Health > 0 and not Char:FindFirstChild("ForceField") then
            -- Team Check
            local Data = PlayerStats:FindFirstChild(A_1.Name)
            if Data and Data:FindFirstChild("Cop") and (Cop == false or Data.Cop.Value == false) then
                -- Distance Check
                local New_Distance = Player:DistanceFromCharacter(Char.Head.Position)
                if New_Distance < Distance then
                    Distance = New_Distance
                    Closest = Char.Head
                end
            end
        end
    end
    return Closest
end

--// Get SilentAim Target \\--
function SilentAimTarget()
    local Closest = false
    local Distance = 400
    local MousePos = Vector2.new(Mouse.X, Mouse.Y)
    for _, A_1 in next, Players.GetPlayers(Players) do
        local Char = A_1.Character
        local Hum = Char and Char.FindFirstChild(Char, "Humanoid")
        if A_1 ~= Player and Hum and Hum.Health > 0 and Char.FindFirstChild(Char, "Head") and not Char.FindFirstChild(Char, "ForceField") then
            local vector, onScreen = Camera.WorldToScreenPoint(Camera, Char.Head.Position)
            if onScreen then
                local NewDistance = (MousePos - Vector2.new(vector.X, vector.Y)).Magnitude
                if NewDistance < Distance then
                    Distance = NewDistance
                    Closest = Char.Head
                end
            end
        end
    end
    return Closest
end

--// Get Dropped Cash \\--
local Dropped_Cash = {}
for _, A_1 in next, Workspace:GetChildren() do
    local Prompt = A_1:FindFirstChildOfClass("ProximityPrompt")
    if Prompt and A_1.Name == "DroppedCash" then
        table.insert(Dropped_Cash, A_1)
    end
end
Workspace.ChildAdded:Connect(function(A_1)
    task.wait()
    if A_1.Name == "DroppedCash" then
        table.insert(Dropped_Cash, A_1)
    end
end)
Workspace.ChildRemoved:Connect(function(A_1)
    if A_1.Name == "DroppedCash" then
        local Index = table.find(Dropped_Cash, A_1)
        if Index then
            table.remove(Dropped_Cash, Index)
        end
    end
end)

--// Touch Func \\--
function Touch(A_1, A_2)
    pcall(function()
        firetouchinterest(A_1, A_2, 0)
        firetouchinterest(A_1, A_2, 1)
    end)
end

--// Get ESP Box \\--
function GetBox(A_1)
    local Box = ESP:GetBox(A_1) or false
    if Box ~= false then
        Box.Components.Distance.Transparency = 0
    end
    return Box
end

--// UI Library \\--
Window:AddToggle({
    text = "Attack-Aura",
    flag = "Attack",
    callback = function()
        while Library.flags.Attack == true and task.wait(0.1) do
            local Target = GetTarget()
            local Tool = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
            if Target and Tool and Tool:FindFirstChild("Melee") then
                Swing:FireServer("Swing")
                task.wait()
                Touch(Tool.Handle, Target)
            end
        end
    end
})
Window:AddToggle({
    text = "SilentAim"
})
Window:AddToggle({
    text = "Auto-Arrest",
    flag = "Arrest",
    callback = function()
        while Library.flags.Arrest == true and wait() do
            if Player.Character and Player.Character:FindFirstChild("Handcuffs") then
                for _, A_1 in next, Players:GetPlayers() do
                    local Char = A_1.Character
                    if Char and A_1 ~= Player and A_1:FindFirstChild("leaderstats") and A_1.leaderstats:FindFirstChild("Bounty") and A_1.leaderstats.Bounty.Value > 0 then
                        local Prox = Char:FindFirstChild("ArrestPrompt", true)
                        if Prox and Player:DistanceFromCharacter(Prox.Parent.Position) < Prox.MaxActivationDistance then
                            fireproximityprompt(Prox)
                        end
                    end
                end
            end
        end
    end
})
Window:AddToggle({
    text = "Collect Dropped Cash",
    flag = "Cash",
    callback = function()
        while Library.flags.Cash == true and task.wait() do
            for _, A_1 in next, Dropped_Cash do
                local Prompt = A_1:FindFirstChildOfClass("ProximityPrompt")
                if Prompt and Player:DistanceFromCharacter(A_1.Position) <= Prompt.MaxActivationDistance then
                    fireproximityprompt(Prompt)
                end
            end
        end
    end
})
Window:AddSlider({
    text = "Attack-Range",
    flag = "Range",
    min = 2,
    max = 18,
    float = 0.25
})
local ESP_Folder = Window:AddFolder("ESP Settings")
ESP_Folder:AddToggle({
    text = "Players",
    callback = function(A_1)
        ESP.Players = A_1
    end
})
ESP_Folder:AddToggle({
    text = "Robbable",
    flag = "Rob"
})
ESP_Folder:AddToggle({
    text = "Items/Scrap",
    flag = "Scrap"
})
ESP_Folder:AddToggle({
    text = "Tracers",
    callback = function(A_1)
        ESP.Tracers = A_1
    end
})
ESP_Folder:AddToggle({
    text = "Show Equipped",
    flag = "Equipped",
    callback = function(A_1)
        for _, A_2 in next, Players:GetPlayers() do
            local Box = Player.Character and GetBox(Player.Character)
            if Box ~= nil and Box ~= false then
                Box.Name = A_2.Name
                if A_1 == true then
                    local Tool = Player.Character:FindFirstChildOfClass("Tool")
                    if Tool and (Tool:FindFirstChild("GunType") or Tool:FindFirstChild("Melee"))then
                        Box.Name = A_2.Name .. "\n" .. Tool.Name
                    end
                end
            end
        end
    end
})
local Misc = Window:AddFolder("Misc")
Misc:AddToggle({
    text = "Fullbright",
    callback = function(A_1)
        if A_1 == true then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
            Lighting.ColorShift_Top = Color3.new(1, 1, 1)
        else
            Lighting.Ambient = Old_Ambient
            Lighting.ColorShift_Bottom = Color3.new()
            Lighting.ColorShift_Top = Color3.new()
        end
    end
})
Misc:AddToggle({
    text = "Auto-Dumbell",
    flag = "Dumbell"
})
Misc:AddToggle({
    text = "Inf. Energy",
    flag = "Energy",
    callback = function(A_1)
        -- Check
        local Amount = math.huge
        if A_1 == false then
            Amount = 100
        end
        -- Set
        setupvalue(AddStamina, 1, Amount)
    end
})
Misc:AddToggle({
    text = "Anti-Mod",
    flag = "Mod",
    callback = function(A_1)
        -- Check
        if A_1 == false then
            return
        end
        -- Mod Check
        for _, A_1 in next, Players:GetPlayers() do
            ModCheck(A_1)
            task.wait(0.25) -- Checking too fast might be resulting in timeout?
        end
    end
})
Misc:AddBind({
    text = "Teleport Forwards",
    key = "Q",
    callback = function()
        -- Debounce Check
        if TeleportCooldown() == false then    
            return
        end
        -- Teleport
        pcall(function()
            Player.Character.HumanoidRootPart.CFrame *= CFrame.new(0, 0, -Library.flags.TP_Distance)
        end)
    end
})
Misc:AddSlider({
    text = "Teleport Distance",
    flag = "TP_Distance",
    value = 5,
    min = 1,
    max = 10
})
local Teleports = Window:AddFolder("Teleports")
local Destinations = {}
for _, A_1 in next, Buttons:GetChildren() do
    local Name = A_1:FindFirstChild("ToolName")
    local Button = A_1:FindFirstChild("Button")
    if Name and Button then
        table.insert(Destinations, Name.Value)
    end
end
table.sort(Destinations)
Teleports:AddList({
    text = "Destination",
    values = Destinations,
    callback = function(A_1)
        -- Check
        local Primary = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") or false
        if Primary == false or TeleportCooldown() == false then
            return
        end
        -- Teleport
        local Button = Buttons:FindFirstChild(A_1 .. "Button") or false
        if Button == false then
            A_2 = A_1:gsub(" ", "")
            A_2 = A_2:gsub("-", "")
            Button = Buttons:FindFirstChild(A_2 .. "Button") or false
            if Button == false then
                for _, A_3 in next, Buttons:GetChildren() do
                    if A_3.ToolName.Value == A_1 or A_3.ToolName.Value == A_2 then
                        Button = A_3
                        break
                    end
                end
            end
        end
        if Button ~= false then
            Primary.CFrame = CFrame.new(Button.Button.Position) * CFrame.new(0, 3, -1)
        end
    end
})
Teleports:AddButton({
    text = "Platform TP",
    callback = function()
        -- Cooldown
        if TeleportCooldown() == false then
            return
        end
        -- Teleport
        pcall(function()
            Player.Character.HumanoidRootPart.CFrame = Random_Plat.CFrame + Vector3.new(0, 4, 0)
        end)
    end
})
Library:Init()

--// Rob ESP \\--
for _, A_1 in next, Robbable:GetChildren() do
    local Prompt = A_1:FindFirstChildWhichIsA("ProximityPrompt", true)
    ESP:Add(A_1, {
        Name = A_1.Name,
        PrimaryPart = A_1.PrimaryPart or A_1:FindFirstChild("HumanoidRootPart"),
        IsEnabled = function()
            return Prompt.Enabled == true and Library.flags.Rob == true
        end,
        Color = Color3.fromRGB(66, 233, 255)
    })
end

--// Item ESP \\--
local Scrap = {"Gear", "Blade", "Spring"}
for _, A_1 in next, LootSpawns:GetChildren() do
    local Prompt = A_1:WaitForChild("Part"):WaitForChild("Attachment"):WaitForChild("ProximityPrompt")
    ESP:Add(A_1, {
        Name = "Item/Scrap",
        PrimaryPart = A_1.PrimaryPart or A_1:FindFirstChild("Part"),
        IsEnabled = function(A_2)
            if Prompt.Enabled == true and Library.flags.Scrap == true then
                -- Get Item Name
                local New_Name = "Item/Scrap"
                for _, A_3 in next, Scrap do
                    if A_1[A_3].Transparency == 0 then
                        New_Name = A_3
                    end
                end
                ESP:GetBox(A_1).Name = New_Name
                return true
            end
            return false
        end,
        Color = Color3.new(0.3, 1, 0.3)
    })
end

--// SilentAim Namecall \\--
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}
    local NamecallMethod = getnamecallmethod()
    if NamecallMethod == "FireServer" and Args[1] == "Fire" and Library.flags.SilentAim and typeof(Args[2]) == "table" and typeof(Args[2][2]) == "Instance" then
        local Target = SilentAimTarget()
        if Target ~= false then
            for _, A_1 in next, Args[2] do
                if typeof(A_1) == "Instance" then
                    Args[2][_] = Target
                end
            end
        end
    end
    return OldNameCall(Self, unpack(Args))
end)

--// Local character \\--
function LocalChar(Char)
    -- Inf Consumable & Auto-Dumbell
    Char.ChildAdded:Connect(function(A_1)
        if A_1.Name == "Dumbell" then
            while Library.flags.Dumbell and A_1.Parent == Char and Char == Player.Character do
                A_1:Activate()
                A_1:Deactivate()
                task.wait(0.1)
            end       
        end
    end)
    -- Get New Funcs
    local Old_AddStamina = AddStamina
    local Old_RegWalkStuff = RegWalkStuff
    while (Old_AddStamina == AddStamina or Old_RegWalkStuff == RegWalkStuff) and task.wait(1) do
        UpdateFuncs()
    end
    -- Infinite Energy
    if Library.flags.Energy == true then
        setupvalue(AddStamina, 1, math.huge)
    end
end
task.spawn(function()
    LocalChar(Player.Character)
end)
Player.CharacterAdded:Connect(LocalChar)

--// Equipped Weapon ESP & Anti-Mod \\--
function CheckWeapon(Char)
    task.wait(0.05)
    local Box = GetBox(Char)
    if Box then
        Box.Name = Char.Name
    end
    Char.ChildAdded:Connect(function(A_1)
        task.wait()
        if Library.flags.Equipped == true and A_1:IsA("Tool") and (A_1:FindFirstChild("GunType") or A_1:FindFirstChild("Melee")) then
            if not Box then
                Box = GetBox(Char)
            end
            if Box then
                Box.Name = Char.Name .. "\n" .. A_1.Name
            end
        end
    end)
    Char.ChildRemoved:Connect(function(A_1)
        if A_1:IsA("Tool") then
            if not Box then
                Box = GetBox(Char)
            end
            if Box then
                Box.Name = Char.Name
            end
        end
    end)
end
for _, A_1 in next, Players:GetPlayers() do
    local Char = A_1.Character
    if Char and Char.Parent ~= nil then
        CheckWeapon(Char)
    end
    A_1.CharacterAdded:Connect(CheckWeapon)
end
Players.PlayerAdded:Connect(function(A_1)
    CheckWeapon(A_1)
    if Library.flags.Mod == true then
        ModCheck(A_1)
    end
end)