-- Follow instructions on how to use this script in the description if don't know how to use.

local player = game:GetService("Players").LocalPlayer -- Jump on a death block (to trick people). Click Z to die to it
local UIS = game:GetService("UserInputService")
local myzaza = false

UIS.InputBegan:Connect(function(input, GPE)
if GPE then return end
if input.KeyCode == Enum.KeyCode.Z then
myzaza = not myzaza
end
end)

while task.wait() do
local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, 10)
for _, part in ipairs(parts) do
part.CanTouch = myzaza
end
end