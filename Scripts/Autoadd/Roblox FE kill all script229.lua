local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Catalog Heaven GUI v1", "Default")
local tab = DrRayLibrary.newTab("Catalog Heaven Script", "ImageIdHere")
tab.newButton("Rocket kill all", "MUST EQUIP ROCKET TO WORK", function()
    local function main()
    local player = game.Players.LocalPlayer

    -- Function to generate a random position near the target position
    local function getRandomPositionNear(targetPos)
        local range = 10 -- Define the range around the target position
        local randomOffset = Vector3.new(
            math.random(-range, range),
            math.random(-range, range),
            math.random(-range, range)
        )
        return targetPos + randomOffset
    end

    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local character = otherPlayer.Character
            local myCharacter = player.Character
            
            -- Ensure both characters exist and have a HumanoidRootPart
            if character and character:FindFirstChild("HumanoidRootPart") and myCharacter and myCharacter:FindFirstChild("HumanoidRootPart") then
                local otherPos = character.HumanoidRootPart.Position
                local myPos = myCharacter.HumanoidRootPart.Position
                
                -- Generate two random positions around the other player's position
                local randomPos1 = getRandomPositionNear(otherPos)
                local randomPos2 = getRandomPositionNear(otherPos)
                
                local args = {
                    [1] = randomPos1,
                    [2] = randomPos2
                }

                -- Fire the rocket
                myCharacter.RocketJumper.FireRocket:FireServer(unpack(args))
            end
        end
    end
end

while true do
main()
    wait(0.5)
    end
    
end)
tab.newButton("Get the Rocket Here", "Get Rocket to kill all", function()
    local args = {
    [1] = 169602103
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ToggleAsset"):InvokeServer(unpack(args))
    
end)
