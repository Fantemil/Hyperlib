local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt"))()
local win = lib:Window("AdvanceTech | Universal Hitbox | v1.0 ", Color3.fromRGB(44, 120, 224), Enum.KeyCode.P)

local tab = win:Tab("Main")


tab:Label("> Hitbox")

local hitboxEnabled = false
local noCollisionEnabled = false
local hitbox_original_properties = {}
local hitboxSize = 21
local hitboxTransparency = 6  -- Default - 6/10(0.6)
local teamCheck = "FFA"  -- Default - Free For All

local defaultBodyParts = {
    "UpperTorso",
    "Head",
    "HumanoidRootPart"
}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
local WarningText = Instance.new("TextLabel", ScreenGui)

WarningText.Size = UDim2.new(0, 200, 0, 50)
WarningText.TextSize = 16
WarningText.Position = UDim2.new(0.5, -150, 0, 0)
WarningText.Text = "Warning: There may be a bug that causes collisions."
WarningText.TextColor3 = Color3.new(1, 0, 0)
WarningText.BackgroundTransparency = 1
WarningText.Visible = false

-- -------------------------------------
-- Utility Functions
-- -------------------------------------
local function savedPart(player, part)
    if not hitbox_original_properties[player] then
        hitbox_original_properties[player] = {}
    end
    if not hitbox_original_properties[player][part.Name] then
        hitbox_original_properties[player][part.Name] = {
            CanCollide = part.CanCollide,
            Transparency = part.Transparency,
            Size = part.Size
        }
    end
end

local function restoredPart(player)
    if hitbox_original_properties[player] then
        for partName, properties in pairs(hitbox_original_properties[player]) do
            local part = player.Character and player.Character:FindFirstChild(partName)
            if part and part:IsA("BasePart") then
                part.CanCollide = properties.CanCollide
                part.Transparency = properties.Transparency
                part.Size = properties.Size
            end
        end
    end
end

local function findClosestPart(player, partName)
    if not player.Character then return nil end
    local characterParts = player.Character:GetChildren()
    for _, part in ipairs(characterParts) do
        if part:IsA("BasePart") and part.Name:lower():match(partName:lower()) then
            return part
        end
    end
    return nil
end

-- -------------------------------------
-- Hitbox Functions
-- -------------------------------------
local function extendHitbox(player)
    for _, partName in ipairs(defaultBodyParts) do
        local part = player.Character and (player.Character:FindFirstChild(partName) or findClosestPart(player, partName))
        if part and part:IsA("BasePart") then
            savedPart(player, part)
            part.CanCollide = not noCollisionEnabled
            part.Transparency = hitboxTransparency / 10
            part.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
        end
    end
end

local function isEnemy(player)
    if teamCheck == "FFA" or teamCheck == "Everyone" then
        return true
    end
    local localPlayerTeam = LocalPlayer.Team
    return player.Team ~= localPlayerTeam
end

local function shouldExtendHitbox(player)
    return isEnemy(player)
end

local function updateHitboxes()
    for _, v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            if shouldExtendHitbox(v) then
                extendHitbox(v)
            else
                restoredPart(v)
            end
        end
    end
end

-- -------------------------------------
-- Event Handlers
-- -------------------------------------
local function onCharacterAdded(character)
    task.wait(0.1)
    if hitboxEnabled then
        updateHitboxes()
    end
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(onCharacterAdded)
    player.CharacterRemoving:Connect(function()
        restoredPart(player)
        hitbox_original_properties[player] = nil
    end)
end

local function checkForDeadPlayers()
    for player, properties in pairs(hitbox_original_properties) do
        if not player.Parent or not player.Character or not player.Character:IsDescendantOf(game) then
            restoredPart(player)
            hitbox_original_properties[player] = nil
        end
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

tab:Button("[CLICK THIS FIRST] Enable Hitbox", function()
    coroutine.wrap(function()
        while true do
            if hitboxEnabled then
                updateHitboxes()
                checkForDeadPlayers()
            end
            task.wait(0.1)
        end
    end)()
end)

tab:Toggle("Enable Hitbox", false, function(enabled)
    hitboxEnabled = enabled
    if not enabled then
        for _, player in ipairs(Players:GetPlayers()) do
            restoredPart(player)
        end
        hitbox_original_properties = {}
    else
        updateHitboxes()
    end
end)

