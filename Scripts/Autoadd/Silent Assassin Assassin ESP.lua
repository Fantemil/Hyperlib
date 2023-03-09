-- made by guest257351 :)))))))
_G['ENABLED'] = true

local currentArrow = nil

local function secureGetPlayer(playerName)
    if playerName == nil then
        return nil
    end
    local player = nil
    if not playerName then
        return nil
    else
        local playerService = game:GetService("Players")
        player = playerService:FindFirstChild(playerName)
        if player then
            return player
        else
            return nil
        end
    end
end

local function getAssassin()
    local assassin = nil
    local assassinName = workspace.assassin.showname.Value
    local assassinHealth = workspace.assassin.healthleft.Value
    local assassinEscaped = workspace.assassin.escaped.Value
    workspace.assassin.marked.Value = 1
    if assassinName and assassinHealth ~= 0 and not assassinEscaped then
        return secureGetPlayer(assassinName)
    else
        return nil
    end
end

local function applyArrow(player)
    local CPlayer = secureGetPlayer(currentArrow)
    local CArrow = nil
    local root = player.Character:FindFirstChild("HumanoidRootPart")
    if not root then
        return
    end
    if root:FindFirstChild("ARROW") then
        return
    end
    if CPlayer then
        CArrow = root:FindFirstChild("ARROW")
    else
        CArrow = nil
    end
    if currentArrow == nil or CArrow == nil then
        local arrow = game:GetService("ReplicatedStorage").ffagmarker
        arrow = arrow:Clone()
        arrow.Name = "ARROW"
        arrow.Parent = player.Character:FindFirstChild('HumanoidRootPart')
        currentArrow = player.Name
    else
        CArrow.Parent = player.Character:FindFirstChild('HumanoidRootPart')
        currentArrow = player.Name
    end
end
local function unapplyArrow(name)

    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Name ~= name then
            local character = player:FindFirstChild("Character")
            if character ~= nil then
                if character.HumanoidRootPart:FindFirstChild("ARROW") then
                    character.HumanoidRootPart.ARROW:Destroy()
                end
            end
        end
    end
end
while _G['ENABLED'] do
    local assassin = getAssassin()
    if assassin then
        applyArrow(assassin)
    else
        unapplyArrow(assassin)
    end
    wait(1)
end