while wait() do
    pcall(function()
        game.Players.LocalPlayer.Character.UpperTorso.FlamethrowerFireParticle:Destroy()
    end)
end