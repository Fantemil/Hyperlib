local function TheIndustrialRevolutionAndItsConsequences()
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer.Character then
            pcall(function()
                local key = game.HttpService:GenerateGUID(false)--you're gonna shoot your eye out with that protection
                local args = {
                    [1] = v.Character.Head.Position,
                    [2] = v.Character.Head.Position,
                    [3] = 0.1025786002477,
                    [4] = key,
                    [5] = "EliteTurbine",
                    [6] = 1,
                    [7] = v.Character,
                    [8] = "Dart_Default"
                }
                game:GetService("ReplicatedStorage").TGSShootCombatV2_ServerCreateProjectile:FireServer(unpack(args))
                local args = {
                    [1] = 100,
                    [2] = key,
                    [3] = v.Character.Head,
                    [4] = v.Character.Head.Position,
                    [5] = v.Character.Head.Position,
                    [6] = "EliteTurbine"
                }
                game:GetService("ReplicatedStorage").TGSShootCombatV2_ReportHit:FireServer(unpack(args))
            end)
        end
    end
end
while wait() do
TheIndustrialRevolutionAndItsConsequences()
end