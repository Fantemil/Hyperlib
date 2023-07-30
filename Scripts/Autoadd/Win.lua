local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Character = function(part)
    local Character = LocalPlayer.Character or (LocalPlayer.CharacterAdded:wait() and LocalPlayer.Character)
    if part ~= nil then
        return Character:WaitForChild(part)
    end
    return Character
end

local function getFinishPart()
    local tower = workspace:WaitForChild("tower")
    local finishGlow = tower.sections.finish:WaitForChild("FinishGlow")
    local closestDistance = math.huge
    local closestFinishPart = nil

    local finishes = tower:WaitForChild("finishes"):GetChildren()
    for _, finishPart in ipairs(finishes) do
        if finishPart:IsA("BasePart") then
            local distance = (finishGlow.Position - finishPart.Position).Magnitude

            if distance < closestDistance then
                closestDistance = distance
                closestFinishPart = finishPart
            end
        end
    end
    return closestFinishPart
end

local Finish = getFinishPart()

-- Disable Anti-Cheat
getsenv(LocalPlayer.PlayerScripts.LocalScript).kick = function()return(_)end


local RootPart = Character("HumanoidRootPart")
RootPart.CFrame = Finish.CFrame
task.wait(.1)
Character("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)