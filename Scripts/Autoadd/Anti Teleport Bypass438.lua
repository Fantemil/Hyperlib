-- YOU NEED TO SET IT UP BELOW
local pos = Vector3.new(0,0,0) -- your pos here
local delay = 10 -- tp tween speed like how many seconds takes to tp

-- do not edit below cuz breaks script

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(delay,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
    local cf = CFrame.new(pos)
    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    a:Play()
end