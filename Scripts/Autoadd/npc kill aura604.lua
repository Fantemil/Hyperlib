local z = game.Players.LocalPlayer.Character.Torso
local m = Instance.new('Part')
local weld = Instance.new('Weld')
m.Size = Vector3.new(30,30,30)
m.Transparency = 0.5
m.CanCollide = false
m.Position = z.Position
m.Parent = z
weld.Parent = m
weld.Part0 = z
weld.Part1 = m
getgenv().G = true
while getgenv().G do
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
    for i,d in pairs(m:GetTouchingParts()) do
        if d.Parent.Name ~= game.Players.LocalPlayer.Name and d.Parent:FindFirstChild('Humanoid') then
            d.Parent.Humanoid.Health = 0
        end
    end
    wait()
end