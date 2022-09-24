--// Exploit Check \\--
if firetouchinterest == nil then
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

--// Wait for game to load \\--
while game:IsLoaded() == false do
    wait()
end

--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Teams = game:GetService("Teams")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Player = Players.LocalPlayer
local Food_Level = Workspace:WaitForChild("FoodSupplies"):WaitForChild("TownSupply"):WaitForChild("FoodLevel")
local Teams_Table = {}

--// Folders \\--
local Barbarians = Workspace:WaitForChild("Barbarians")
local Karts = Workspace:WaitForChild("Karts")
local Houses = Workspace:WaitForChild("Houses")
local Stores = Workspace:WaitForChild("Stores")
local Peels = Workspace:WaitForChild("BananaPeels")
local Harvest = {
    Rice = Workspace:WaitForChild("Rice"),
    Trees = Workspace:WaitForChild("Trees")
}

--// Get Teams \\--
for _, Team in next, Teams:GetChildren() do
    table.insert(Teams_Table, Team.Name)
end
table.sort(Teams_Table)

--// Libraries \\--
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Generic GUI by Ezpi#0474")

--// General \\--

-- ESP
ESP:Toggle(true)
ESP.Players = false
ESP.Names = false
Window:AddToggle({
    text = "Player ESP",
    callback = function(A_1)
        ESP.Players = A_1
    end
})
Window:AddToggle({
    text = "Money Tree ESP",
    flag = "Money_Tree"
})
Window:AddToggle({
    text = "ESP Names",
    callback = function(A_1)
        ESP.Names = A_1
    end
})
ESP:AddObjectListener(Harvest.Trees, {
    Color =  Color3.fromRGB(255, 50, 190),
    Type = "Model",
    PrimaryPart = function(A_1)
        for i = 1, 10 do
            local Primary = A_1:FindFirstChild("Middle", true)
            if Primary then
                return Primary
            end
            wait(0.8)
        end
        return false
    end,
    CustomName = "Money Tree",
    IsEnabled = function(A_1)
        if Library.flags.Money_Tree == false then
            return false
        end
        local Model = A_1.PrimaryPart.Parent.Parent
        if Model:IsA("Model") and Model.Name:find("Money") and (not Model:FindFirstChild("Owner") or Model.Owner.Value == Player) then
            return true
        end
        return false
    end
})

-- Auto Sprint
local Movement_Keys = {"W", "A", "S", "D"}
Window:AddToggle({
    text = "Auto Sprint",
    flag = "Sprint"
})
UserInputService.InputBegan:Connect(function(Input, Process)
    if Library.flags.Sprint and UserInputService:IsKeyDown(Enum.KeyCode.Q) == false and table.find(Movement_Keys, Input.KeyCode.Name) and Process == false then
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
        local Down = true
        while Down and task.wait() do
            Down = false
            for _, A_1 in next, Movement_Keys do
                if UserInputService:IsKeyDown(Enum.KeyCode[A_1]) then
                    Down = true
                end
            end
        end
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
    end
end)

-- Rejoin
Window:AddButton({
    text = "Rejoin Server",
    callback = function()
        if typeof(syn) == "table" and syn.queue_on_teleport then
            syn.queue_on_teleport(game:HttpGetAsync("https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/Generic_GUI"))
        end
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Player)
    end
})

--// Get Tool \\--
function GetTool(Name)
    local Tool = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
    if Tool and Tool:FindFirstChild("Handle") and Tool.Name:find(Name) then
        return Tool
    end
    return false
end

--// Get Barbarian Player/NPC \\--
function GetClosestEnemy(Handle, Mag)
    -- Variables
    local Closest = false
    local Distance = Mag
    -- Enemy Barbarian
    if Player.Team.Name ~= "Barbarian" and Library.flags.Barbarian_SwordAura == true then
        for _, A_1 in next, Barbarians:GetChildren() do
            if A_1:FindFirstChild("Humanoid") and A_1.Humanoid.Health > 0 and A_1:FindFirstChild("HumanoidRootPart") then
                local Dist = (Handle - A_1.HumanoidRootPart.Position).magnitude
                if Dist < Distance then
                    Closest = A_1.HumanoidRootPart
                    Distance = Dist
                end
            end
        end
    end
    -- Enemy Player
    for _, A_1 in next, Players:GetPlayers() do
        local Char = A_1.Character
        local Humanoid = Char and Char:FindFirstChild("Humanoid")
        if Char and Humanoid and A_1 ~= Player and Library.flags[A_1.Team.Name .. "_SwordAura"] == true and Char.PrimaryPart and Humanoid.Health > 0 then
            local Dist = (Handle - Char.PrimaryPart.Position).magnitude
            if Dist < Distance then
                Distance = Dist
                Closest = Char.PrimaryPart
            end
        end
    end
    return Closest
