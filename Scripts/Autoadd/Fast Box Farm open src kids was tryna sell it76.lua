while task.wait() do
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function gettheretardedquest(QuestFn, TpPOsitionfq)
    local args = {QuestFn}
    ReplicatedStorage:WaitForChild("Events"):WaitForChild("Quest"):WaitForChild("GrantQuest"):FireServer(unpack(args))
    
    Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TpPOsitionfq)
    task.wait(0.08)
    
    ReplicatedStorage:WaitForChild("Events"):WaitForChild("Quest"):WaitForChild("UpdateQuest"):FireServer(unpack(args))
end

gettheretardedquest("StonesOfBurden", Vector3.new(1215, -168, 259))
gettheretardedquest("StonesOfBurden", Vector3.new(1220, -154, 200))
gettheretardedquest("StonesOfBurden", Vector3.new(1771, -242, 1206))
end

--// Discord.gg/Carded  Discord.gg/Carded  Discord.gg/Carded  Discord.gg/Carded  Discord.gg/Carded  Discord.gg/Carded  Discord.gg/Carded \---