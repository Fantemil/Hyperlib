local function summonHalt()
    local EntityModules = require(game.ReplicatedStorage.ClientModules.EntityModules.Shade)
    local MainUI = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
    local currentRoom = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
    
    EntityModules.stuff(MainUI, currentRoom)
end

 summonHalt()
local haltCalled = false

local function callHaltOnce()
    if not haltCalled then
        summonHalt()
        haltCalled = true
    end
end

callHaltOnce()

 summonHalt()
while true do
    wait(10)
end