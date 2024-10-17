local HeadSize = Vector3.new(12, 12, 12)  -- Maximized hitbox size for maximum power

local IsDisabled = false
local IsTeamCheckEnabled = true

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function applyHitbox(player)
    local character = player.Character
    local head = character and character:FindFirstChild("Head")
    if head then
        -- Apply maximum size hitbox
        head.Size = HeadSize
        head.Transparency = 0.3  -- Slight transparency for visibility
        head.BrickColor = BrickColor.new("Really red")  -- High visibility color
        head.Material = Enum.Material.Neon
        head.CanCollide = false  -- Ensure no collision issues
        head.Massless = true  -- Prevents movement issues
    end
end

RunService.RenderStepped:Connect(function()
    if not IsDisabled then
        local localPlayer = Players.LocalPlayer
        local localTeam = localPlayer.Team

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer and (not IsTeamCheckEnabled or player.Team ~= localTeam) then
                applyHitbox(player)
            end
        end
    end
end)