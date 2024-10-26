-- Load AkiriUI and AkaliNotif
local AkiriUI = loadstring(game:HttpGet("https://akiri.best/assets/files/gayasf.ui2?key=5y1lxXSfWKhlQkSqhUuFyB8kPp8hsCau"))()
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = AkaliNotif.Notify

-- Notification
Notify({
    Title = "Meowbucks pussy cat sword fighting playerlock script",
    Text = "Discord meowbucks",
    Duration = 5
})

-- Ensure that the script is executed after all services and players are loaded
local function waitForChild(parent, name)
    return parent:WaitForChild(name, 10) -- Adjust timeout as needed
end

local function safeLoad(func)
    local success, result = xpcall(func, function(err) 
        Notify({
            Title = "Script Error",
            Text = err,
            Duration = 5
        })
    end)
    return success, result
end

-- Lock player onto nearest player
local function getNearestPlayer()
    local myCharacter = game.Players.LocalPlayer.Character
    if not myCharacter or not myCharacter:FindFirstChild("HumanoidRootPart") then
        return nil
    end

    local nearestPlayer = nil
    local shortestDistance = math.huge
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (myCharacter.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestPlayer = player
            end
        end
    end
    return nearestPlayer
end

local function lockOnPlayer()
    while true do
        safeLoad(function()
            local targetPlayer = getNearestPlayer()
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local myCharacter = game.Players.LocalPlayer.Character
                if myCharacter and myCharacter:FindFirstChild("HumanoidRootPart") then
                    myCharacter.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5) -- Adjust position as needed
                end
            end
        end)
        wait(1)
    end
end

-- Start locking onto the nearest player
safeLoad(lockOnPlayer)