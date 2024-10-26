local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Ur Gay11!!")
local b = w:CreateFolder("Main")

b:Button("Kill", function()
    while true do
        local function findClosestPlayer()
            local myPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local closestPlayer = nil
            local shortestDistance = math.huge

            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local distance = (myPosition - character.HumanoidRootPart.Position).magnitude
                        if distance < shortestDistance then
                            shortestDistance = distance
                            closestPlayer = player
                        end
                    end
                end
            end

            return closestPlayer
        end

        local closestPlayer = findClosestPlayer()
        if closestPlayer then
            local args = {
                [1] = "Bite",
                [2] = closestPlayer.Character.Humanoid,
                [3] = closestPlayer.Character.BiteHitbox
            }

            game:GetService("ReplicatedStorage").ServerEvents.Bite:FireServer(unpack(args))
        end

        wait(0.1)
    end
end)