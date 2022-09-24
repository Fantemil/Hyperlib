getgenv().Chest = true
while Chest do task.wait()

for _,v in pairs(game:GetService("Workspace").Map.Islands:GetDescendants()) do
   if v:FindFirstChild("ClickDetectorPart") and v:IsA"Model" then
local Time = 4
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = v.ClickDetectorPart.CFrame})


tween:Play()
tween.Completed:Wait(E)
fireclickdetector(v.ClickDetectorPart:FindFirstChild("ClickDetector"))
end
end
end