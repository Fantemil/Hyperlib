local player = game:GetService("Players").LocalPlayer
local character = player.Character
while workspace:FindFirstChild("Prefab",true) do
    character:PivotTo(workspace:FindFirstChild("Prefab",true).CFrame)
    wait()
end