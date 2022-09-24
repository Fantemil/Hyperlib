local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Hold W and Click"

tool.Activated:Connect(function()
local root = plr.Character.HumanoidRootPart


 local ball = game:GetService("Workspace").FootballField:FindFirstChild("SoccerBall")
local team = plr.Character:FindFirstChild("TeamA") or plr.Character:FindFirstChild("TeamB")
local Goal = false
if team then
if team.Name == "TeamA" then
Goal = game:GetService("Workspace").FootballField.DetecterGoalB
elseif team.Name == "TeamB" then
Goal = game:GetService("Workspace").FootballField.DetecterGoalA
end
end
if ball and Goal and team then
local Distance = (Goal.CFrame.p - ball.CFrame.p).Magnitude
root.CFrame = CFrame.new(Goal.CFrame.p, ball.CFrame.p) * CFrame.new(0, 0, -Distance - 3)
root.CFrame = CFrame.new(root.Position, Goal.Position)
end
end)

tool.Parent = plr.Backpack