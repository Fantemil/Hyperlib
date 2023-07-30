local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local flying = false
local flySpeed = 0
local flyMaxSpeed = 500

local function init()
    local mouse = player:GetMouse()
    local bodyVelocity

    local function updateFlySpeed()
        if flySpeed < flyMaxSpeed then
            flySpeed = flySpeed + 1
        end
    end

    local function getMovementDirection()
        local camera = game.Workspace.CurrentCamera
        local lookVector = camera.CFrame.LookVector
        local rightVector = camera.CFrame.RightVector
        local flyDirection = Vector3.new(0, 0, 0)

        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
            flyDirection = flyDirection + lookVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
            flyDirection = flyDirection - lookVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
            flyDirection = flyDirection - rightVector
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
            flyDirection = flyDirection + rightVector
        end

        return flyDirection
    end

    player:GetMouse().KeyDown:Connect(
        function(key)
            if key == "e" then
                flying = not flying
                if flying then
                    bodyVelocity = Instance.new("BodyVelocity", rootPart)
                    bodyVelocity.MaxForce = Vector3.new(2e10, 2e10, 2e10)
                    updateFlySpeed()
                else
                    flySpeed = 0
                    game:GetService("TweenService"):Create(
                        bodyVelocity,
                        TweenInfo.new(0.5),
                        {Velocity = Vector3.new(0, 0, 0)}
                    ):Play()
                    bodyVelocity:Destroy()
                end
            end
        end
    )

    game:GetService("RunService").RenderStepped:Connect(
        function()
            local flyDirection = getMovementDirection()
            if flying then
                updateFlySpeed()
                game:GetService("TweenService"):Create(
                    bodyVelocity,
                    TweenInfo.new(0.5),
                    {Velocity = flyDirection * flySpeed}
                ):Play()
            end
        end
    )
end

init()
