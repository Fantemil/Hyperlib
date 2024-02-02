local HeadSize = 30
local IsScriptEnabled = true
local IsTeamCheckEnabled = false

local function ModifyPlayerPart(part)
    part.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
    part.Transparency = 0.7
    part.BrickColor = BrickColor.new("Really blue")
    part.Material = Enum.Material.Neon
    part.CanCollide = false
end

game:GetService('RunService').RenderStepped:Connect(function()
    if IsScriptEnabled then
        local localPlayer = game:GetService('Players').LocalPlayer
        if not localPlayer then return end
        
        local localPlayerTeam = localPlayer.Team
        
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player ~= localPlayer and player.Character then
                if IsTeamCheckEnabled then
                    local playerTeam = player.Team
                    if playerTeam ~= localPlayerTeam then
                        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                            pcall(function()
                                ModifyPlayerPart(humanoidRootPart)
                            end)
                        end
                    end
                else
                    local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        pcall(function()
                            ModifyPlayerPart(humanoidRootPart)
                        end)
                    end
                end
            end
        end
    end
end)