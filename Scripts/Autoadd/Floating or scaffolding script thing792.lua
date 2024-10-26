print('Scaffolding script')
local player = game.Players.LocalPlayer

local humanoid = player.Character:WaitForChild("Humanoid")

humanoid.StateChanged:Connect(function(oldState, newState)
    if newState == Enum.HumanoidStateType.Running or newState == Enum.HumanoidStateType.Jumping then
        local block = Instance.new("Part")
        block.Size = Vector3.new(4, 4, 4) -- Set the size of the block
        block.Position = humanoid.RootPart.Position + Vector3.new(0, -block.Size.Y / 2, 0) 
        block.BrickColor = BrickColor.new("Bright blue") -- Edit the color you like!
        block.Parent = workspace
    end
end)