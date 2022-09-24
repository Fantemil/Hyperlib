local charr = game.Players.LocalPlayer.Character.HumanoidRootPart
getgenv().autofarm = true --set false and re execute to stop
while autofarm do
    wait()
for count = 1,16 do
    wait(1)
for i,v in next, game:GetService("Workspace").Checkpoints:GetChildren() do
if v.Name == ""..count then
charr.CFrame = v.CFrame
wait(0.2)
for i,v in next, game:GetDescendants() do
if v:IsA("ProximityPrompt") then
fireproximityprompt(v)
end
end
wait(0.1)
end
end
end
wait(0.3)
charr.CFrame = game:GetService("Workspace").ObbyFinish.FinishObby.CFrame
wait(0.1)
for i,v in next, game:GetDescendants() do
if v:IsA("ProximityPrompt") then
fireproximityprompt(v)
end
end
end