end

--// Get Closest Structure \\--
function GetClosestStructure(Handle)
    local Distance = Library.flags.Farming_Range
    local Pos = Handle.Position
    -- Houses
    for _, A_1 in next, Houses:GetChildren() do
        if A_1:IsA("Model") and A_1.PrimaryPart and (Pos - A_1.PrimaryPart.Position).magnitude <= Distance + 6 then
            return A_1.PrimaryPart
        end
    end
    -- Stores
    for _, A_1 in next, Stores:GetChildren() do
        local Break = A_1:FindFirstChild("Breakable")
        if Break and (Pos - Break.Position).magnitude <= Distance + 2 then
            return Break
        end
    end
    -- Gate
    local Door = Workspace:WaitForChild("Gate").Door
    if (Pos - Door.Position).magnitude <= Distance - 1 then
        return Door
    end
    -- Prison
    local Prison = Workspace:WaitForChild("JailGate").FrontDoor.Breakable
    if (Pos - Prison.Position).magnitude <= Distance - 2 then
        return Prison
    end
    return false
end

--// Touch Function \\--
function Touch(Part, Touching)
    pcall(function()
        firetouchinterest(Part, Touching, 0)
        firetouchinterest(Part, Touching, 1)
    end)
end

--// Combat Aura \\--
local Sword_Aura = Window:AddFolder("Kill-Aura")
Sword_Aura:AddToggle({
    text = "Sword Aura",
    flag = "Sword_Aura",
    callback = function()
        while Library.flags.Sword_Aura do
            local Sword = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
            if Sword and Sword.Name:find("Sword") and Sword:FindFirstChild("Handle") then
                local To_Attack = GetClosestEnemy(Sword.Handle.Position, Library.flags.Sword_Aura_Distance)
                if To_Attack ~= false then
                    Sword:Activate()
                    Touch(Sword.Handle, To_Attack)
                end
            end
            task.wait()
        end
    end
})
Sword_Aura:AddToggle({
    text = "Bow Aura?",
    flag = "Bow",
    callback = function()
        while Library.flags.Bow do
            local Bow = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
            if Bow and Bow:FindFirstChild("Handle") and Bow:FindFirstChild("RemoteEvent") and Bow.Handle:FindFirstChild("Flash") then
                local Bow_Position = Bow.Handle.Position
                local To_Attack = GetClosestEnemy(Bow_Position, Library.flags.Bow_Aura_Distance)
                if To_Attack ~= false then
                    Bow.RemoteEvent:FireServer("fire", (To_Attack.Position - Bow_Position).unit, Bow_Position)
                end
            end
            task.wait(0.1)
        end
    end
})
Sword_Aura:AddSlider({
    text = "Sword Range",
    flag = "Sword_Aura_Distance",
    min = 4,
    max = 11,
    float = 0.5
})
Sword_Aura:AddSlider({
    text = "Bow Range",
    flag = "Bow_Aura_Distance",
    min = 5,
    max = 100,
    float = 1,
    value = 40
})
local Sword_Targeting = Sword_Aura:AddFolder("Targets")
for _, A_1 in next, Teams_Table do
    Sword_Targeting:AddToggle({
        text = A_1,
        flag = A_1 .. "_SwordAura"
    })
end

--// Get Healthy Player \\--
function GetHealthy()
    local Closest = false
    local Distance = Library.flags.Inf_Heal_Distance == true and math.huge or Library.flags.Heal_Distance
    for _, A_1 in next, Players:GetPlayers() do
        local Char = A_1.Character
        if A_1 ~= Player and Library.flags[A_1.Team.Name .. "_Heal"] == true and Char and Char.PrimaryPart and Char:FindFirstChild("Humanoid") and Char.Humanoid.Health > 0 and Char.Humanoid.Health < Char.Humanoid.MaxHealth then
            local Dist = Player:DistanceFromCharacter(Char.PrimaryPart.Position)
            if Dist < Distance then
                Distance = Dist
                Closest = Char.PrimaryPart
            end
        end
    end
    return Closest
