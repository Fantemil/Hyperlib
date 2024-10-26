--First Script 
for i,v in pairs(workspace.CaveObby.Stages:GetDescendants()) do 
    if v.Name == "Lava" or  v.Name == "KillPart" or  v.Name == "SpikeLog" then
        v:Destroy()
    end
end

--Second Script 
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local stages = {
    workspace.CaveObby.Stages["1"].Spawn,
    workspace.CaveObby.Stages["2"].Checkpoint,
    workspace.CaveObby.Stages["3"].Checkpoint,
    workspace.CaveObby.Stages["4"].Checkpoint,
}

local function tweenToPosition(position)
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
    local goal = {CFrame = position.CFrame}

    local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
    tween:Play()
    tween.Completed:Wait() 
end

while true do
    for _, stage in ipairs(stages) do
        if stage then
            tweenToPosition(stage)
            task.wait(1) 
        end
    end
end
