-- made by lobox920#9889
-- discord.gg/FKHmERC6y5
getgenv().Autofarm = true -- To turn off change the true by 'false'

for i,v in pairs(game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.CleaningParts:GetChildren()) do
v.Prompt.RequiresLineOfSight = false
end
local mychar = game.Players.LocalPlayer.Character
while getgenv().Autofarm do
if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Harolds Cleaning Job") then
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(237.554672, 7.16408443, -50.4925079, -0.041513063, 2.07138129e-08, -0.999137938, -4.94420016e-09, 1, 2.09371116e-08, 0.999137938, 5.80910164e-09, -0.041513063)}):Play()
wait()
fireproximityprompt(game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.JobBoard.Start.ProximityPrompt)
else
    for i,v in pairs(game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.CleaningParts:GetChildren()) do
        wait(1)
        if v.Handler.Cleaned.Value == true then
        elseif v.Handler.Cleaned.Value == false then
            if mychar.HumanoidRootPart.Anchored == true then
            else
                mychar.HumanoidRootPart.CFrame = v.CFrame
                wait(0.2)
                fireproximityprompt(v.Prompt)
            end
        end
    end
end
    wait(1)
end