end

--// Get Closest Harvestable \\--
function GetHarvestable(Handle, Crop)
    local Closest = false
    local Distance = Library.flags.Farming_Range
    for _, A_1 in next, Harvest[Crop]:GetChildren() do
        local Middle = A_1:FindFirstChild("Middle", true)
        if Middle and A_1:FindFirstChild("Health") and A_1.Health.Value > 0 then
            local Dist = (Handle.Position - Middle.Position).magnitude
            if Dist < Distance then
                Distance = Dist
                Closest = Middle
            end
        end
    end
    return Closest
end

--// Doctor \\--
local Doctor = Window:AddFolder("Doctor")
Doctor:AddToggle({
    text = "Heal Aura",
    flag = "Heal",
    callback = function()
        while Library.flags.Heal do
            local MedKit = GetTool("Bandage")
            if MedKit then
                local To_Heal = GetHealthy()
                if To_Heal ~= false then
                    MedKit:Activate()
                    Touch(MedKit.Handle, To_Heal)
                end
            end
            task.wait(0.1)
        end
    end,
})
Doctor:AddToggle({
    text = "Inf. Range",
    flag = "Inf_Heal_Distance"
})
Doctor:AddSlider({
    text = "Heal Distance",
    min = 4,
    max = 150,
    float = 1,
    flag = "Heal_Distance"
})
local Heal_Selection = Doctor:AddFolder("Teams to Heal")
for _, A_1 in next, Teams_Table do
    Heal_Selection:AddToggle({
        text = A_1,
        flag = A_1 .. "_Heal"
    })
end

--// Guard \\--
local Guard = Window:AddFolder("Guard")
Guard:AddToggle({
    text = "Arrest Aura",
    flag = "Arrest",
    callback = function()
        while Library.flags.Arrest do
            local Distance = 13
            local Arrest_Tool = GetTool("Handcuffs")
            if Arrest_Tool then
                for _, A_1 in next, Players:GetPlayers() do
                    local Stats = A_1:FindFirstChild("stats")
                    local Char = A_1.Character
                    if A_1 ~= Player and Stats and Char and Char.PrimaryPart and Stats:FindFirstChild("Arrestable") and Stats.Arrestable.Value == true and Player:DistanceFromCharacter(Char.PrimaryPart.Position) <= Distance then
                        Arrest_Tool:Activate()
                        Touch(Arrest_Tool.Handle, Char.PrimaryPart)
                    end
                end
            end
            task.wait(0.1)
        end
    end
})

--// Landlord \\--
local Landlord = Window:AddFolder("Landlord")
Landlord:AddToggle({
    text = "Rent Collection Aura",
    flag = "Rent",
    callback = function()
        while Library.flags.Rent do
            local Distance = Library.flags.Inf_Rent_Range == true and math.huge or Library.flags.Rent_Range
            local Rent_Tool = GetTool("Rent")
            if Rent_Tool then
                for _, A_1 in next, Players:GetPlayers() do
                    local Stats = A_1:FindFirstChild("stats")
                    local Char = A_1.Character
                    if A_1 ~= Player and Stats and Char and Char.PrimaryPart and Stats:FindFirstChild("RentDue") and Stats.RentDue.Value > 0 and Player:DistanceFromCharacter(Char.PrimaryPart.Position) <= Distance then
                        Rent_Tool:Activate()
                        Touch(Rent_Tool.Handle, Char.PrimaryPart)
                    end
                end
            end            
            task.wait()
        end
    end
})
Landlord:AddSlider({
    text = "Collection Range",
    flag = "Rent_Range",
    min = 4,
    max = 40,
    value = 5
})
Landlord:AddToggle({
    text = "Inf. Range",
    flag = "Inf_Rent_Range"
})

--// Barbarian \\--
local Barbarian = Window:AddFolder("Barbarian")
Barbarian:AddToggle({
    text = "Food-Steal Aura",
    flag = "Food_Aura",
    callback = function()
        while Library.flags.Food_Aura do
            local Steal_Food = GetTool("steal food")
            if Steal_Food and Steal_Food:FindFirstChild("Food") and Steal_Food.Food.Transparency ~= 0 and Player:DistanceFromCharacter(Food_Level.Position) <= 20 then
                Steal_Food:Activate()
                Touch(Steal_Food.Handle, Food_Level)
            end
            task.wait(0.1)
        end
    end
})

