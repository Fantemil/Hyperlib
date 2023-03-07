-- Variables
local Player = game:GetService("Players").LocalPlayer
local Blocks = game:GetService("Workspace").Plots[Player.Name].Blocks

-- Auto Merge
while task.wait(0.125) do
    for _, Block in next, Blocks:GetChildren() do
        game:GetService("ReplicatedStorage").Functions.TakeBlock:FireServer(Block, Block)
        game:GetService("ReplicatedStorage").Functions.DropBlock:FireServer()
        task.wait()
    end
end