local playersService = game:GetService("Players")
local localPlayer = playersService.LocalPlayer
local humanoid = localPlayer.Character.Humanoid

local function hookWalkSpeed()
    -- Hook the __index metamethod of the game object
    local originalIndex = nil
    pcall(function()
        originalIndex = hookmetamethod(game, "__index", function(self, key)
            -- If the accessed object is the LocalPlayer's humanoid and the key is 'WalkSpeed', return 20 instead of the actual value
            if self == humanoid and key == "WalkSpeed" then
                return 0  -- you're fake speed 
            end
            
            -- Return the original __index metamethod for all other cases
            return originalIndex(self, key)
        end)
    end)
    
    if not originalIndex then
        warn("Failed to hook __index metamethod.")
    end
end

-- Hook the WalkSpeed on start
hookWalkSpeed()

-- Re-hook the WalkSpeed every time the player respawns
localPlayer.CharacterAdded:Connect(function(char)
    humanoid = char:WaitForChild("Humanoid")
    hookWalkSpeed()
end)