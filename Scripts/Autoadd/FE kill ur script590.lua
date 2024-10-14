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
            if JN and JNR.Health > 0 then
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

local jh = closest()
game:GetService("RunService").Heartbeat:Connect(function()
    jh = closest()
end)
while game:GetService("RunService").Heartbeat:Wait() do
    if jh and jh:FindFirstChild("UpperTorso") then
        local vroot = jh:FindFirstChild("UpperTorso")
        local args = {
            [1] = "\243\160\128\160\243\160\128\131\243\160\128\157\243\160\128\143\243\160\128\188\243\160\128\168",
            [2] = {
                ["Limb"] = "UpperTorso",
                ["Character"] = jh,
                ["Point"] = Vector3.new(vroot.Position.X, vroot.Position.Y, vroot.Position.Z),
                ["Hit"] = vroot
            },
            [3] = false,
            [4] = player.Name .. "-12387781526-6193893072"
        }
        
        game:GetService("Players").LocalPlayer.Character.Core.Communicate:FindFirstChild(""):FireServer(unpack(args))
    end
end
        