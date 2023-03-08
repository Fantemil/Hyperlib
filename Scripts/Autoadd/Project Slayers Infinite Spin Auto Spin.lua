local wanted = {"Kamado","Agatsuma"}
for i = 1,game.ReplicatedStorage.Player_Data[game.Players.LocalPlayer.Name].Spins.Value do
game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("check_can_spin")
task.wait(.13)
if table.find(wanted,game.ReplicatedStorage.Player_Data[game.Players.LocalPlayer.Name].Clan.Value) then
    return end
end