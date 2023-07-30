-- box esp LOL I DONT KNOW WHAT TO SAY UMM... HI IM FLAMES IM GAY I MADE THIS FOR FUN LET ME TELL YOU I WAS BORED ASF
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function createBox()
    local box = Instance.new("BoxHandleAdornment")
    box.Size = Vector3.new(4, 7, 2)
    box.Color3 = Color3.new(1, 0, 0)
    box.Transparency = 0.5
    box.ZIndex = 5
    return box
end

local function updateEsp(player, box)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        box.Visible = true
        box.Adornee = character.HumanoidRootPart
        box.Parent = character.HumanoidRootPart
    else
        box.Visible = false
        box.Adornee = nil
        box.Parent = nil
    end
end

local function onPlayerAdded(player)
    local box = createBox()
    updateEsp(player, box)
    player.CharacterAdded:Connect(function()
        updateEsp(player, box)
    end)
    player.CharacterRemoving:Connect(function()
        updateEsp(player, box)
    end)
end

for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

Players.PlayerAdded:Connect(function(player)
    onPlayerAdded(player)
end)

RunService.RenderStepped:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        updateEsp(player)
    end
end)
