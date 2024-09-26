local UIS = game:GetService('UserInputService')

game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
    local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
    require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute('CurrentRoom')], 100)
end)