local teleportPositions = {
    Vector3.new(101.06, 22.00, 153.37),  
    Vector3.new(117.53, 222.50, 135.95),  
}
local currentIndex = 1
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local function teleportToNextPosition()
    if currentIndex <= #teleportPositions then
        local targetPosition = teleportPositions[currentIndex]
        humanoidRootPart.CFrame = CFrame.new(targetPosition)
        currentIndex = currentIndex + 1
    else
    end
end
while currentIndex <= #teleportPositions do
    teleportToNextPosition()
    wait(2) 
end