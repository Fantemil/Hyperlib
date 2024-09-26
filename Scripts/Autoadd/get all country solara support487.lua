local player = game.Players.LocalPlayer

local function getCharacter()
    local character = player.Character or player.CharacterAdded:Wait()
    return character
end

local function getHumanoidRootPart(character)
    return character:WaitForChild("HumanoidRootPart")
end

local character = getCharacter()
local humanoidRootPart = getHumanoidRootPart(character)

-- Snag all the objects in Workspace.ToFind
local toFindObjects = Workspace.ToFind:GetChildren()

-- Function to teleport the character to an object
local function teleportToObject(object)
    if humanoidRootPart and object then
        humanoidRootPart.CFrame = object.CFrame
    end
end

-- Function to handle character death
local function onCharacterDeath()
    print("Character died. Waiting 2 seconds before continuing...")
    wait(2)
    character = getCharacter()
    humanoidRootPart = getHumanoidRootPart(character)
end

-- Connect death event to onCharacterDeath function
local function connectDeathEvent()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Died:Connect(onCharacterDeath)
    end
end

connectDeathEvent()

-- Teleport the character to each object one by one
for i, object in ipairs(toFindObjects) do
    teleportToObject(object)
    wait(1) -- Chill for a second before teleporting to the next object
end -- you can edit delay number

-- Teleport to the World2Teleporter Door
local world2TeleporterDoor = Workspace:WaitForChild("World2Teleporter"):WaitForChild("Door")
teleportToObject(world2TeleporterDoor)

-- Show Roblox notification for joining the Discord server
game.StarterGui:SetCore("SendNotification", {
    Title = "Join My Discord! Plss";
    Text = "https://discord.gg/KPyfBnXM";
    Duration = 10; 
})
wait(2)
game.StarterGui:SetCore("SendNotification", {
    Title = "Thanks for using my script";
    Text = "Join https://discord.gg/KPyfBnXM For Support";
    Duration = 10; 
})
print("https://discord.gg/KPyfBnXM")
-- dont lisen to nigger
