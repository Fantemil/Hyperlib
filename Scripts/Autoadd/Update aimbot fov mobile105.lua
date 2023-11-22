
local fov = 40
local maxDistance = 400
local maxTransparency = 0.1
local teamCheck = false
local wallCheck = false
local aimPart = "Head"

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    FOVring.Position = Cam.ViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    local transparency = (1 - (distance / fov)) * maxTransparency
    return transparency
end

local function isPlayerAlive(player)
    local character = player.Character
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function isPlayerVisibleThroughWalls(player, trg_part)
    if not wallCheck then
        return true
    end

    local localPlayerCharacter = Players.LocalPlayer.Character
    if not localPlayerCharacter then
        return false
    end

    local part = player.Character and player.Character:FindFirstChild(trg_part)
    if not part then
        return false
    end

    local ray = Ray.new(Cam.CFrame.Position, part.Position - Cam.CFrame.Position)
    local hit, position = workspace:FindPartOnRayWithIgnoreList(ray, {localPlayerCharacter})

    return hit and hit:IsDescendantOf(player.Character)
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) and isPlayerAlive(player) then
            local part = player.Character and player.Character:FindFirstChild(trg_part)
            if part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                if distance < last and isVisible and distance < fov and distance < maxDistance and isPlayerVisibleThroughWalls(player, trg_part) then
                    last = distance
                    nearest = player
                end
            end
        end
    end

    return nearest
end

local function toggleTeamCheck()
    teamCheck = not teamCheck
end

local function toggleWallCheck()
    wallCheck = not wallCheck
end

toggleTeamCheck()
toggleTeamCheck()
toggleWallCheck()
toggleWallCheck()

RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV(aimPart)
    if closest and closest.Character:FindFirstChild(aimPart) then
        lookAt(closest.Character[aimPart].Position)
    end
    
    if closest then
        local part = closest.Character[aimPart]
        local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
        local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
        FOVring.Transparency = calculateTransparency(distance)
    else
        FOVring.Transparency = maxTransparency
    end
    
    wait(0)
end)