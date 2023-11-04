-- Define function for throwing planes
function ThrowPlanes()
    spawn(function()
        while getgenv().ThrowPlanes do
            local args = {
                [1] = Vector3.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
                ),
                [2] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.ThrowPlane:FireServer(unpack(args))
            wait()
        end
    end)
end

-- Define function for upgrading
function Upgrade()
    spawn(function()
        while getgenv().Upgrade do
            local args = { [1] = "Walkspeed" }
            game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
            local args = { [1] = "Accuracy" }
            game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
            local args = { [1] = "Strength" }
            game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
            wait()
        end
    end)
end

-- Define function for auto-spin
function AutoSpin()
    spawn(function()
        while getgenv().AutoSpin do
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Spin"):InvokeServer()
            task.wait()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Yeet A Plane Simulator")

local b = w:CreateFolder("Main")

b:Toggle("Auto Throw (money yes)", function(val) getgenv().ThrowPlanes = val ThrowPlanes() end)
b:Toggle("Upgrade", function(val) getgenv().Upgrade = val Upgrade() end)
b:Toggle("Auto Spin", function(val) getgenv().AutoSpin = val AutoSpin() end)
