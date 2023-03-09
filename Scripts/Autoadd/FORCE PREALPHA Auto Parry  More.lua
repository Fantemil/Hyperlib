-- // Dependencies
local SignalManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Signal/main/Manager.lua"))()
local AnimationTracker = SignalManager.new()

-- // Services
local Players = game:GetService("Players")
local StarterPlayer = game:GetService("StarterPlayer")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local IsBlocking = false

local Configuration = {
    Slash = {
        BlockDelay = 0, -- // seconds
        ParryChance = 100, -- // % of the time it will parry, the other % it will block (if parry is available of course)
        Range = 10 -- // studs
    },
    Block = {
        BlockDelay = 0,
        ParryChance = 100,
        Range = 10
    },
    M2 = {
        ParryChance = 100,
        ParryDelay = 0.25,
        M2Delay = 0,
        Range = 15
    }
}
getgenv().Configuration = Configuration

-- // Init stuff for all players
do
    -- // Vars
    local AnimationResolve = {}

    -- // Load all of the animations in
    for _, Animation in ipairs(StarterPlayer.StarterCharacterScripts.Holder.Character.Anims:GetChildren()) do
        AnimationResolve[Animation.AnimationId] = Animation.Name
    end

    -- // Get all of the forms descendants
    for _, Animation in ipairs(ReplicatedStorage.Assets.Forms:GetDescendants()) do
        -- // Make sure is an animation
        if (not Animation:IsA("Animation")) then
            continue
        end

        -- // Add it
        AnimationResolve[Animation.AnimationId] = Animation.Name
    end

    -- // Add all animations to animation tracker
    for _, AnimationName in pairs(AnimationResolve) do
        if (not AnimationTracker:Get(AnimationName)) then
            AnimationTracker:Add(AnimationName)
        end
    end

    -- //
    local function OnCharacter(Character)
        -- // Failsafe
        if (not Character) then
            return
        end

        -- // Vars
        local Humanoid = Character:WaitForChild("Humanoid")
        local Animator = Humanoid:WaitForChild("Animator")

        -- // Connect to the animator
        Animator.AnimationPlayed:Connect(function(AnimationTrack)
            -- // Grab the event
            local AnimationId = AnimationTrack.Animation.AnimationId
            local EventName = AnimationResolve[AnimationId]

            -- // Fire
            if (AnimationTracker:Get(EventName)) then
                AnimationTracker:Fire(EventName, Character)
            end
        end)
    end
    local function PlayerInit(Player)
        OnCharacter(Player.Character)
        Player.CharacterAdded:Connect(OnCharacter)
    end

    -- // Apply on character to each player and new players
    for _, Player in ipairs(Players:GetPlayers()) do
        PlayerInit(Player)
    end
    Players.PlayerAdded:Connect(PlayerInit)
end

-- // Init stuff for LocalPlayer
do
    -- //
    local function OnCharacter(Character)
        -- // Failsafe
        if (not Character) then
            return
        end

        -- // Vars
        local Humanoid = Character:WaitForChild("Humanoid")
        local Effects = Humanoid:WaitForChild("Effects")

        -- //
        Effects.ChildAdded:Connect(function(child)
            if (child.Name == "Blocking") then
                IsBlocking = true
            end
        end)

        -- //
        Effects.ChildRemoved:Connect(function(child)
            if (child.Name == "Blocking") then
                IsBlocking = false
            end
        end)
    end

    local function PlayerInit(Player)
        OnCharacter(Player.Character)
        Player.CharacterAdded:Connect(OnCharacter)
    end

    -- //
    PlayerInit(LocalPlayer)
end

-- // Check if looking at us. FOV has to be in rad
local function IsLooking(A, B, FOV)
    -- // Default
    FOV = FOV or math.rad(145)

    -- // Get the angle between A and B
    local Angle = math.acos(A.Unit:Dot(B.Unit))

    -- // Return if within FOV
    return Angle < FOV
end

