local UIS = game:GetService'UserInputService'
local ReplicatedStorage = game:GetService'ReplicatedStorage'
local Players = game:GetService'Players'
local LocalPlayer = Players.LocalPlayer


local function spawnGlitch()
    local Main_Game = require(LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
    local CurrentRoom = workspace.CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]
    require(ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Main_Game, CurrentRoom)
end


spawnGlitch()