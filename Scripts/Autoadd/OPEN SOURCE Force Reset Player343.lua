local plr = game.Players.LocalPlayer

function resetPlr()
    if plr.Character then
        plr.Character:BreakJoints()
    end
end

resetPlr()