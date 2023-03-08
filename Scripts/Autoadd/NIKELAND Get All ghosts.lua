function fire(Part)
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart,Part,0)
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart,Part,1)
end

for i = 1,4 do
    local Ghost = game:GetService("Workspace").ScavengerHunt.HalloweenEvent.Objects["Symbol_Ghost"..i]
    fire(Ghost.PrimaryPart)
end