if not _G.OrionLib then
    _G.OrionLib = loadstring(game:HttpGet(('https://bloxxyserverfiles.netlify.app/LIB')))()

    -- Join the discord link for more scripts like this.
    setclipboard(tostring("https://discord.gg/NkKa3uAg"))
end

_G.ConfigurationCurrenLocation = _G.ConfigurationCurrenLocation or 45

-- Gets the local player
local player = game.Players.LocalPlayer

-- Function to print the player's position
local function printPlayerPosition()
    -- Gets the player's Character
    local character = player.Character
    
    -- Checks if the Character exists
    if character then
        -- Gets the HumanoidRootPart of the Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        
        -- Checks if HumanoidRootPart exists
        if humanoidRootPart then
            -- Gets the current position of the player
            local position = humanoidRootPart.Position
            
            -- Prints the coordinates x, y, z
            _G.OrionLib:MakeNotification({
                Name = "Current Location!",
                Content = "" .. "(X=" .. position.X .. ") (Y=" .. position.Y .. ") (Z=" .. position.Z .. ")",
                Image = "rbxassetid://4483345998",
                Time = _G.ConfigurationCurrenLocation
            })

            print("x:", position.X, "y:", position.Y, "z:", position.Z)
        else
            print("HumanoidRootPart not found.")
        end
    else
        print("Character not found.")
    end
end

-- Connects the function to the RenderStepped event to update every frame
printPlayerPosition()
