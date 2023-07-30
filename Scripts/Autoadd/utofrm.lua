local LocalPlayer = game.Players.LocalPlayer
local Root, playerDied

local GMT = getrawmetatable(game)
setreadonly(GMT, false)
local OLD = GMT.__namecall

GMT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()

    if Method == "InvokeServer" and self.Name == 'InstaLoadFunction' then
        playerDied = true
    end

    return OLD(self, ...)
end)

local stages = workspace:WaitForChild('BoatStages'):WaitForChild('NormalStages')

repeat task.wait() until not not stages.CaveStage1.DarknessPart.Event == true

local function made_by_RUNN3R()
    repeat task.wait() until not not Root == true
    Root.CFrame = CFrame.new(Root.CFrame.X - 10, Root.CFrame.Y, Root.CFrame.Z - 10)
    task.wait(.1)
    Root.CFrame = CFrame.new(Root.CFrame.X + 10, Root.CFrame.Y, Root.CFrame.Z + 10)
end

while task.wait() do
    for x = 1, 10 do
        repeat task.wait() until (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart')
        Root = LocalPlayer.Character.HumanoidRootPart
        if workspace.Gravity ~= 0 then
            workspace.Gravity = 0
        end
        Root.CFrame = stages['CaveStage' .. x].DarknessPart.CFrame
        stages['CaveStage' .. x].DarknessPart.Event:Fire()
        repeat made_by_RUNN3R('#1485') until LocalPlayer.OtherData['Stage' .. (x - 1)].Value ~= ''
    end

    pcall(function()
        firetouchinterest(Root, stages.TheEnd.GoldenChest.Trigger, 1)
        task.wait()
        firetouchinterest(Root, stages.TheEnd.GoldenChest.Trigger, 0)
    end)

    repeat task.wait() until playerDied == true;playerDied = false
    repeat task.wait() until workspace:FindFirstChild(LocalPlayer.Name) and workspace:FindFirstChild(LocalPlayer.Name):FindFirstChild('HumanoidRootPart')

    workspace.ClaimRiverResultsGold:FireServer()

    for x = 1, 10 do
        repeat task.wait() until LocalPlayer.OtherData['Stage' .. (x - 1)].Value == ''
    end
end