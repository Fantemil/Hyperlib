--feel free to use (THIS WAS MADE WITH CHATGPT)





game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Loaded!";
                Text = "Provided by xubs script! ";
                Duration = 1.5;})


local Library = loadstring(game:HttpGet("https://pastebin.com/raw/GdN5iRbt"))() 
local Window = Library.CreateLib("Drop the soap GUI", "DarkTheme") 


local Tab1 = Window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Configs")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local playersService = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")

local function getAllPlayers()
    local playerList = {}
    local currentPlayer = playersService.LocalPlayer
    for _, player in pairs(playersService:GetPlayers()) do
        if player ~= currentPlayer then
            table.insert(playerList, player)
        end
    end
    return playerList
end

local function attackUntilDead(targetPlayer)
    local currentPlayer = playersService.LocalPlayer
    while targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Health > 0 do
        -- Teleport to the target player
        if currentPlayer and currentPlayer.Character and currentPlayer.Character:FindFirstChild("HumanoidRootPart") then
            currentPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
        end
        
        -- Punch the target player
        local args = {
            [1] = targetPlayer
        }
        replicatedStorage:WaitForChild("meleeEvent"):FireServer(unpack(args))
        wait(0.01) -- Small delay to avoid flooding the server
    end
end

local function getInmates()
    local inmates = {}
    local localPlayer = Players.LocalPlayer
    for _, player in pairs(Players:GetPlayers()) do
        if player.Team and player.Team.Name == "Inmates" and player ~= localPlayer then
            table.insert(inmates, player)
        end
    end
    return inmates
end

local function punchUntilDead(target)
    while target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character.Humanoid.Health > 0 do
        local args = {
            [1] = target
        }
        ReplicatedStorage:WaitForChild("meleeEvent"):FireServer(unpack(args))
        wait(0.01) -- Small delay to avoid flooding the server
    end
end


Tab1Section:NewButton("Kill all inmates", "askjdkasdasd", function()

local inmates = getInmates()
for i, target in ipairs(inmates) do
    -- Teleport to the target
    local player = Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
    end

    -- Punch the target until their health is 0
    punchUntilDead(target)
end

end)

Tab1Section:NewButton("Kill all", "askjdkasdasd", function()

local allPlayers = getAllPlayers()
for _, targetPlayer in ipairs(allPlayers) do
    attackUntilDead(targetPlayer)
end

end)


