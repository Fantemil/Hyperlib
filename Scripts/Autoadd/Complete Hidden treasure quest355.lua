local vim = game:GetService('VirtualInputManager')
local function hk(key, time)
    vim:SendKeyEvent(true, key, false, nil)
    task.wait(time)
    vim:SendKeyEvent(false, key, false, nil)
end
local function fuck()
    for _, v in pairs(game.Workspace.QuestRewards.BuriedTreasure:GetChildren()) do
        local proximityPrompt = v:FindFirstChildOfClass("ProximityPrompt")
        if proximityPrompt then
            return v, proximityPrompt
        end
    end
    return nil, nil
end
while true do
    local v, p = fuck()
    if not p then
        break  
    end  
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    task.wait(0.1)  
    hk(Enum.KeyCode.E, p.HoldDuration)  
    task.wait(5)
end
