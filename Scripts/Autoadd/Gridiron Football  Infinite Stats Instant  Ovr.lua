local args = {
   [1] = "Deadlift",
   [2] = workspace.Gym_Equip.Power_Rack,
   [3] = workspace.Gym_Equip.Power_Rack.Deadlift_Prompt.ProximityPrompt
}

game:GetService("ReplicatedStorage").Events.Completed_Workout:FireServer(unpack(args))