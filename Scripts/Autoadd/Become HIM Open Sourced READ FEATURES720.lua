local player = game.Players.LocalPlayer
local backpack = player.Backpack
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animations = {
    {Name = "BM_Neutral1", AnimationId = "14425482606"},
    {Name = "BM_Neutral2", AnimationId = "14450804385"},
    {Name = "BackNeutral1", AnimationId = "14101956641"},
    {Name = "BreakDoor", AnimationId = "14255769487"},
    {Name = "Neutral1", AnimationId = "11545349261"},
    {Name = "Neutral2", AnimationId = "14123467583"},
    {Name = "Neutral3", AnimationId = "14101304975"},
    {Name = "ChainAOE", AnimationId = "14875631059"},
    {Name = "KnifeExecutionChain", AnimationId = "17230264808"},
    {Name = "ChainDeagleStun", AnimationId = "14748511277"},
    {Name = "ChainStun", AnimationId = "14317218232"},
    {Name = "Downed2", AnimationId = "15409393739"},
    {Name = "Downed1", AnimationId = "15408077041"},
    {Name = "BloodMoonRitual", AnimationId = "14511868630"},
    {Name = "ChainChokeStart", AnimationId = "17386476041"},
    {Name = "ChainChokeLose", AnimationId = "16142879758"},
    {Name = "ChainChokeWin", AnimationId = "16142891617"},
    {Name = "BM_Netural1Target", AnimationId = "14425490891"}
}

local function createTool(name, animationId)
    local tool = Instance.new("Tool")
    tool.Name = name
    tool.RequiresHandle = true
    tool.Parent = backpack

    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1, 1)
    handle.Anchored = false
    handle.CanCollide = false
    handle.Transparency = 1
    handle.Parent = tool
    
    tool.Activated:Connect(function()
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. animationId
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()
    end)
    
    return tool
end

for _, animData in ipairs(animations) do
    createTool(animData.Name, animData.AnimationId)
end

local chainRunId = "15059245473"
local chainIdleId = "11442092457"

local chainAttack1Id = "11559267420"
local chainAttack2Id = "11559248760"

local replacementRunId = "18261153677"
local replacementIdleId = "13156585804"

local replacementAttack1Id = "14663644392"
local replacementAttack2Id = "14663659298"

local function onAnimationPlayed(animationTrack)
    local animId = animationTrack.Animation.AnimationId

    if animId == "rbxassetid://" .. replacementRunId then
        for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        local chainRunAnim = Instance.new("Animation")
        chainRunAnim.AnimationId = "rbxassetid://" .. chainRunId
        local chainRunTrack = humanoid:LoadAnimation(chainRunAnim)
        chainRunTrack:Play()
    elseif animId == "rbxassetid://" .. replacementIdleId then
        for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        local chainIdleAnim = Instance.new("Animation")
        chainIdleAnim.AnimationId = "rbxassetid://" .. chainIdleId
        local chainIdleTrack = humanoid:LoadAnimation(chainIdleAnim)
        chainIdleTrack:Play()
    elseif animId == "rbxassetid://" .. replacementAttack1Id then
        for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        local chainAttack1Anim = Instance.new("Animation")
        chainAttack1Anim.AnimationId = "rbxassetid://" .. chainAttack1Id
        local chainAttack1Track = humanoid:LoadAnimation(chainAttack1Anim)
        chainAttack1Track:Play()
    elseif animId == "rbxassetid://" .. replacementAttack2Id then
        for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        local chainAttack2Anim = Instance.new("Animation")
        chainAttack2Anim.AnimationId = "rbxassetid://" .. chainAttack2Id
        local chainAttack2Track = humanoid:LoadAnimation(chainAttack2Anim)
        chainAttack2Track:Play()
    end
end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local function onPlayerTouched(otherPlayer)
    if otherPlayer:IsA("Player") then
        if otherPlayer:FindFirstChild("Backpack"):FindFirstChild("BM_Neutral1") then
            for _, anim in pairs(animations) do
                if anim.Name == "BM_Neutral1" then
                    anim.AnimationId = "14425490891" 
                end
            end
        end
    end
end

local function createTool(name, animationId)
    local tool = Instance.new("Tool")
    tool.Name = name
    tool.RequiresHandle = true
    tool.Parent = backpack

    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1, 1)
    handle.Anchored = false
    handle.CanCollide = false
    handle.Transparency = 1
    handle.Parent = tool
    
    tool.Activated:Connect(function()
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. animationId
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()

        for _, target in ipairs(game.Players:GetPlayers()) do
            if target ~= player then
                onPlayerTouched(target)
            end
        end
    end)
    
    return tool
end

for _, animData in ipairs(animations) do
    createTool(animData.Name, animData.AnimationId)
end

local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if not checkcaller() then

        if getnamecallmethod() == "FireServer" then
            if self.Name == "CTS" then
                local args = {...}

                if args[1] == "DoneDodge" then
                    print('dodgeagain0_0')
                    args[1] = "Dodge"
                end

                return __namecall(self, unpack(args))
            end;
        end;
    end;

    return __namecall(self, ...)
end);

loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()