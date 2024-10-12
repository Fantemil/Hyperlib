local folder = game.Workspace:WaitForChild("Enemies")

local function changeSizeRecursively(instance)
    if instance:IsA("BasePart") then
        instance.Size = Vector3.new(50, 50, 50)
		instance.Transparency = 0.75
    end

    for _, child in ipairs(instance:GetChildren()) do
        changeSizeRecursively(child)
    end
end

while true do
    for _, child in ipairs(folder:GetChildren()) do
        changeSizeRecursively(child)
    end
    wait(0.1)
end