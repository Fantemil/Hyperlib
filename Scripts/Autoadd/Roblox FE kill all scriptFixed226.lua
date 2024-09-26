-- Reminder: Join a Team and select Class and Always Equip Gun To make Script Work(Actually you don't need to Equip Gun the Script alway Work anyway but if Script doesn't work just equip)
while true do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local localroot = character:WaitForChild("HumanoidRootPart")

local function closestEnemy()
    local range = math.huge
    local target = nil
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Team ~= player.Team and v.Character then
            local enemyRoot = v.Character:FindFirstChild("HumanoidRootPart")
            if enemyRoot then
                local distance = (localroot.Position - enemyRoot.Position).magnitude
                if distance < range then
                    range = distance
                    target = v
                end
            end
        end
    end
    return target
end

local enemy = closestEnemy()
if enemy then
    local enemyCharacter = enemy.Character
    local enemyRoot = enemyCharacter:FindFirstChild("Head")
    local enemyHumanoid = enemyCharacter:FindFirstChild("Humanoid")
    if enemyRoot and enemyHumanoid then
        spawn(function()
            while enemyHumanoid.Health > 0 do
                local args = {
                    [1] = enemyHumanoid,
                    [2] = math.huge,
                    [3] = enemyRoot
                }
                game:GetService("ReplicatedStorage").RemoteEvents.DamageEvent:FireServer(unpack(args))
                wait() -- Change this Delay to Anything if you don't like it
            end
        end)
    end
end
wait() -- Another Delay to Make Loop keep on Change this to Anything if you dont like it
end