local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local eggsFolder = workspace.EggHuntMinigame.Eggs
local nestClickbox = workspace.EggHuntMinigame.NestClickbox
local eggClickedRemote = game:GetService("ReplicatedStorage"):WaitForChild("EasterEvent"):WaitForChild("EggHuntRemotes"):WaitForChild("EggClicked")

local function teleportAndInvokeEgg(part)
    if part and part:IsA("BasePart") then
        humanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 3, 0)
        wait(0.1)

        local args = { [1] = part.Name }
        eggClickedRemote:InvokeServer(unpack(args))
    end
end

while true do
    local count = 0

    for _, eggPart in ipairs(eggsFolder:GetChildren()) do
        if count >= 10 then break end
        teleportAndInvokeEgg(eggPart)
        count = count + 1
        wait(0.1)
    end

    humanoidRootPart.CFrame = nestClickbox.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
end