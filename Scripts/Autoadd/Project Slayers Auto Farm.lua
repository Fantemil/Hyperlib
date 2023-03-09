_G.Condition = true
while _G.Condition and wait() do
local Time = 10
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace")["Grandpa Wagwon's Wagon"].Root.CFrame})                    
tween:Play()                     tween.Completed:Wait(E)

wait(1)

fireproximityprompt(workspace["Grandpa Wagwon"].UpperTorso.ProximityPrompt, 1, true)

wait(5)
--CLICK THROUGH WAGON QUEST
mousemoveabs(455,980)
wait(1)
mousemoveabs(460,980)
wait(1)
mouse1click(455,980)
wait(1)
mousemoveabs(455,980)
wait(1)
mousemoveabs(460,980)
wait(1)
mouse1click(455,980)
wait(1)
mousemoveabs(455,980)
wait(1)
mousemoveabs(460,980)
wait(1)
mouse1click(455,980)
wait(1)
mousemoveabs(455,980)
wait(1)
mousemoveabs(460,980)
wait(1)
mouse1click(455,980)
wait(4)

local Time = 10
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Wagon_Deposit_Part.CFrame})                    
tween:Play()                     tween.Completed:Wait(E)

wait(45)
end