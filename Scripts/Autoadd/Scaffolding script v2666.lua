print('Script by rozxino')
-- this is v2

local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")

local blockAppearTime = 0.20 -- Change the time for the block to appear

humanoid.StateChanged:Connect(function(oldState, newState)
    if newState == Enum.HumanoidStateType.Running or newState == Enum.HumanoidStateType.Jumping then
        wait(blockAppearTime)
        
        local block = Instance.new("Part")
        block.Size = Vector3.new(4, 4, 4) 
        block.Position = humanoid.RootPart.Position + Vector3.new(0, -block.Size.Y / 2, 0)
        block.BrickColor = BrickColor.new("Bright blue") 
        block.Anchored = true --set the Anchored thing
        block.Parent = workspace
    end
end)