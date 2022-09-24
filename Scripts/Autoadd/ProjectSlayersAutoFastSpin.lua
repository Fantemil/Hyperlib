local chosen = "Mori" -- type the thing u want here
repeat task.wait()
   game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("check_can_spin", game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Spins, game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan)
until string.lower(game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].Clan.Value) == string.lower(chosen)