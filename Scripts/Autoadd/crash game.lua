lag = true
--[[
making it false halfway through wont unbreak the game.
left it open sourced.

---FOR DUMMIES---
true = will lag
false = wont start
-----------------


]]--

--setup part
local function setup()
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    game.TweenService:Create(hrp, TweenInfo.new(5, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-433.156219, 2.86199808, 283.514587, 0.0953403786, 9.95494975e-09, 0.995444715, 5.12360927e-08, 1, -1.49077266e-08, -0.995444715, 5.24240065e-08, 0.0953403786)}):Play()
    wait(6)
    local loc1 = game:GetService("Workspace").ConvenienceStore.ItemsForSale.BeachBalls.ClickDetector
    fireclickdetector(loc1)
    hrp.CFrame = CFrame.new(-510.166504, -0.137996078, 38.4162483, -0.861626923, 4.92972489e-08, -0.507542193, 4.05752303e-08, 1, 2.8246987e-08, 0.507542193, 3.74472231e-09, -0.861626923)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren("BeachBall")) do
        v.Parent = game.Players.LocalPlayer.Character
    end
end
setupq = done





--main part
local function main()
    while lag == true do
        for i = 1,2 do
            game:GetService("RunService").Heartbeat:Connect(function()
                game.ReplicatedStorage.ShootBeachBallEvent:FireServer(Vector3.new(math.random(0,100), math.random(-4.3, -4.5), math.random(100, 500)))
            end)
            wait()
        end
    end
end

--fun part
setup()
if setupq == done then
    main()
end