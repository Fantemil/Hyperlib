local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("[?x2]? Fly Race!")
local m = w:CreateFolder("Main")

m:Button("+1 Million Wins",function()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Worlds["1"].Launch.TouchInterest.Parent, 0)
    wait(0.3)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Worlds["1"].Launch.TouchInterest.Parent, 1)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150336.188, -0.850529492, -101000.164, 0.00407263683, 4.59881235e-08, -0.999991715, 2.15204157e-08, 1, 4.60761491e-08, 0.999991715, -2.17078888e-08, 0.00407263683)
end)