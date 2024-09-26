getgenv().G = true
getgenv().Creator = 'https://discord.gg/B3HqPPzFYr - HalloweenGaster'
while getgenv().G and getgenv().Creator == 'https://discord.gg/B3HqPPzFYr - HalloweenGaster' do
    wait()
    local TweenService = game:GetService("TweenService")
    local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = CFrame.new(99.6208267211914, 17.10936164855957, 116.12525177001953)}):Play()
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge) -- Establece el rango de simulaciÃ³n en infinito
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge) -- Establece el rango mÃ¡ximo de simulaciÃ³n en infinito
    for i,d in pairs(game.Workspace:GetDescendants()) do
        if d.ClassName == 'Humanoid' and d.Parent.Name ~= game.Players.LocalPlayer.Name then
            d.Health = 0
        end
    end
end