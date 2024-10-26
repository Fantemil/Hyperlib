--WIN SCRIPT FOR TOWER OF HELL
--NOT AUTOFARM!!!!
--OPENSOURCE
for i,v in game.Players.LocalPlayer.Character:GetChildren() do
if v.ClassName == 'Part' then
local fb = v:FindFirstChild('TouchInterest')
if fb then
fb:Destroy()
end
end
end

local tweenservice = game:GetService('TweenService')
local humanoidrootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
local goal = {}
goal.CFrame = workspace.tower.sections.finish.FinishGlow.CFrame

local info = TweenInfo.new(2)

local tween = tweenservice:Create(humanoidrootpart,info,goal) 
tween:Play()
task.wait(2.5)
humanoidrootpart.Parent.Humanoid.Health = 0
task.wait(0.6)