--// Jester \\--
if isnetworkowner ~= nil then
    local Jester = Window:AddFolder("Jester")
    Jester:AddLabel({
        text = "Stand next to peel"
    })
    Jester:AddToggle({
        text = "Auto-Slip Enabled",
        flag = "Slip",
        callback = function()
            while Library.flags.Slip do
                local Distance = Library.flags.Slip_Range
                for _, A_1 in next, Peels:GetChildren() do
                    -- Check if player owns the peel
                    if isnetworkowner(A_1) then
                        -- Trip Players
                        for _, A_2 in next, Players:GetPlayers() do
                            local Char = A_2.Character
                            local Hum = Char and Char:FindFirstChild("Humanoid")
                            if A_2 ~= Player and A_2.Team and Library.flags[A_2.Team.Name .. "_Slip"] == true and Char and Hum and Char.PrimaryPart and (A_1.Position - Char.PrimaryPart.Position).magnitude <= Distance and Hum and Hum.Health >= 0 and (Library.flags.Seated_Slip == true and Hum.Sit == true or Library.flags.Seated_Slip == false) and Hum:GetState() ~= Enum.HumanoidStateType.Physics then
                                Touch(A_1, Char.PrimaryPart)
                                task.wait(Library.flags.Slip_Delay)
                            end
                        end
                    end
                end
                task.wait()
            end
        end
    })
    Jester:AddToggle({
        text = "Only Slip Seated",
        flag = "Seated_Slip"
    })
    Jester:AddSlider({
        text = "Slip Range",
        min = 2,
        max = 100,
        value = 5,
        flag = "Slip_Range"
    })
    Jester:AddSlider({
        text = "Slip Delay",
        min = 0,
        max = 1,
        value = 0.3,
        float = 0.01,
        flag = "Slip_Delay"
    })
    local Slip_Target = Jester:AddFolder("Slip Target")
    for _, A_1 in next, Teams_Table do
        Slip_Target:AddToggle({
            text = A_1,
            flag = A_1 .. "_Slip"
        })
    end
end

--// Farming \\--
local Farming = Window:AddFolder("Farming")
Farming:AddToggle({
    text = "Rice Aura",
    flag = "Rice",
    callback = function()
        -- Rice Farming
        while Library.flags.Rice do
            -- Variables
            local Kart = Karts:FindFirstChild(Player.Name)
            local Seat = Kart and Kart:FindFirstChild("VehicleSeat")
            local Sickle = GetTool("Sickle")
            -- Vehicle
            if Seat and Kart:FindFirstChild("RightSickle") and Kart:FindFirstChild("LeftSickle") then
                local Rice_To_Cut = GetHarvestable(Kart:FindFirstChild("RightSickle"), "Rice")
                if Rice_To_Cut ~= false then
                    Touch(Kart.RightSickle, Rice_To_Cut)
                    Touch(Kart.LeftSickle, Rice_To_Cut)
                end
            -- Sickle
            elseif Sickle then
                local Rice_To_Cut = GetHarvestable(Sickle.Handle, "Rice")
                if Rice_To_Cut ~= false then
                    Sickle:Activate()
                    Touch(Sickle.Handle, Rice_To_Cut)
                    Touch(Sickle.Handle, Rice_To_Cut)
                end
            end
            task.wait()
        end
    end
})
Farming:AddToggle({
    text = "Tree Aura",
    flag = "Tree",
    callback = function()
        -- Tree Chopping
        while Library.flags.Tree do
            local Axe = GetTool("Axe")
            if Axe then
                local Tree = GetHarvestable(Axe.Handle, "Trees")
                if Tree ~= false then
                    Axe:Activate()
                    Touch(Axe.Handle, Tree)
                end
            end
            task.wait(0.1)
        end
    end
})
Farming:AddToggle({
    text = "Repair/Hammer Aura",
    flag = "Hammer",
    callback = function()
        -- Building / Repairing
        while Library.flags.Hammer do
            local Hammer = GetTool("Hammer")
            if Hammer then
                local Building = GetClosestStructure(Hammer.Handle)
                if Building ~= false then
                    Hammer:Activate()
                    Touch(Hammer.Handle, Building)
                end
            end
            task.wait()
        end
    end
})
Farming:AddSlider({
    text = "Aura Range",
    flag = "Farming_Range",
    min = 4,
    max = 12
})

--// Done! \\--
Library:Init()