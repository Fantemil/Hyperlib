local player = game.Players.LocalPlayer
local character = player.Character
local localroot = character:WaitForChild("HumanoidRootPart")

local function closest()
    local range = 50
    local target = nil
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Character and not v.Character:FindFirstChildWhichIsA("ForceField") then
            local JN = v.Character:FindFirstChild("HumanoidRootPart")
            local JNR = v.Character:FindFirstChildOfClass("Humanoid")
            if JN and JNR.Health > 3 then
                local dist = (localroot.Position - JN.Position).magnitude
                if dist < range then
                    range = dist
                    target = v.Character
                end
            end
        end
    end
    return target
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    character = char
    localroot = character:WaitForChild("HumanoidRootPart")
end)

local vh = closest()

game:GetService("RunService").Heartbeat:Connect(function()
    vh = closest()
end)

while game:GetService("RunService").Heartbeat:Wait() do
    if vh and vh:FindFirstChild("UpperTorso") then
        local vroot = vh:FindFirstChild("UpperTorso")
        local args = {
            [1] = 1,
            [2] = vh,
            [3] = 50,
            [4] = vroot
        }
        
        game:GetService("ReplicatedStorage").MainEvents.PUNCHEVENT:FireServer(unpack(args))
    end
end
