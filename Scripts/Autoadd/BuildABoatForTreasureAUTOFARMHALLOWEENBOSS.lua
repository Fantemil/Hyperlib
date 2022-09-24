local plr = game.Players.LocalPlayer;
local Char = game.Players.LocalPlayer.Character;
local Teleporting = game:GetService("TeleportService");
local CFrameEnd1 = CFrame.new(631, 26, -46);
local Time1 = 5;
local tween1 = game:GetService("TweenService"):Create(Char.HumanoidRootPart, TweenInfo.new(Time1), {CFrame = CFrameEnd1});
local CFrameEnd2 = CFrame.new(484, 68, 270);
local Time2 = 5;
local tween2 =  game:GetService("TweenService"):Create(Char.HumanoidRootPart, TweenInfo.new(Time2), {CFrame = CFrameEnd2});
wait(5)
if game.PlaceId ~= 1930665568 then
Teleporting:Teleport(1930665568, plr)
else
    wait(2)
tween1:Play()
tween1.Completed:Wait(X)
wait(3)
game:GetService("Players").LocalPlayer.Character.SpiderBaby.Head.PickUpScript.ThrowRE:FireServer()
wait(3)
tween2:Play()
tween2.Completed:Wait(X) -- Completes, no need for additional wait time
while wait(0.5) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484, 68, 270)
    wait(3)
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Rock" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0)
            wait()
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 1)
        end
end

    if game.Workspace:FindFirstChild("Hook") then
        game:GetService("Workspace").NukeToTheFaceRE:FireServer()
end
if plr.PlayerGui.ItemGained.Frame.Visible == true then
    wait(3)
Teleporting:Teleport(1930665568, plr)
end
end
end