tab:Slider("Hitbox Size", 1, 50, 21, function(value)
    hitboxSize = value
    if hitboxEnabled then
        updateHitboxes()
    end
end)

tab:Slider("Hitbox Transparency", 1, 10, 6, function(value)
    hitboxTransparency = value
    if hitboxEnabled then
        updateHitboxes()
    end
end)

tab:Dropdown("Team Check", {"FFA", "Team-Based", "Everyone"}, function(value)
    teamCheck = value
    if hitboxEnabled then
        updateHitboxes()
    end
end)

tab:Toggle("No Collision", false, function(enabled)
    noCollisionEnabled = enabled
    WarningText.Visible = enabled
    coroutine.wrap(function()
        while noCollisionEnabled do
            if hitboxEnabled then
                updateHitboxes()
            end
            task.wait(0.01)
        end
        if hitboxEnabled then
            updateHitboxes()
        end
    end)()
end)



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local tab3 = win:Tab("Player")

local settings = {WalkSpeed = 16, JumpPower = 100}
local isWalkSpeedEnabled = false
local isJumpPowerEnabled = false
local IJ = false

tab3:Toggle("Enable Custom WalkSpeed", false, function(enabled)
    isWalkSpeedEnabled = enabled
end)

local walkMethods = {"Velocity", "Vector", "CFrame"}
local selectedWalkMethod = walkMethods[1]

tab3:Dropdown("Walk Method", walkMethods, function(selected)
    selectedWalkMethod = selected
end)

tab3:Slider("Walkspeed Power", 16, 500, 16, function(value)
    settings.WalkSpeed = value
end)

local function updateWalkSpeed(player, deltaTime)
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

    if humanoid and rootPart then
        local vs = humanoid.MoveDirection * settings.WalkSpeed
        if selectedWalkMethod == "Velocity" then
            rootPart.Velocity = Vector3.new(vs.X, rootPart.Velocity.Y, vs.Z)
        elseif selectedWalkMethod == "Vector" then
            local scaleFactor = 0.001
            rootPart.CFrame = rootPart.CFrame + (vs * deltaTime * scaleFactor)
        elseif selectedWalkMethod == "CFrame" then
            local scaleFactor = 0.001
            rootPart.CFrame = rootPart.CFrame + (humanoid.MoveDirection * settings.WalkSpeed * deltaTime * scaleFactor)
        end
    end
end

local function onStepped(deltaTime)
    if isWalkSpeedEnabled then
        local player = Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            updateWalkSpeed(player, deltaTime)
        end
    end
end

RunService.Stepped:Connect(onStepped)

tab3:Toggle("Infinite Jump", false, function(state)
    IJ = state
end)

UserInputService.JumpRequest:Connect(function()
    if IJ then
        local player = Players.LocalPlayer
        local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:ChangeState("Jumping")
        end
    end
end)

tab3:Toggle("Enable Custom JumpPower", false, function(enabled)
    isJumpPowerEnabled = enabled
end)

local jumpMethods = {"Velocity", "Vector", "CFrame"}
local selectedJumpMethod = jumpMethods[1]

tab3:Dropdown("Jump Method", jumpMethods, function(selected)
    selectedJumpMethod = selected
end)

tab3:Slider("Change JumpPower", 30, 500, 100, function(value)
    settings.JumpPower = value
end)

