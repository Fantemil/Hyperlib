local currPlayer = game:GetService("Players").LocalPlayer
local servPlayer = game:GetService("Players")
local RunService = game:GetService("RunService")
local teams = game:GetService("Teams")


local function numberRound(n)
    return math.floor(tonumber(n) + 0.5)
end

function isSameTeam(player)
    if player.team ~= currPlayer.team and player.team ~= teams["Neutral"] then
        return false
    else
        return true
    end
end

function isDead(player)
    if
        player == nil or player.Character == nil or player.Character:FindFirstChildWhichIsA("Humanoid") == nil or
            player.Character.Humanoid.Health <= 0
     then
        return true
    else
        return false
    end
end

function getEquippedWeapon(player)
    local char = player.Character
    local weapon = char and char:FindFirstChildWhichIsA("Tool")

    if weapon ~= nil then
        return weapon.Name
    else
        return "Holstered"
    end
end

function doESP()
    for _, v in next, servPlayer:GetPlayers() do
        if v ~= currPlayer and not isSameTeam(v) and not isDead(v) then
            for _, k in next, v.Character:GetChildren() do
                if not isSameTeam(v) and not isDead(v) and k:IsA("BasePart") and not k:FindFirstChild("dohmESP") then
                    local dohmESP = Instance.new("BoxHandleAdornment", k)
                    dohmESP.Name = "dohmESP"
                    dohmESP.AlwaysOnTop = true
                    dohmESP.ZIndex = 10
                    dohmESP.Size = k.Size
                    dohmESP.Adornee = k
                    dohmESP.Transparency = 0.7
                    dohmESP.Color3 = Color3.new(1, 0, 0)
                end
                if not isDead(v) and not v.Character.Head:FindFirstChild("dohmESPTag") then
                    local dohmESPTag = Instance.new("BillboardGui", v.Character.Head)
                    dohmESPTag.Name = "dohmESPTag"
                    dohmESPTag.Size = UDim2.new(1, 200, 1, 30)
                    dohmESPTag.Adornee = v.Character.Head
                    dohmESPTag.AlwaysOnTop = true

                    local topTag = Instance.new("TextLabel", dohmESPTag)
                    topTag.TextWrapped = true
                    topTag.Text =
                        (v.Name ..
                        " | " ..
                            numberRound((currPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) ..
                                "m" .. " | " .. getEquippedWeapon(v))
                    topTag.Size = UDim2.new(1, 0, 1, 0)
                    topTag.TextYAlignment = "Top"
                    topTag.TextColor3 = Color3.new(1, 1, 1)
                    topTag.BackgroundTransparency = 1
                else
                    v.Character.Head.dohmESPTag.TextLabel.Text =
                        (v.Name ..
                        " | " ..
                            numberRound((currPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) ..
                                "m" .. " | " .. getEquippedWeapon(v))
                end
            end
        end
    end
end

RunService.Stepped:Connect(function()
doESP()
end
)