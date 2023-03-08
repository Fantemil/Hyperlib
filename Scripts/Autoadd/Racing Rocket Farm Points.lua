local args = {
   [1] = "CheckAdd",
   [2] = 14,                           -- portal to go through (Uranus deep space etc..)
   [3] = 3,                             -- level of space your on (extra solar, Andromeda, deep space)
   [4] = 8                              -- lap your on 8 is the best going higher wont effect anything going lower will just reduce stars
}

game:GetService("ReplicatedStorage").RemoteEvents.Star_RemoteEvent:FireServer(unpack(args))