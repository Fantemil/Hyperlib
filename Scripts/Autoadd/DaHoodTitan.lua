-- YOU NEED MAX BUFF SO IT WORKS
local function rm()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v.Name == "OriginalPosition" then
            v:Destroy()
        elseif v.Name == "OriginalSize" then
            v:Destroy()
        elseif v.Name == "AvatarPartScaleType" then
            v:Destroy()
        end
    end
end
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "Rage!" then
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)
    end
end)