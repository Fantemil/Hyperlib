_G.toggle8v8 = false -- Change to true if you're playing in 8v8 server or false otherwise
_G.toggle4v4 = true -- Keep true if you're playing in 4v4 server or false otherwise

while _G.toggle8v8 == true do
    wait(0.25)
    game:GetService("Workspace").Ball.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Team.Name == "Team 1" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-749, 58, -433)
        local args = {
            [1] = Vector3.new(-735.962890625, 55.014896392822266, -151.97918701171875),
            [2] = 100,
            [3] = Vector3.new(0.007855286821722984, -0.3968237340450287, -0.9178611636161804),
            [4] = false,
            [5] = false,
            [6] = false,
            [7] = false
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ShootBall"):FireServer(unpack(args))
    elseif game.Players.LocalPlayer.Team.Name == "Team 2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-750, 58, -432)
        local args = {
            [1] = Vector3.new(-718.2317504882812, 55.014896392822266, -408.30780029296875),
            [2] = 100,
            [3] = Vector3.new(0.02233852818608284, -0.23979586362838745, -0.9705663323402405),
            [4] = false,
            [5] = false,
            [6] = false,
            [7] = false
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ShootBall"):FireServer(unpack(args))
    end
end
while _G.toggle4v4 == true do
    wait(0.25)
    game:GetService("Workspace").Ball.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Team.Name == "Team 1" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1417, 58, -293)
        local args = {
            [1] = Vector3.new(-750.3995971679688, 59.59235382080078, -436.16802978515625),
            [2] = 100,
            [3] = Vector3.new(-0.008165668696165085, -0.16857923567295074, -0.985654354095459),
            [4] = false,
            [5] = false,
            [6] = false,
            [7] = false
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ShootBall"):FireServer(unpack(args))
    elseif game.Players.LocalPlayer.Team.Name == "Team 2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1420, 58, 234)
        local args = {
            [1] = Vector3.new(-1419.9190673828125, 57.45326232910156, 238.6351776123047),
            [2] = 100,
            [3] = Vector3.new(0.016113411635160446, -0.3855316936969757, 0.9225538372993469),
            [4] = false,
            [5] = false,
            [6] = false,
            [7] = false
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ShootBall"):FireServer(unpack(args))
    end
end
