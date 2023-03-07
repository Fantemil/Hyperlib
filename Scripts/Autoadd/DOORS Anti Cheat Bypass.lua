if game.PlaceId == 6839171747 then

task.defer(function()
   while wait() do
       pcall(function()
           workspace.CurrentRooms["0"].StarterElevator.DoorHitbox:Destroy()
       end)
   end
end)

game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Disabled = true

end