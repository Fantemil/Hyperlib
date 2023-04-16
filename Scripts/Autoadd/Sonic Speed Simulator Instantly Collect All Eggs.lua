local args = {
[1] = "IncrementPlayerData",
[2] = {
["dataPath"] = {
[1] = "PodiumTasks"
},
["delta"] = 60,
["dataKey"] = "EggsFound"
}
}

game:GetService("ReplicatedStorage").Knit.Services.MapStateService.RE.OnStateAction:FireServer(unpack(args))