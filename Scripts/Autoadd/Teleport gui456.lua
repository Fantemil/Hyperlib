-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- Create Main UI Window
local Window = Library.CreateLib("Prison Hub", "DarkTheme")

-- Create Main Tab for Teleportation
local MainTab = Window:NewTab("Teleportation")
local MainSection = MainTab:NewSection("Locations")

-- Coordinates for the block location near the M9
local blockCFrame = CFrame.new(
    829.298706, 97.5000153, 2250.29614,  -- Position
    0, 0, 1,  -- X axis
    0, 1, 0,  -- Y axis
    -1, 0, 0  -- Z axis
)

-- Coordinates for the break room location
local breakRoomCFrame = CFrame.new(
    790.350159, 97.1900024, 2272.6001,  -- Position
    0, 0, 1,  -- X axis
    0, 1, 0,  -- Y axis
    -1, 0, 0  -- Z axis
)

-- Coordinates for teleportation to the prison
local prisonCFrame = CFrame.new(
    895.399658, 97.1383057, 2381.50073,  -- Position
    -1, 0, 0,  -- X axis
    0, 1, 0,   -- Y axis
    0, 0, -1   -- Z axis
)

-- Coordinates for teleportation to the lunch room
local lunchRoomCFrame = CFrame.new(
    931.499512, 99.7932739, 2306.59668,  -- Position
    -1, 0, 0,  -- X axis
    0, 1, 0,   -- Y axis
    0, 0, -1   -- Z axis
)

-- Coordinates for teleportation to the yard
local yardCFrame = CFrame.new(
    805.384766, 95.0899429, 2404.60522,  -- Position
    0, 0, 1,  -- X axis
    0, 1, 0,  -- Y axis
    -1, 0, 0  -- Z axis
)

-- Coordinates for the tower location
local towerCFrame = CFrame.new(
    818.212524, 126.53994, 2574.5,  -- Position
    1, 0, 0,  -- X axis
    0, 1, 0,  -- Y axis
    0, 0, 1   -- Z axis
)

-- Coordinates for the camera room location
local cameraRoomCFrame = CFrame.new(
    790.659973, 98.4419556, 2319.90283,  -- Position
    0.707068086, 0, -0.707145572,  -- X axis
    0, 1, 0,  -- Y axis
    0.707145572, 0, 0.707068086  -- Z axis
)

-- Function to teleport the player to the block location near the M9
local function teleportToBlockLocation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(blockCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset
end

-- Function to teleport the player to the break room
local function teleportToBreakRoom()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(breakRoomCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset
end

-- Function to teleport the player to the prison
local function teleportPlayerToPrison()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(prisonCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset to place player on top
end

-- Function to teleport the player to the lunch room
local function teleportPlayerToLunchRoom()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(lunchRoomCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset to place player on top
end

-- Function to teleport the player to the yard
local function teleportPlayerToYard()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(yardCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset to place player on top
end

-- Function to teleport the player to the tower
local function teleportPlayerToTower()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(towerCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset to place player on top
end

-- Function to teleport the player to the camera room
local function teleportPlayerToCameraRoom()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    character:SetPrimaryPartCFrame(cameraRoomCFrame + Vector3.new(0, 5, 0))  -- Adjust Y offset to place player on top
end

-- Add Button to Teleport to Block Location
local TeleportBlockButton = MainSection:NewButton("Teleport to Guard Room", "Teleport to the specified block location", function()
    teleportToBlockLocation()
end)

-- Add Button to Teleport to Break Room
local TeleportBreakRoomButton = MainSection:NewButton("Teleport to Break Room", "Teleport to the specified break room location", function()
    teleportToBreakRoom()
end)

-- Add Button to Teleport Player to Prison
local TeleportPrisonButton = MainSection:NewButton("Teleport to Prison", "Teleport to the specified prison location", function()
    teleportPlayerToPrison()
end)

-- Add Button to Teleport Player to Lunch Room
local TeleportLunchRoomButton = MainSection:NewButton("Teleport to Lunch Room", "Teleport to the specified lunch room location", function()
    teleportPlayerToLunchRoom()
end)

-- Add Button to Teleport Player to Yard
local TeleportYardButton = MainSection:NewButton("Teleport to Yard", "Teleport to the specified yard location", function()
    teleportPlayerToYard()
end)

-- Add Button to Teleport Player to Tower
local TeleportTowerButton = MainSection:NewButton("Teleport to Tower", "Teleport to the specified tower location", function()
    teleportPlayerToTower()
end)

-- Add Button to Teleport Player to Camera Room
local TeleportCameraRoomButton = MainSection:NewButton("Teleport to Camera Room", "Teleport to the specified camera room location", function()
    teleportPlayerToCameraRoom()
end)

-- Create Team Tab for Team Selection
local TeamTab = Window:NewTab("Team Selection")
local TeamSection = TeamTab:NewSection("Teams")

-- Function to change the player team to "Inmate"
local function changeTeamToInmate()
    local args = {
        [1] = "Bright orange"
    }
    workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
end

-- Function to change the player team to "Police"
local function changeTeamToPolice()
    local args = {
        [1] = "Bright blue"
    }
    workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
end

-- Add Button to Change Team to Inmate
local TeamInmateButton = TeamSection:NewButton("Join Inmate Team", "Change team to Inmate", function()
    changeTeamToInmate()
end)

-- Add Button to Change Team to Police
local TeamPoliceButton = TeamSection:NewButton("Join Police Team", "Change team to Police", function()
    changeTeamToPolice()
end)