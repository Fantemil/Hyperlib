local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local Char = LP.Character
local Root = Char.PrimaryPart
local Droplets = workspace.Droplets

while task.wait() do
    for _, droplet in ipairs(Droplets:GetChildren()) do
        droplet:PivotTo(Root.CFrame)
        task.wait()
    end
end