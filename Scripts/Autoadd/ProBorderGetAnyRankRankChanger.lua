local rank = "FacilityDirector" --"Visitor", "MaintenanceCrew" "SecurityGuard", "MedicalStaff", "FacilityDirector", "EmergencyResponse", "Scientist"
game.ReplicatedStorage.RemoteEvents.UpdateTeam:FireServer(rank)
wait()
game.Players.LocalPlayer.Character.Humanoid.Health = 0