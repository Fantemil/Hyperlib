local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local hitCircles = {}

local function createHitCircle(player)
    local character = player.Character
    if not character then return end
    
    local hitCircle = Instance.new("Part")
    hitCircle.Shape = Enum.PartType.Ball
    hitCircle.BrickColor = BrickColor.new(Color3.fromRGB(0, 102, 0))
    hitCircle.Transparency = 0.5
    hitCircle.Size = Vector3.new(10, 10, 10)
    hitCircle.Anchored = false
    hitCircle.CanCollide = true
    hitCircle.Parent = workspace
    
    table.insert(hitCircles, {player = player, circle = hitCircle})
end

local function destroyHitCircle(player)
    for i, hitData in ipairs(hitCircles) do
        if hitData.player == player then
            hitData.circle:Destroy()
            table.remove(hitCircles, i)
            break
        end
    end
end

local function showHitCircles()
    for _, hitData in ipairs(hitCircles) do
        local otherPlayer = hitData.player
        local otherCharacter = otherPlayer.Character
        if otherCharacter then
            local otherRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
            if otherRootPart then
                local distance = (otherRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                if distance <= 20 then
                    hitData.circle.Size = Vector3.new(40, 40, 40)
                else
                    hitData.circle.Size = Vector3.new(10, 10, 10)
                end
                hitData.circle.CFrame = CFrame.new(otherRootPart.Position)
            end
        end
    end
end

createHitCircle(player)

game.Players.PlayerAdded:Connect(function(otherPlayer)
    createHitCircle(otherPlayer)
end)

game.Players.PlayerRemoving:Connect(function(otherPlayer)
    destroyHitCircle(otherPlayer)
end)

while true do
    showHitCircles()
    wait(0.001)
end