-- // Check if something is on cooldown
local function IsOnCooldown(ItemName)
    -- // Vars
    ItemName = ItemName:upper()
    local CDFrame = LocalPlayer.PlayerGui.VFX.CDFrame

    -- // Loop through all CDs
    for _, v in ipairs(CDFrame:GetChildren()) do
        -- // Check if matches CD
        if (v:IsA("Frame") and v.ItemName.Text == ItemName) then
            return true
        end
    end

    -- //
    return false
end

-- // Chance
local function CalculateChance(Percentage)
    -- // Floor the percentage
    Percentage = math.floor(Percentage)

    -- // Get the chance
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    -- // Return
    return chance <= Percentage / 100
end

-- // Auto blocks
local function OnSwing(Character)
    -- // Vars
    local LocalCharacter = LocalPlayer.Character
    local LocalHumanoidRootPart = LocalCharacter.HumanoidRootPart
    local HumanoidRootPart = Character.HumanoidRootPart

    -- // Check if close enough and facing us
    if (HumanoidRootPart ~= LocalHumanoidRootPart and LocalPlayer:DistanceFromCharacter(HumanoidRootPart.Position) <= Configuration.Slash.Range --[[and IsLooking(HumanoidRootPart.CFrame.LookVector, LocalHumanoidRootPart.CFrame.LookVector)]]) then
        -- // Parry
        if (not IsOnCooldown("parry") and CalculateChance(Configuration.Slash.ParryChance)) then
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.T, false, game)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.T, false, game)
        else
            wait(Configuration.Slash.BlockDelay)

            -- // Block
            IsBlocking = true
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, game)
            wait(1)

            -- // Unblock
            if (IsBlocking) then
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F, false, game)
                IsBlocking = false
            end
        end
    end
end
AnimationTracker:Connect("Slash1", OnSwing)
AnimationTracker:Connect("Slash2", OnSwing)
AnimationTracker:Connect("Slash3", OnSwing)
AnimationTracker:Connect("Slash4", OnSwing)

-- // Unblocks on M2
AnimationTracker:Connect("Skill1", function(Character)
    -- // Vars
    local LocalCharacter = LocalPlayer.Character
    local LocalHumanoidRootPart = LocalCharacter.HumanoidRootPart
    local HumanoidRootPart = Character.HumanoidRootPart

    -- // Check if close enough and facing us
    if (HumanoidRootPart ~= LocalHumanoidRootPart and LocalPlayer:DistanceFromCharacter(HumanoidRootPart.Position) <= Configuration.M2.Range --[[and IsLooking(HumanoidRootPart.CFrame.LookVector, LocalHumanoidRootPart.CFrame.LookVector)]]) then
        -- // Parry
        if (not IsOnCooldown("parry")) then
            wait(Configuration.M2.ParryDelay)

            if (CalculateChance(Configuration.M2.ParryChance)) then
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.T, false, game)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.T, false, game)
            end
        -- // M2
        elseif (not IsOnCooldown("m2")) then
            wait(Configuration.M2.M2Delay)

            VirtualInputManager:SendMouseButtonEvent(0, 0, 1, true, game, 0)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 1, false, game, 0)
        end
    end
end)

-- // M2 if block
local function OnBlock(Character)
    -- // Vars
    local LocalCharacter = LocalPlayer.Character
    local LocalHumanoidRootPart = LocalCharacter.HumanoidRootPart
    local HumanoidRootPart = Character.HumanoidRootPart

    -- // Check if close enough and facing us
    if (HumanoidRootPart ~= LocalHumanoidRootPart and LocalPlayer:DistanceFromCharacter(HumanoidRootPart.Position) <= Configuration.Block.Range --[[and IsLooking(HumanoidRootPart.CFrame.LookVector, LocalHumanoidRootPart.CFrame.LookVector)]]) then
        wait(Configuration.Block.BlockDelay)

        -- // M2
        local Effects = Character:WaitForChild("Humanoid"):WaitForChild("Effects")

        -- // Constantly spam M2
        while (Effects:FindFirstChild("Blocking")) do wait(0.5)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 1, true, game, 0)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 1, false, game, 0)
        end
    end
end
AnimationTracker:Connect("Block", OnBlock)
AnimationTracker:Connect("Block1", OnBlock)
AnimationTracker:Connect("Block2", OnBlock)