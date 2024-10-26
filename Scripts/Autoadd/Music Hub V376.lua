-- Load the Orion UI library
local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/xwW9BAbn'))()

-- Create the main window
local Window = OrionLib:MakeWindow({Name = "Music Player", HidePremium = false, SaveConfig = true, ConfigFolder = "MusicConfig"})

-- Home tab
local HomeTab = Window:MakeTab({
    Name = "Username Info",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

HomeTab:AddSection({Name = "--> Gui Information <--"})
HomeTab:AddParagraph("Hello, Welcome", game.Players.LocalPlayer.Name.."!")

HomeTab:AddSection({Name = "--> Local Player Info <--"})
HomeTab:AddParagraph("Username", game.Players.LocalPlayer.Name)
HomeTab:AddParagraph("Display Name", game.Players.LocalPlayer.DisplayName)
HomeTab:AddParagraph("User Id", tostring(game.Players.LocalPlayer.UserId))
HomeTab:AddParagraph("Account Age/Days", tostring(game.Players.LocalPlayer.AccountAge))
HomeTab:AddParagraph("Character Appearance ID", tostring(game.Players.LocalPlayer.CharacterAppearanceId))

HomeTab:AddSection({Name = "--> Game Info <--"})
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
HomeTab:AddParagraph("Game Name", gameName)
HomeTab:AddParagraph("Game ID", tostring(game.PlaceId))
HomeTab:AddParagraph("Job ID", tostring(game.JobId))
HomeTab:AddParagraph("Max Players", tostring(game.Players.MaxPlayers))

-- Discord tab
local DiscordTab = Window:MakeTab({
    Name = "Discord",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

DiscordTab:AddParagraph("Discord Server", "https://discord.gg/u8CbRzPHfn")

-- Music tab
local MusicTab = Window:MakeTab({
    Name = "Music",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create a section for the music controls
local MusicSection = MusicTab:AddSection({
    Name = "Music Controls"
})

-- Create a sound object for the music player
local musicPlayer = Instance.new("Sound")
musicPlayer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Set the initial music volume
local musicVolume = 1

-- Define the music data
local musicData = {
    ["Martin Graff - Balance"] = "7024183256",
    ["Taco Bot 3000"] = "9245552700",
    ["ily kirkiimad"] = "15693138306",
    ["Death Star"] = "5410084938",
    ["Cyber Heist"] = "9042159897",
}

-- Function to play music
local function playMusic(name)
    local id = musicData[name]
    if id then
        -- Stop the current music if it's playing
        if musicPlayer.IsPlaying then
            musicPlayer:Stop()
        end
        -- Set the music ID and volume, then play the music
        musicPlayer.SoundId = "rbxassetid://" .. id
        musicPlayer.Volume = musicVolume
        musicPlayer:Play()
    end
end

-- Function to stop the music
local function stopMusic()
    -- Stop the music if it's playing
    if musicPlayer.IsPlaying then
        musicPlayer:Stop()
    end
end

-- Create a dropdown for selecting music
local musicDropdown = MusicSection:AddDropdown({
    Name = "Select Music",
    Default = "",
    Options = {"Martin Graff - Balance", "Taco Bot 3000", "ily kirkiimad", "Death Star", "Cyber Heist"},
    Callback = function(option)
        playMusic(option)
    end
})

-- Create a dropdown for adjusting the volume
local volumeDropdown = MusicSection:AddDropdown({
    Name = "Volume",
    Default = "1",
    Options = {"0.5", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"},
    Callback = function(option)
        musicVolume = tonumber(option)
        if musicPlayer.SoundId ~= "" then
            musicPlayer.Volume = musicVolume
        end
    end
})

-- Create a button to stop the music
MusicSection:AddButton({
    Name = "Stop Music",
    Callback = stopMusic
})

-- Check if the player is in the correct game
local currentGameId = game.PlaceId
local correctGameId = 155615604
if currentGameId ~= correctGameId then
    game.Players.LocalPlayer:Kick("You are not in the correct game. Please join the game with ID: " .. correctGameId)
end

-- Initialize the Orion UI
OrionLib:Init()