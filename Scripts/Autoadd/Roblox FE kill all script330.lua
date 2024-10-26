--equip fist to Make Kill all work
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

local hiddenObjectName = "\224\184\171\224\184\161\224\184\177\224\184\148"
local hiddenObject = character:FindFirstChild(hiddenObjectName)

local function applyDamageToAllPlayers()
    if hiddenObject and hiddenObject:FindFirstChild("Scripts") then
        local clientScript = hiddenObject.Scripts:FindFirstChild("ClientScript")
        
        if clientScript then
            for _, targetPlayer in ipairs(Players:GetPlayers()) do
                if targetPlayer ~= localPlayer then
                    local targetCharacter = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()

                    if targetCharacter and targetCharacter:FindFirstChild("Humanoid") then
                        local args = {
                            [1] = "DealDamage",
                            [2] = targetCharacter.Humanoid,
                            [3] = localPlayer.Character.HumanoidRootPart,
                            [4] = 100
                        }

                        clientScript.RunFunction:FireServer(unpack(args))
                    else
                        warn("Target character or humanoid not found for player: " .. targetPlayer.Name)
                    end
                end
            end
        else
            warn("ClientScript not found")
        end
    else
        warn("Hidden object or Scripts folder not found")
    end
end

while true do
    applyDamageToAllPlayers()
    wait(1)  -- Wait for 1 second before repeating
end
