local badges = {
    2129729553,
    2129729565,
    2129729570,
    2129729618,
    2129729625,
    2129729628,
    2129729636
}

for _,v in pairs(badges) do
    game:GetService("ReplicatedStorage").Remotes.Events.Profile.AwardBadge:FireServer(v)
end