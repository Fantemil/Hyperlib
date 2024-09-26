local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("brkhvn gui", "DarkTheme")
local Tab = Window:NewTab("Scripts")
local Tab2 = Window:NewTab("Avatar")
local Tab3 = Window:NewTab("LocalPlayer")
local Section = Tab:NewSection("GUIs And Hubs)
local Section2 = Tab:NewSection("Scripts")
local Section3 = Tab2:NewSection("Bundles")
local Section4 = Tab2:NewSection("Custom Bundles")
local Section5 = Tab2:NewSection("avatar copier !!only works with real avatar!!")
local Section6 = Tab3:NewSection("stats")
Section6:NewSlider("WalkSpeed", "SliderInfo", 300, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section6:NewSlider("JumpPower", "SliderInfo", 300, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section6:NewToggle("God", "ToggleInfo", function(state)
    if state then
        local Players = game:GetService("Players")

local function makeInvincible()
    local player = Players.LocalPlayer
    if player then
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.MaxHealth = math.huge
            humanoid.Health = math.huge
            humanoid:TakeDamage = function() end -- Prevents taking damage
            humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                humanoid.Health = humanoid.MaxHealth
            end)
        else
            warn("Humanoid not found in character.")
        end
    else
        warn("LocalPlayer not found.")
    end
end

makeInvincible()
    else
        plr.Humanoid.Health = 100
        plr.Humanoid.MaxHealth = 100
    end
end)
Section3:NewTextBox("Custom Bundle ID", "TextboxInfo", function(txt)
	local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

-- Function to change your character to a character from the Marketplace by asset ID
local function changeCharacterByAssetId(assetId)
    local success, assetInfo = pcall(function()
        return MarketplaceService:GetProductInfo(assetId)
    end)
    if success and assetInfo and assetInfo.AssetTypeId == 8 then -- AssetTypeId 8 represents bundles (full avatars)
        local player = Players.LocalPlayer
        player.AvatarAppearanceId = assetId
        player:LoadCharacter()
    else
        warn("Invalid asset ID or asset is not a bundle (full avatar).")
    end
end

-- Example usage: replace "AssetIdHere" with the actual asset ID of the character you want to become
changeCharacterByAssetId(txt)
end)
Section3:NewKeybind("Press R to Reset", "KeybindInfo", Enum.KeyCode.R, function()
	game.Players.LocalPlayer.Humanoid.Health = 0
end)
Section:NewButton("Jul Hub", "ButtonInfo", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub"))()
end)
Section2:NewButton("Infinite Jump", "ButtonInfo", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local InfiniteJumpEnabled = true

game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)
end)
Section3:NewButton("Korblox", "ButtonInfo", function()
    local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

-- Function to change your character to a character from the Marketplace by asset ID
local function changeCharacterByAssetId(assetId)
    local success, assetInfo = pcall(function()
        return MarketplaceService:GetProductInfo(assetId)
    end)
    if success and assetInfo and assetInfo.AssetTypeId == 8 then -- AssetTypeId 8 represents bundles (full avatars)
        local player = Players.LocalPlayer
        player.AvatarAppearanceId = assetId
        player:LoadCharacter()
    else
        warn("Invalid asset ID or asset is not a bundle (full avatar).")
    end
end

-- Example usage: replace "AssetIdHere" with the actual asset ID of the character you want to become
changeCharacterByAssetId(2501867236)
end)
Section3:NewButton("korblox death", "ButtonInfo", function()
    local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

-- Function to change your character to a character from the Marketplace by asset ID
local function changeCharacterByAssetId(assetId)
    local success, assetInfo = pcall(function()
        return MarketplaceService:GetProductInfo(assetId)
    end)
    if success and assetInfo and assetInfo.AssetTypeId == 8 then -- AssetTypeId 8 represents bundles (full avatars)
        local player = Players.LocalPlayer
        player.AvatarAppearanceId = assetId
        player:LoadCharacter()
    else
        warn("Invalid asset ID or asset is not a bundle (full avatar).")
    end
end

-- Example usage: replace "AssetIdHere" with the actual asset ID of the character you want to become
changeCharacterByAssetId(319226)
end)
Section3:NewButton("mini dude", "ButtonInfo", function()
    local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

-- Function to change your character to a character from the Marketplace by asset ID
local function changeCharacterByAssetId(assetId)
    local success, assetInfo = pcall(function()
        return MarketplaceService:GetProductInfo(assetId)
    end)
    if success and assetInfo and assetInfo.AssetTypeId == 8 then -- AssetTypeId 8 represents bundles (full avatars)
        local player = Players.LocalPlayer
        player.AvatarAppearanceId = assetId
        player:LoadCharacter()
    else
        warn("Invalid asset ID or asset is not a bundle (full avatar).")
    end
end

-- Example usage: replace "AssetIdHere" with the actual asset ID of the character you want to become
changeCharacterByAssetId(3314)
end)
Section5:NewTextBox("Username", "TextboxInfo", function(txt)
	local Players = game:GetService("Players")
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

-- Function to clone the character of another user by username
local function cloneCharacterByUsername(username)
    local player = Players:FindFirstChild(username)
    if player then
        local character = player.Character or player.CharacterAdded:Wait()
        -- Clone the appearance of the other player's character
        Character:ClearAllChildren()
        for _, item in pairs(character:GetChildren()) do
            if item:IsA("Accessory") or item:IsA("Clothing") then
                item:Clone().Parent = Character
            end
        end
    else
        warn("Player with username " .. username .. " not found!")
    end
end

-- Example usage: replace "UsernameHere" with the actual username of the user you want to copy
cloneCharacterByUsername(txt)
end)





