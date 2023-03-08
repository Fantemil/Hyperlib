-- Variables
local Player = game:GetService("Players").LocalPlayer
local Blocks = game:GetService("Workspace").Plots[Player.Name].Blocks

-- Auto Merge
while task.wait(0.1) do
    for _, Block in next, Blocks:GetChildren() do
        firetouchinterest(Block, Block, 0)
        firetouchinterest(Block, Block, 1)
        task.wait()
    end
end