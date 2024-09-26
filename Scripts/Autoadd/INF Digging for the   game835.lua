local v2 = game
local v1 = v2.ReplicatedStorage
local v0 = v1.Remotes
v2 = game
local v4 = "Players"
v2 = v2:GetService(v4)
v1 = v2.LocalPlayer
v2 = v1:GetMouse()
local v3 = false

-- Modify checkTouching to increase dig size to 10
local function checkTouching(p1)
    local v1 = Instance.new("Part")
    v1.Shape = Enum.PartType.Block
    v1.Size = Vector3.new(10, 10, 10)  -- Set the dig size to 10
    v1.CanCollide = false
    v1.Position = p1
    v1.Transparency = 1
    v1.Anchored = true
    v1.Parent = v1.Character.Head

    v1.Touched:Connect(function() end)

    for _, v6 in pairs(v1:GetTouchingParts()) do
        local v7 = v6.Parent:FindFirstChild("Humanoid")
        if v7 or v6.Name == "Egg" or v6.Parent.Name == v1.Name then
            v3 = true
        end
    end

    v1:Destroy()
    return
end

-- Event listener for key press (changed to Q key)
local function handleInput(input, gameProcessed)
    if gameProcessed then return end  -- Ignore processed input

    if input.KeyCode == Enum.KeyCode.Q then --KEY HERE--
        local hitPosition = v2.Hit.p
        v0.Dig:FireServer(hitPosition, "Dig")
        checkTouching(hitPosition)
        if v3 then
            v0.Dig:FireServer(hitPosition, "Fill")
            v3 = false
        end
    end
end

-- Connect the input listener to UserInputService
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(handleInput)