local table = {2127224806,
2127224809,
2127224823,
2127234743,
2127234749}
for i,v in pairs(table) do
   wait()
   local args = {
   [1] = v
}

game:GetService("ReplicatedStorage").Badges.Events.AwardBadgeRemote:FireServer(unpack(args))
end