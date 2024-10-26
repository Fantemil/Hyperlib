local players = game:GetService("Players")
local local_player = players.LocalPlayer
local run_service = game:GetService("RunService")
local starter_gui = game:GetService("StarterGui")

local function extend_hitboxes(delta_time)
    local character = local_player.Character

    if not character then
        return
    end

    local humanoid_root_part = character:FindFirstChild("HumanoidRootPart")

    if not humanoid_root_part then
        return
    end

    for _, player in pairs(players:GetPlayers()) do
        if player == local_player then
            continue
        end

        local player_character = player.Character
        
        if not player_character then
            continue
        end

        local player_humanoid_root_part = player_character:FindFirstChild("HumanoidRootPart")

        if not player_humanoid_root_part then
            continue
        end

        local are_touching = false

        for _, part in pairs(workspace:GetPartsInPart(player_humanoid_root_part)) do
            if part:IsDescendantOf(character) then
                are_touching = true
                break
            end
        end

        if player.Team == local_player.Team or are_touching then
            player_humanoid_root_part.Size = Vector3.new(8, 8, 8)
            player_humanoid_root_part.Transparency = 0.95
            player_humanoid_root_part.BrickColor = player.Team.TeamColor
            player_humanoid_root_part.Shape = Enum.PartType.Ball
            player_humanoid_root_part.CanCollide = false
            continue
        end

        player_humanoid_root_part.Size = Vector3.new(8, 8, 8)
        player_humanoid_root_part.Transparency = 0.7
        player_humanoid_root_part.BrickColor = player.Team.TeamColor
        player_humanoid_root_part.Shape = Enum.PartType.Ball
        player_humanoid_root_part.CanCollide = true
    end
end

run_service.Stepped:Connect(extend_hitboxes)

starter_gui:SetCore("SendNotification", {
    Title = "loaded";
    Text = "Subcribe To PikzachuW";
    Icon = "rbxassetid://46059313";
})