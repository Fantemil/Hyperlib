_G.TurretKill = true

local LP = game.Players.LocalPlayer.Character.HumanoidRootPart
while _G.TurretKill do
    for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
        if v.Name == "Head" then
            local args = {
                [1] = {
                    [1] = {
                        [1] = LP.Position,
                        [2] = v.Position,
                        [3] = v.Parent.Head
                    }
                }
            }
            game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.ShootTurret:FireServer(unpack(args))
        end
    end
    wait(0.001)
end
