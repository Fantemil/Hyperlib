local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RE = ReplicatedStorage.TREKRemotes.DamageRemote

local function HRP(character)
    return character and character:FindFirstChild("HumanoidRootPart")
end

local omegalol = {
    [3] = -math.huge, -- we love the inf on esp
    [6] = "Melee"
}

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localPlayerCharacter = localPlayer.Character

if localPlayerCharacter and HRP(localPlayerCharacter) then
    omegalol[4] = localPlayerCharacter.CLUB.Gun
    while true do
        for _, player in ipairs(Players:GetPlayers()) do
            local playerCharacter = player.Character
            if player ~= localPlayer and HRP(playerCharacter) then
                omegalol[1] = CFrame.new(playerCharacter.HumanoidRootPart.Position)
                omegalol[2] = playerCharacter
                omegalol[5] = playerCharacter.HumanoidRootPart
                RE:FireServer(unpack(omegalol))
            end
        end
        task.wait(0.2)
    end
end

