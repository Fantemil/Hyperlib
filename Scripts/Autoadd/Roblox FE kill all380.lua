--equip Pistol to Make Loop kill all work
while true do
local player = game.Players.LocalPlayer

for i, v in ipairs(game.Players:GetPlayers()) do
    if v.Name ~= player.Name then
        local vCharacter = v.Character
        if vCharacter then
            local VCH = vCharacter:FindFirstChild("Humanoid")
            if VCH then
                local args = {
                    [1] = VCH,
                    [2] = 100,  -- Assuming 20 is the damage amount you want to inflict
                    [3] = {
                        [1] = 195.16810607910156,
                        [2] = CFrame.new(-52.45732879638672, 103.46327209472656, 361.6676330566406) * CFrame.Angles(1.6868478835974088e-09, 1.3365272283554077, -0.006583080627024174)
                    }
                }

                game:GetService("Players").LocalPlayer.Character.Pistol.RemoteEvent:FireServer(unpack(args))
            end
        end
    end
end
wait(0.1)
end