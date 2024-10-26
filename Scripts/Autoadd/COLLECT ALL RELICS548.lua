local player = game.Players.LocalPlayer
local HRP = player.Character:WaitForChild("HumanoidRootPart")
local Relics = workspace.__THINGS.Relics

for _, relic in ipairs(Relics:GetChildren()) do
    if relic:IsA("BasePart") then
        relic.CFrame = HRP.CFrame
        
        for i = 1, 50 do
            local args = {
                [1] = i
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Relic_Found"):InvokeServer(unpack(args))
        end
    end
end
