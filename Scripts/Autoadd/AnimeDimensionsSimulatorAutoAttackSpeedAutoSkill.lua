local function getNPC()
    local dist, thing = math.huge
    for i, v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            local mag =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end

local TweenService = game:GetService("TweenService")
local noclipE = false
local antifall = false

local function noclip()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end

local function moveto(obj, speed)
    local info =
        TweenInfo.new(
        ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - obj.Position).Magnitude) / speed,
        Enum.EasingStyle.Linear
    )
    local tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = obj})

    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0, 0, 0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip)
        tween:Play()
    end

    tween.Completed:Connect(
        function()
            antifall:Destroy()
            noclipE:Disconnect()
        end
    )
end

while tp do
    task.wait()
    pcall(
        function()
            moveto(getNPC().HumanoidRootPart.CFrame + Vector3.new(0, tonumber(distance), 0), 150)
        end
    )
end
while autoskill do
    task.wait()
    pcall(
        function()
            local args = {
                [1] = "UseSkill",
                [2] = {
                    ["hrpCFrame"] = getNPC().HumanoidRootPart.CFrame
                },
                [3] = 1
            }
            wait(0.3)

            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
            local args = {
                [1] = "UseSkill",
                [2] = {
                    ["hrpCFrame"] = getNPC().HumanoidRootPart.CFrame
                },
                [3] = 2
            }
            wait(0.5)
            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
            local args = {
                [1] = "UseSkill",
                [2] = {
                    ["hrpCFrame"] = getNPC().HumanoidRootPart.CFrame
                },
                [3] = 3
            }
            wait(0.3)
            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
            local args = {
                [1] = "UseSkill",
                [2] = {
                    ["hrpCFrame"] = getNPC().HumanoidRootPart.CFrame
                },
                [3] = 4
            }

            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
            wait(0.3)
            local args = {
                [1] = "UseAssistSkill",
                [2] = {
                    ["hrpCFrame"] = getNPC().HumanoidRootPart.CFrame
                },
                [3] = 1
            }

            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
            wait(0.3)
            local args = {
                [1] = "UseAssistSkill",
                [2] = {
                    ["hrpCFrame"] = getNPC().HumanoidRootPart.CFrame
                },
                [3] = 2
            }

            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
            wait(0.3)
        end
    )
end
while retry do
    task.wait()
    local args = {
        [1] = "RetryDungeon"
    }

    game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
end