-- // Dependencies
pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/AntiKick.lua")))
local Chalk = loadstring(game:HttpGet("https://raw.githubusercontent.com/Belkworks/chalk/master/init.lua"))()

-- // Services
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Fishing = Workspace.GameMap.Fishing

local Events = ReplicatedStorage.Events
local MessageService = Events.MessageService
local HouseService = Events.HouseService

local RodGiver = ReplicatedStorage.Scenes.Interiors.FisheryInterior:FindFirstChild("Rodgiver", true)

local Chat = {
    StartFish = {
        "money",
        "You have began fishing, you remain patient as you await a pull on your rod."
    },
    Caught = {
        "money",
        "You have captured a (%a+), that is worth $(%d+)!"
    },
    FullInventory = {
        "error",
        "You do not have room for any more fish, please sell your fish at the fish shop."
    },
    AlreadyFishing = {
        "error",
        "You are already fishing."
    },
    SoldFish = {
        "money",
        "You've earned $(%d+) from (%w+) (%w+)'s services."
    },
    NoFish = {
        "error",
        "You are not near any fish."
    }
}

local IsInventoryFull = false
local EnumCoreGuiTypeBackpack = Enum.CoreGuiType.Backpack

-- // Configuration
local EB2Hax = {
    AutoFarm = {
        Enabled = true,
        RodCount = 10,
        TPOffset = Vector3.new()
    }
}
getgenv().EB2Hax = EB2Hax

-- // Utilities
local Utilities = {}
do
    -- //
    function Utilities.Teleport(CFr, HumanoidRootPart)
        -- // Grab a tool
        local Tool = LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")

        -- // Make sure we have a toot
        while (not Tool) do
            Tool = LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
        end

        -- // Teleport
        HumanoidRootPart = HumanoidRootPart or LocalPlayer.Character.HumanoidRootPart
        HumanoidRootPart.CFrame = CFr

        -- // Pull the tool out
        Tool.Parent = LocalPlayer.Character

        -- // Wait
        wait(0.05)

        -- //
        Tool.Parent = LocalPlayer.Backpack
    end

    -- // Get the closest fishing spot to us, that has fish
    function Utilities.GetClosestFishingSpot(Origin)
        -- // Vars
        local Closest = nil
        local Distance = 1/0
        Origin = Origin or LocalPlayer.Character.HumanoidRootPart.Position

        -- // Loop through children
        for i, FishingSpot in ipairs(Fishing:GetChildren()) do
            -- // Make sure is a fishing spot with available fish. Make sure it isn't ignored too
            if (FishingSpot.Name == "FishingSpot" and FishingSpot.Amount.Value > 1) then
                -- // Calculate the distance between you and the fishing spot
                local Magnitude = (FishingSpot.Position - Origin).Magnitude

                -- // Make sure is closest
                if not (Magnitude < Distance) then
                    continue
                end

                -- // Set
                Closest = FishingSpot
                Distance = Magnitude
            end
        end

        -- // Return
        return Closest
    end

    -- // Get the closest fisherman to you, so you can sell your fish to them
    function Utilities.GetClosestFisherman()
        -- // Vars
        local Closest = nil
        local Distance = 1/0
        local Origin = LocalPlayer.Character.HumanoidRootPart.Position

        -- // Loop through players
        for _, Player in ipairs(Players:GetPlayers()) do
            -- // Exclude self
            if (Player == LocalPlayer) then
                continue
            end

            -- // Check if is fisherman
            local PlayerCharacter = Player.Character
            local Shirt = PlayerCharacter and PlayerCharacter:FindFirstChild("Shirt")
            if (Shirt and Shirt.ShirtTemplate == "rbxassetid://847754686") then
                local Magnitude = (PlayerCharacter.HumanoidRootPart.Position - Origin).Magnitude

                -- // Make sure is closest
                if not (Magnitude < Distance) then
                    continue
                end

                -- // Set
                Closest = Player
                Distance = Magnitude
            end
        end

        -- // Return
        return Closest
    end

    -- // (Generate an amount of fishing rods and) Return a list of all of the fishing rods in your backpackl
    function Utilities.GetFishingRods(Amount)
        -- // Default
        Amount = Amount or 10

        -- //
        for i = 1, Amount do
            HouseService:FireServer("FishingRodGiver", RodGiver)
        end
        wait(0.5)

        -- // Loop through your backpack
        local Rods = {}
        for _, Tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
            -- // Make sure is Rod and a tool
            if (Tool:IsA("Tool") and Tool.Name == "Fishing Rod") then
                -- // Add to Rods
                table.insert(Rods, Tool)
            end
        end

        -- // Return all the Rods
        return Rods
    end

    -- // Resolve a chat message
    function Utilities.ResolveChat(Type, Text)
        -- // Loop through the chat stuff
        for Name, v in pairs(Chat) do
            -- // See if the types match up
            if not (Type == v[1]) then
                continue
            end

            -- // See if it matches the main body
            local Matched = Text:match(v[2])
            if (Matched) then
                return Name, Matched
            end
        end

        -- //
        return {"unknown", Text}
    end

    -- // Freezes your character (fly)
    function Utilities.Freeze(Character)
        -- // Vars
        local HumanoidRootPart = Character.HumanoidRootPart
        local Max = Vector3.new(9e9, 9e9, 9e9)

        -- // Setup Body stuff
        local BodyGyro = HumanoidRootPart:FindFirstChild("AutoFarmGyro") or Instance.new("BodyGyro")
        BodyGyro.Name = "AutoFarmGyro"
        BodyGyro.P = 9e4
        BodyGyro.MaxTorque = Max
        BodyGyro.CFrame = HumanoidRootPart.CFrame

        local BodyVelocity = HumanoidRootPart:FindFirstChild("AutoFarmVelocity") or Instance.new("BodyVelocity")
        BodyVelocity.Name = "AutoFarmVelocity"
        BodyVelocity.Velocity = Vector3.new()
        BodyVelocity.MaxForce = Max

        -- // Parent
        BodyGyro.Parent = HumanoidRootPart
        BodyVelocity.Parent = HumanoidRootPart

        -- // Return
        return BodyGyro, BodyVelocity
    end
