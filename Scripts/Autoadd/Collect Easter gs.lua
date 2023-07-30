getgenv(). Collect = true -- true, false to collect Easter Eggs
getgenv(). SpinWheel = true -- true, false to Spin Wheel

spawn(function()
while Collect and game.Players.LocalPlayer.Data.eggs.Value <= game.Players.LocalPlayer.Data.basket.Value-1 do
for i, v in next, workspace.Easter.EggHunt:GetChildren() do
    if v then
        for i, v in next, v:GetChildren() do
            if v then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame*CFrame.new(0,5,0)
fireproximityprompt(v.EggPrompt)
            end
        end
    end
end
wait(0.5)
end
end)
spawn(function()
while SpinWheel do
    game.ReplicatedStorage.SpinWheel:InvokeServer()
wait(1)
end
end)