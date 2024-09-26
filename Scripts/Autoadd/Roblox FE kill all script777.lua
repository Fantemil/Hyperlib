-- this script by Mawin_CK that me!
-- enjoy this script
while true do
    local player = game.Players.LocalPlayer
    for i,v in ipairs(game.Players:GetPlayers()) do
        if v.Name ~= player.Name then
            local JN = v.Character
            if JN then
                local args = {
                [1] = "Damage",
                [2] = {
                [1] = 6,
                [2] = 28,
                [3] = 6,
                [5] = 0,
                [6] = JN,
                [8] = "rbxassetid://137579113"
                }
                }
                workspace.WeaponEvent:FireServer(unpack(args))
            end
        end
    end
    wait(0.1)
end
