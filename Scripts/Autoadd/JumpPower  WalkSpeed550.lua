list = {
    ["Username"] = game.Players.LocalPlayer,
    ["WalkSpeed"] = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
    ["JumpPower"] = game.Players.LocalPlayer.Character.Humanoid.JumpPower
}
function info(...)
    for i,v in pairs(list) do
        if string.match(..., i) then
            if ... == i then
                print(v)
            end
        end
    end
end

function change(func, stats)
    if func == "WalkSpeed" then
        for i,v in pairs(list) do
            if i == func then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = stats
            end
        end
    elseif func == "JumpPower" then
        for i,v in pairs(list) do
            if i == func then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = stats
            end
        end
    end
end


