getgenv().Toggle = true
getgenv().BallDirection = Vector3.new(999999, 999999, 999999)

local plr = game.Players.LocalPlayer
local ball = false

local function getBall()
while true do game:GetService("RunService").Stepped:Wait()
if workspace:FindFirstChild("Ball") ~= nil then
ball = workspace.Ball
end
end
end

task.spawn(getBall)

while Toggle do game:GetService("RunService").Stepped:Wait()
if (ball and ball:FindFirstChild("Main") and plr.Character ~= nil) then
local distance = plr:DistanceFromCharacter(ball.Main.Position)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.lookAt(plr.Character.HumanoidRootPart.Position, Vector3.new(ball.Main.Position.X, plr.Character.HumanoidRootPart.Position.Y, ball.Main.Position.Z))
if (distance <= 17.8) then
plr.Character:WaitForChild("Deflection").Remote:FireServer("Deflect", BallDirection)
end
end
end