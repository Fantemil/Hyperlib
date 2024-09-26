-- Please to ALL THE SKIDDIES if you're gonna skid this thing put me in the credits.

local placeid = game.PlaceId

if placeid == 286090429 then -- Arsenal specific script by samet.exe on Discord
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Holding = false
local CurrentTarget = nil
local aimParts = {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
local currentAimPartIndex = 2 -- Default to "Torso"

_G.AimbotEnabled = true
_G.TeamCheck = true
_G.AimPart = aimParts[currentAimPartIndex]

local function IsTargetValid(character)
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function GetClosestTarget()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and (not _G.TeamCheck or player.Team ~= LocalPlayer.Team) and IsTargetValid(player.Character) then
            local targetPart = player.Character:FindFirstChild(_G.AimPart)
            if targetPart then
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - targetPart.Position).Magnitude
                if distance < shortestDistance then
                    closestPlayer = player
                    shortestDistance = distance
                end
            end
        end
    end
    return closestPlayer
end

local function AimAtTarget(target)
    if target then
        local aimPart = target.Character:FindFirstChild(_G.AimPart)
        if aimPart then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, aimPart.Position)
        end
    end
end

UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    elseif input.KeyCode == Enum.KeyCode.F4 then
        currentAimPartIndex = (currentAimPartIndex % #aimParts) + 1
        _G.AimPart = aimParts[currentAimPartIndex]
    elseif input.KeyCode == Enum.KeyCode.F6 then
        _G.AimbotEnabled = not _G.AimbotEnabled
        CurrentTarget = nil
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
        CurrentTarget = nil
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if Holding and _G.AimbotEnabled then
        if not CurrentTarget then
            CurrentTarget = GetClosestTarget()
        end
        AimAtTarget(CurrentTarget)
    end
end)

else -- General aimbot for other games by me


    local Camera = workspace.CurrentCamera
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local StarterGui = game:GetService("StarterGui")
    local LocalPlayer = Players.LocalPlayer
    local Holding = false
    local CurrentTarget = nil
    local aimParts = {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
    local currentAimPartIndex = 1 -- Default to "Head"

    _G.AimbotEnabled = true
    _G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
    _G.AimPart = aimParts[currentAimPartIndex]
    _G.TargetPlayers = true -- Toggle to target players
    _G.TargetNPCs = false -- Toggle to target NPCs

    local PlayerTargetModes = {"Default", "ModelCheck", "TeamCheck"}
    local NPCModes = {"None", "All", "SpecificModel"}
    local currentPlayerTargetModeIndex = 1
    local currentNPCModeIndex = 1
    _G.PlayerTargetMode = PlayerTargetModes[currentPlayerTargetModeIndex]
    _G.NPCMode = NPCModes[currentNPCModeIndex]

    local function IsNPC(character)
        return character:FindFirstChild("Humanoid") and not Players:GetPlayerFromCharacter(character)
    end

    local function IsValidPlayerCharacter(character)
        return character:FindFirstChild("Humanoid") and Players:FindFirstChild(character.Name)
    end

local function GetClosestTarget()
    local MaximumDistance = math.huge
    local Target = nil
    local MouseLocation = UserInputService:GetMouseLocation()
    local CharacterPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position or Vector3.new(0, 0, 0)

    local function CheckTarget(v)
        if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            local ScreenPoint = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local VectorDistance = (Vector2.new(MouseLocation.X, MouseLocation.Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
            local CharacterDistance = (CharacterPosition - v.Character.HumanoidRootPart.Position).Magnitude

            if CharacterDistance < MaximumDistance or (CharacterDistance == MaximumDistance and VectorDistance < MaximumDistance) then
                Target = v
                MaximumDistance = CharacterDistance
            end
        end
    end

    if _G.TargetPlayers then
        for _, v in ipairs(Players:GetPlayers()) do
            if v.Name ~= LocalPlayer.Name then
                if _G.TeamCheck then
                    if v.Team ~= LocalPlayer.Team then
                        CheckTarget(v)
                    end
                else
                    if _G.PlayerTargetMode == "Default" then
                        CheckTarget(v)
                    elseif _G.PlayerTargetMode == "ModelCheck" and IsValidPlayerCharacter(v.Character) then
                        CheckTarget(v)
                    end
                end
            end
        end
    end

    if _G.TargetNPCs then
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Model") and IsNPC(v) then
                CheckTarget(v)
            end
        end
    end

    return Target
end


    local function GetAimParts(character)
        local validParts = {}
        for _, partName in ipairs(aimParts) do
            if character:FindFirstChild(partName) then
                table.insert(validParts, partName)
            end
        end
        return validParts
    end

    UserInputService.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton2 then
            Holding = true
            if _G.AimbotEnabled and not CurrentTarget then
                CurrentTarget = GetClosestTarget()
            end
        elseif Input.KeyCode == Enum.KeyCode.F4 then
            currentAimPartIndex = (currentAimPartIndex % #aimParts) + 1
            _G.AimPart = aimParts[currentAimPartIndex]
            StarterGui:SetCore("SendNotification", {
                Title = "Aimbot",
                Text = "Aim Part: " .. _G.AimPart,
                Duration = 2
            })
        elseif Input.KeyCode == Enum.KeyCode.F6 then
            _G.AimbotEnabled = not _G.AimbotEnabled
            CurrentTarget = nil
            StarterGui:SetCore("SendNotification", {
                Title = "Aimbot",
                Text = "Aimbot Enabled: " .. tostring(_G.AimbotEnabled),
                Duration = 2
            })
        elseif Input.KeyCode == Enum.KeyCode.F5 then
            _G.TargetNPCs = not _G.TargetNPCs
            StarterGui:SetCore("SendNotification", {
                Title = "Aimbot",
                Text = "Target NPCs: " .. tostring(_G.TargetNPCs),
                Duration = 2
            })
        elseif Input.KeyCode == Enum.KeyCode.F7 then
            currentPlayerTargetModeIndex = (currentPlayerTargetModeIndex % #PlayerTargetModes) + 1
            _G.PlayerTargetMode = PlayerTargetModes[currentPlayerTargetModeIndex]
            StarterGui:SetCore("SendNotification", {
                Title = "Aimbot",
                Text = "Player Target Mode: " .. _G.PlayerTargetMode,
                Duration = 2
            })
        elseif Input.KeyCode == Enum.KeyCode.F8 then
            currentNPCModeIndex = (currentNPCModeIndex % #NPCModes) + 1
            _G.NPCMode = NPCModes[currentNPCModeIndex]
            StarterGui:SetCore("SendNotification", {
                Title = "Aimbot",
                Text = "NPC Target Mode: " .. _G.NPCMode,
                Duration = 2
            })
        end
    end)

    UserInputService.InputEnded:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton2 then
            Holding = false
            CurrentTarget = nil
        end
    end)

    RunService.RenderStepped:Connect(function()
        if Holding and _G.AimbotEnabled and CurrentTarget then
            local validParts = GetAimParts(CurrentTarget.Character)
            if #validParts > 0 then
                local AimPart = CurrentTarget.Character:FindFirstChild(_G.AimPart) or CurrentTarget.Character:FindFirstChild(validParts[1])
                if AimPart then
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, AimPart.Position)
                else
                    CurrentTarget = nil
                end
            else
                CurrentTarget = nil
            end
        end
    end)

end -- Closes the PlaceID check
