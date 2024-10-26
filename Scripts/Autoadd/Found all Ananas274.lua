-- its by me 
-- By me The owner

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local f = game.Workspace:WaitForChild("ToFind")

for _, part in ipairs(f:GetChildren()) do
    if part:IsA("BasePart") then
        hrp.CFrame = part.CFrame + Vector3.new(0, 3, 0)
        wait(0.2) 
    end
end