local function handleJumpPower(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.JumpPower = settings.JumpPower
        humanoid.Jumping:Connect(function(isActive)
            if isJumpPowerEnabled and isActive then
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    if selectedJumpMethod == "Velocity" then
                        rootPart.Velocity = Vector3.new(rootPart.Velocity.X, settings.JumpPower, rootPart.Velocity.Z)
                    elseif selectedJumpMethod == "Vector" then
                        rootPart.Velocity = Vector3.new(0, settings.JumpPower, 0)
                    elseif selectedJumpMethod == "CFrame" then
                        character:SetPrimaryPartCFrame(character:GetPrimaryPartCFrame() + Vector3.new(0, settings.JumpPower, 0))
                    end
                end
            end
        end)
    end
end

Players.LocalPlayer.CharacterAdded:Connect(handleJumpPower)

if Players.LocalPlayer.Character then
    handleJumpPower(Players.LocalPlayer.Character)
end




local isNoClipEnabled = false
local player = game.Players.LocalPlayer

local function setCanCollideForCharacter(character, canCollide)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
end
local function toggleNoClip()
    while isNoClipEnabled do
        local character = player.Character
        if character then
            setCanCollideForCharacter(character, false)
        end
        game:GetService("RunService").Stepped:Wait()
    end
    local character = player.Character
    if character then
        setCanCollideForCharacter(character, true)
    end
end
tab3:Toggle("NoClip", false, function(enabled)
    isNoClipEnabled = enabled
    if isNoClipEnabled then
        spawn(toggleNoClip)
    end
end)
player.CharacterAdded:Connect(function(character)
    if isNoClipEnabled then
        spawn(function()
            while isNoClipEnabled do
                setCanCollideForCharacter(character, false)
                game:GetService("RunService").Stepped:Wait()
            end
            setCanCollideForCharacter(character, true)
        end)
    end
end)




local Visual = win:Tab("Visuals")
Visual:Label("> ESP")
local aj = loadstring(game:HttpGet("https://rawscript.vercel.app/api/raw/esp_1"))()

Visual:Toggle("Enable Esp", false, function(K)
    aj:Toggle(K)
    aj.Players = K
end)

Visual:Toggle("Teammates", false, function(L) 
    aj.TeamMates = L 
end)

Visual:Toggle("Tracers Esp", false, function(K) 
    aj.Tracers = K 
end)

Visual:Toggle("Name Esp", false, function(K) 
    aj.Names = K 
end)

Visual:Toggle("Boxes Esp", false, function(K) 
    aj.Boxes = K 
end)

Visual:Toggle("TeamColor", false, function(L) 
    aj.TeamColor = L 
end)

Visual:Colorpicker("ESP Color", Color3.fromRGB(0, 0, 255), function(P) 
    aj.Color = P 
end)





local changeclr = win:Tab("Mics")
changeclr:Toggle("Full Bright", false, function(enabled)
    if not _G.FullBrightExecuted then
        _G.FullBrightEnabled = enabled

        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }

        local function apply()
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 786543
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
        end

        local function restore()
            game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
            game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
            game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
            game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
            game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
        end

        local function connectPropertySignal(property, targetValue, storeValue)
            game:GetService("Lighting"):GetPropertyChangedSignal(property):Connect(function()
                if game:GetService("Lighting")[property] ~= targetValue and game:GetService("Lighting")[property] ~= storeValue then
                    _G.NormalLightingSettings[property] = game:GetService("Lighting")[property]
                    if not _G.FullBrightEnabled then
                        repeat wait() until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting")[property] = targetValue
                end
            end)
        end

        connectPropertySignal("Brightness", 1, _G.NormalLightingSettings.Brightness)
        connectPropertySignal("ClockTime", 12, _G.NormalLightingSettings.ClockTime)
        connectPropertySignal("FogEnd", 786543, _G.NormalLightingSettings.FogEnd)
        connectPropertySignal("GlobalShadows", false, _G.NormalLightingSettings.GlobalShadows)
        connectPropertySignal("Ambient", Color3.fromRGB(178, 178, 178), _G.NormalLightingSettings.Ambient)

        spawn(function()
            local latestValue = _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= latestValue then
                    if _G.FullBrightEnabled then
                        apply()
                    else
                        restore()
                    end
                    latestValue = _G.FullBrightEnabled
                end
            end
        end)

        if _G.FullBrightEnabled then
            apply()
        end

        _G.FullBrightExecuted = true
    end

    _G.FullBrightEnabled = enabled

    if _G.FullBrightEnabled then
        apply()
    else
        restore()
    end
end)



changeclr:Colorpicker("Change UI Color", Color3.fromRGB(44, 120, 224),function(t)
    lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)


local Credit = win:Tab("Credits")
Credit:Label("Credits")
Credit:Label("Script Developed by: AdvanceFalling Team")
Credit:Dropdown("Developers", {"YellowGreg", "WspBoy12", "MMSVon", "ShadowClark", "Frostbite"}, function(currentDeveloper)
  local creations = {
      YellowGreg = "Owner",
      WspBoy12 = "Head Developer",
      MMSVon = "Head Developer",
      ShadowClark = "Head Developer",
      Frostbite = "Head Developer",
  }
  print(currentDeveloper .. " created " .. creations[currentDeveloper])
end)
Credit:Label("UI Library: Vape.")
Credit:Label("Report Non-Functional Bugs Scripts on Discord")
Credit:Button("Copy Discord Link", function()
  setclipboard("https://discord.gg/FuZCM5X8TW")
end)