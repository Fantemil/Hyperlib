local RunService = game:GetService("RunService")
local Module = require(game:GetService("ReplicatedStorage").RequestRateTimerLimiter)
local player = game:GetService("Players").LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

local GiveMeMyQuest = replicatedStorage:WaitForChild("Events"):WaitForChild("Quest"):WaitForChild("GrantQuest")
local UpdateMyQuestMF = replicatedStorage:WaitForChild("Events"):WaitForChild("Quest"):WaitForChild("UpdateQuest")

local TPS = {
    CFrame.new(1221, -155, 225),
    CFrame.new(1207, -159, 281),
    CFrame.new(1771, -242, 1205),
    CFrame.new(1783, -242, 1211)
}

local Cur = 1

local function QuestFarmFree()
    local GrabQuestRequestShi = Module:CanMakeRequest(player.UserId, GiveMeMyQuest, "GrantQuest", 0, 0)
    local QuestUpdateShi = Module:CanMakeRequest(player.UserId, UpdateMyQuestMF, "UpdateQuest", 0, 0)

    if QuestUpdateShi and GrabQuestRequestShi then
        for i=1, 5 do
            GiveMeMyQuest:FireServer("StonesOfBurden")
            UpdateMyQuestMF:FireServer("StonesOfBurden")
        end

        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = TPS[Cur]
            task.wait(0.5)
            Cur = Cur % #TPS + 1
        end
    end
end

RunService.Heartbeat:Connect(QuestFarmFree)
