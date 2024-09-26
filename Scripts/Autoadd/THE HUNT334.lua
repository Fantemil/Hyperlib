local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local function createSkyPlatform()
    local skyPlatform = Instance.new("Part")
    skyPlatform.Name = "HiddenSkyPlatform"
    skyPlatform.Size = Vector3.new(100, 1, 100)
    skyPlatform.Position = Vector3.new(0, 1000, 0)
    skyPlatform.Anchored = true
    skyPlatform.Transparency = 0.5
    skyPlatform.Parent = Workspace
    return skyPlatform
end

local function teleportTo(targetPosition)
    local player = Players.LocalPlayer
    if not player then
        warn("LocalPlayer not found. Ensure this script is executed in a context where LocalPlayer exists.")
        return
    end

    local character = player.Character or player.CharacterAdded:Wait()
    if character and character.PrimaryPart then
        character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    else
        warn("Character or PrimaryPart not found.")
    end
end

local function mainTeleportationLogic()
    local effectsBin = Workspace:FindFirstChild("EffectsBin")
    if not effectsBin then
        warn("EffectsBin not found in Workspace.")
        return
    end

    local collectableItem = effectsBin:FindFirstChild("CollectableItemTheHunt", true)
    if not collectableItem then
        warn("CollectableItemTheHunt not found in EffectsBin.")
        return
    end

    teleportTo(collectableItem.Position)

    wait(1)

    local skyPlatform = createSkyPlatform()
    teleportTo(skyPlatform.Position + Vector3.new(0, 2.5, 0))
end

mainTeleportationLogic()