end

-- // Farming
local Farming = {}
do
    -- // Sell your fish
    function Farming.SellFish()
        -- // Vars
        local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
        local Sold = false

        -- // Wait until it's time (when they can work)
        repeat
            wait()
        until Lighting.ClockTime > 8 and Lighting.ClockTime < 22

        -- // Connect to whenever a message shows in chat
        local Connection
        Connection = MessageService.OnClientEvent:Connect(function(Type, Text, _)
            -- // Resolve it
            local ResolvedChat = {Utilities.ResolveChat(Type, Text)}
            local Name = ResolvedChat[1]

            -- // Set and stop if sold
            if (Name == "SoldFish") then
                Sold = true
                IsInventoryFull = false
                Connection:Disconnect()
            end
        end)

        -- // Constantly tp until sold
        repeat wait(0.5)
            -- // Vars
            local ClosestFisherman = Utilities.GetClosestFisherman()

            -- // Make sure we have a fisherman
            if (not ClosestFisherman) then
                continue
            end

            -- // Teleport
            HumanoidRootPart.CFrame = ClosestFisherman.Character.HumanoidRootPart.CFrame

            -- // Pull out a tool to bypass tp
            local Tool = LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
            Tool.Parent = HumanoidRootPart.Parent

            -- // Attempt to sell
            local RPName = ClosestFisherman.Character.Head.Card.Frame.Namey.Text
            Players:Chat("/payservice " .. RPName)

            -- // Wait and put tool back
            wait(0.1)
            Tool.Parent = LocalPlayer.Backpack
        until Sold
    end

    -- // Fish until inventory, you can specify the amount of rods to use
    local TempFishSpot
    function Farming.Fish(Rods, Character)
        -- // Vars
        local TPd = false
        local BodyGyro, BodyVelocity

        -- // Constantly fish and tp until full inventory
        local i = 1
        repeat wait()
            -- // See if we have a character
            local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
            if (not HumanoidRootPart) then
                continue
            end
            LocalPlayer.Backpack:WaitForChild("MainTools")

            -- // Get the closest fishing spot
            local FishSpot = Utilities.GetClosestFishingSpot(HumanoidRootPart.Position)

            -- // Make sure we have a spot
            if (not FishSpot) then
                continue
            end

            -- // Check for changes in fish spot
            if (FishSpot ~= TempFishSpot) then
                TPd = false
                TempFishSpot = FishSpot
            end

            -- // Get rod
            if (i > #Rods) then
                i = 1
            end
            local Rod = Rods[i]

            -- // Teleport to the spot
            local Destination = FishSpot.CFrame * CFrame.Angles(math.rad(180), 0, 0) + EB2Hax.AutoFarm.TPOffset
            BodyGyro, BodyVelocity = Utilities.Freeze(Character)

            -- // See whether we need to tp bypass to the spot
            if (not TPd) then
                Utilities.Teleport(Destination, HumanoidRootPart)
                TPd = true
            else
                HumanoidRootPart.CFrame = Destination
            end

            -- // Attempt to fish if got a rod
            if (Rod and Character.Parent) then
                -- // Equip the rod
                Rod.Parent = Character

                -- // Attempt to fish
                wait(0.1)
                Players:Chat("/fish")

                -- // Unequip the rod
                wait(0.1)
                Rod.Parent = LocalPlayer.Backpack

                -- // Increment rod counter
                i = i + 1
            end
        until IsInventoryFull or not EB2Hax.AutoFarm.Enabled

        -- // Return
        return BodyGyro, BodyVelocity
    end

    -- // Perform a full cycle
    function Farming.PerformCycle()
        -- // Vars
        local Character = LocalPlayer.Character

        -- // Make sure we have a character
        if (not Character) then
            -- // Wait for our character to respawn and MainTools
            Character = LocalPlayer.CharacterAdded:Wait()
            LocalPlayer.Backpack:WaitForChild("MainTools")
        end

        -- // Get rods
        local Rods = Utilities.GetFishingRods(EB2Hax.AutoFarm.RodCount)

        -- // Farm fish until we full
        local BodyGyro, BodyVelocity = Farming.Fish(Rods, Character)

        -- // Sell the fish
        Farming.SellFish()

        -- // Destroy freeze
        BodyGyro:Destroy()
        BodyVelocity:Destroy()
    end
end

-- //
task.spawn(function()
    -- // Constant loop
    while (true) do
        -- // Make sure farm is enabled
        if not (EB2Hax.AutoFarm.Enabled) then
            continue
        end

        Farming.PerformCycle()
    end
end)

-- // Stat Tracker
MessageService.OnClientEvent:Connect(function(Type, Text, _)
    -- // Resolve it
    local ResolvedChat = {Utilities.ResolveChat(Type, Text)}
    local Name = ResolvedChat[1]

    -- // See if sold fish
    if (Name == "SoldFish") then
        -- // Output
        local PlayerName = Chalk.yellow(ResolvedChat[3] .. " " .. ResolvedChat[4])
        local Amount = Chalk.green(ResolvedChat[2])

        Chalk.print(Chalk.green("[+] Sold fish for $") .. Amount, Chalk.green("to"), PlayerName)
    end

    -- // See if caught fish
    if (Name == "Caught") then
        -- // Output
        local Fish = ResolvedChat[2]
        local Amount = ResolvedChat[3]

        Chalk.print(Chalk.green("[+] Caught a"), Chalk.(Fish), Chalk.blue("(") .. Chalk.green(Amount) .. Chalk.blue(")"))
    end

    -- // See if inventory full
    if (Name == "FullInventory") then
        IsInventoryFull = true
    end
end)