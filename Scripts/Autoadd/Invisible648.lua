game.Players.LocalPlayer.Character.Hitbox:Remove()
game.Players.LocalPlayer.Character.HeadHB:Remove()
for i,v in pairs(game.Players.LocalPlayer.Character.LowerTorso:GetChildren())
    v:Remove()
end