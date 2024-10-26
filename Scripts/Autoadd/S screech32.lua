local UIS = game:GetService'UserInputService'

local function spawnScreech()
    local player = game.Players.LocalPlayer
    local currentRoom = workspace.CurrentRooms[player:GetAttribute("CurrentRoom")]
    local mainGame = require(player.PlayerGui.MainUI.Initiator.Main_Game)
    require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(mainGame, currentRoom)
end

spawnScreech()