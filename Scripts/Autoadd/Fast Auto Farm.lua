local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Wins = workspace.Wins
local StageNumber = 8 --1/2/3/4/5/6/7
local WaitTime = 1/60 

while true do
    local Player = Players.LocalPlayer
    local Stage = Wins["Stage" .. StageNumber]

    if not Stage then
        break 
    end

    Player.Character:SetPrimaryPartCFrame(Stage.CFrame)
    wait(WaitTime) 
end

local player = game:GetService("Players").LocalPlayer
local re = game:GetService("Workspace").Model.RebirthTouch
local reCFrame = re.CFrame

while true do
    player.Character:SetPrimaryPartCFrame(reCFrame)
    wait(WaitTime) 
end
