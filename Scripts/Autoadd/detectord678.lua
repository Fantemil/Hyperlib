local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local radius = 20 -- radius to you humanoid and object stud

local function getFullPath(object)
    local path = object.Name
    local parent = object.Parent
    while parent do
        path = parent.Name .. "." .. path
        parent = parent.Parent
    end
    return path
end

local function checkNearbyObjects()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            local distance = (obj.Position - rootPart.Position).Magnitude
            if distance <= radius then
                local fullPath = getFullPath(obj)
                print("Object name: " .. obj.Name .. " | Path: " .. fullPath .. " | Distance: " .. distance) -- print
            end
        end
    end
end

while true do
    checkNearbyObjects()
    wait(2) -- delayy 
end
