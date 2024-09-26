local function sendNotification(answer)
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Stage Answer";
        Text = "The answer is: " .. answer;
        Duration = 5;
    })
end

local function getAnswerForStage(stage)
    local door = workspace.Doors:FindFirstChild(tostring(stage))
    if door then
        local answersFolder = door:FindFirstChild("Answers")
        if answersFolder then
            for _, answer in pairs(answersFolder:GetChildren()) do
                return answer.Name
            end
        end
    end
    return nil
end

local function checkAndFireTouchTransmitters()
    local badges = {
        "Fishy Badge",
        "WinnerBadge",
        "Badge Giver (open me)",
        "WaitBadge",
        "ChargeUpBadge",
        "Winner",
        "4-0Badge"
    }

    for _, badgeName in ipairs(badges) do
        local badge = workspace:FindFirstChild(badgeName)
        if badge and badge:FindFirstChild("TouchInterest") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, badge, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, badge, 1)
            return true
        end
    end
    return false
end

local function monitorStage()
    local player = game:GetService("Players").LocalPlayer
    local leaderstats = player:WaitForChild("leaderstats")
    local stage = leaderstats:WaitForChild("Stage")

    local currentStage = stage.Value
    local answer = getAnswerForStage(currentStage)
    if answer then
        sendNotification(answer)
    end

    checkAndFireTouchTransmitters()

    stage.Changed:Connect(function(newStage)
        currentStage = newStage
        answer = getAnswerForStage(currentStage)
        if answer then
            sendNotification(answer)
        end

        checkAndFireTouchTransmitters()
    end)
end

monitorStage()