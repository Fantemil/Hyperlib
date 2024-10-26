--new update on this
local numb = 2
local per = 0.1
local plr = game:GetService("Players")

for i = 1, numb do
    local tl = {
        CFrame.new(-5.34098434, 2.99999928, -131.639297, -0.0251167398, -3.98625666e-08, -0.999684513, -2.53039705e-08, 1, -3.92393922e-08, 0.999684513, 2.43104221e-08, -0.0251167398),
        CFrame.new(-8.74623013, 2.99999928, -165.897995, -0.556308389, 1.06194889e-07, -0.83097589, 1.09730422e-07, 1, 5.433483e-08, 0.83097589, -6.09564097e-08, -0.556308389),
        CFrame.new(-33.5963936, 2.99999928, -102.720894, 0.988494337, -4.43439454e-08, -0.151257902, 4.34246061e-08, 1, -9.38110922e-09, 0.151257902, 2.70485812e-09, 0.988494337),
        CFrame.new(-26.0162125, 2.99999905, -103.067192, 0.281293511, -1.22075861e-08, -0.959621787, 3.68522173e-08, 1, -1.91877292e-09, 0.959621787, -3.48244527e-08, 0.281293511)
    }
    local rdn = math.random(1, #tl)
    local tls = tl[rdn]
    plr.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = tls
    wait(per)
    fireclickdetector(workspace:WaitForChild("Interaction"):WaitForChild("ToolGivers"):WaitForChild("Rainbow Potion"):WaitForChild("ClickDetector"))
    wait(0.1)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Rainbow Potion") then
        game.Players.LocalPlayer.Backpack:FindFirstChild("Rainbow Potion").Parent = game.Players.LocalPlayer.Character
    end
    wait(0.1)
    if game.Players.LocalPlayer.Character:FindFirstChild("Rainbow Potion") then
        game.Players.LocalPlayer.Character:FindFirstChild("Rainbow Potion").Parent = game.Workspace
    end
    wait(0.1)
end