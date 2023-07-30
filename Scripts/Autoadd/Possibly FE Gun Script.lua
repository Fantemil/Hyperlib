local damageEnabled = true -- toggle damage on/off
local resetEnabled = true -- toggle reset on/off

local gunSounds = {
    AK47 = "rbxassetid://2099208885",
    RPG = "rbxassetid://153259741",
    SCARH = "rbxassetid://2099208185",
    AK12 = "rbxassetid://2099208853",
    MPX = "rbxassetid://2070447499",
    GLOCK17 = "rbxassetid://140432905"
}

local playerGuns = {} -- list of guns players are holding

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        
        -- when a player dies, reset them
        humanoid.Died:Connect(function()
            if resetEnabled then
                humanoid.Health = humanoid.MaxHealth
            end
        end)
    end)
end

local function onGunFired(player, gunName)
    if damageEnabled then
        -- find all players within 10 studs of the gun's firing position
        for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
            if otherPlayer ~= player then
                local otherChar = otherPlayer.Character
                if otherChar then
                    local otherHumanoid = otherChar:FindFirstChildOfClass("Humanoid")
                    if otherHumanoid then
                        local gunPos = player.Character[gunName].Handle.WorldPosition
                        local otherPos = otherChar.HumanoidRootPart.Position
                        if (gunPos - otherPos).magnitude <= 10 then
                            otherHumanoid:TakeDamage(100)
                        end
                    end
                end
            end
        end
    end
end

local function onPlayerEquippedWeapon(player, tool)
    if tool:IsA("Tool") then
        local gunName = tool.Name
        if gunSounds[gunName] then
            playerGuns[player] = gunName
            
            -- play the gun sound for everyone
            local sound = Instance.new("Sound")
            sound.SoundId = gunSounds[gunName]
            sound.Parent = tool
            sound.Volume = 0.5
            sound:Play()
        end
    end
end

local function onPlayerUnequippedWeapon(player, tool)
    if tool:IsA("Tool") then
        playerGuns[player] = nil
    end
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(function(player)
    playerGuns[player] = nil
end)

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        character.ChildAdded:Connect(function(child)
            if child:IsA("Tool") then
                onPlayerEquippedWeapon(player, child)
            end
        end)
        character.ChildRemoved:Connect(function(child)
            if child:IsA("Tool") then
                onPlayerUnequippedWeapon(player, child)
            end
        end)
    end)
end)

game:GetService("RunService").RenderStepped:Connect(function()
    for player, gunName in pairs(playerGuns) do
        local gun = player.Character[gunName]
        if gun then
            gun.Handle.Transparency = 0
            gun.Handle.CanCollide = false
            gun.Handle.Size = Vector3.new(1, 1, 1)
        end
    end
end)

game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)