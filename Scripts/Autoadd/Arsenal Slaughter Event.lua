wait(2)
local plr
local char
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
plr = game.Players.LocalPlayer
char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local hump = char:WaitForChild("HumanoidRootPart")
if game.PlaceId == 286090429 then
wait(.5)
rconsolename("Arsenal PGuy Check")
local skincount = {}
for i, v in pairs(plr:WaitForChild("Data"):WaitForChild("Shuffles"):WaitForChild("Skins"):GetChildren()) do
if v.Name == "Slaughter Delinquent" then
table.insert(skincount,v)
end
end
repeat wait()
until plr:FindFirstChild("DataLoaded")
rconsoleinfo("You got "..#skincount.." Slaughter Delinquent")
game:GetService("TeleportService"):Teleport(6318874810, plr, nil, nil)
warn("Teleporting")
else
local uis = game:GetService("UserInputService")
local crosses = game:GetService("Workspace").Objectives
local collects = game:GetService("Workspace").Collect
local check = plr.PlayerGui:WaitForChild("Slaught"):WaitForChild("Obj"):WaitForChild("List")
local checkbut = plr.PlayerGui:WaitForChild("Menew"):WaitForChild("Main"):WaitForChild("Fake"):WaitForChild("ok")

repeat wait()
until checkbut.Visible == true
local ded = "MouseButton1";
local Target = game:GetService("ReplicatedStorage").Events.CoolNewRemote;
Target:FireServer(ded);
wait(.5)
local string_1 = "TPC";
local Target = game:GetService("ReplicatedStorage").Events.JoinTeam;
Target:FireServer(ded);
Target:FireServer(string_1);

local stundastupid = coroutine.wrap(function()
while wait() do
game.ReplicatedStorage.Remotes.Stun:FireServer()
end
end)
stundastupid()

repeat
for i, v in pairs(collects:GetChildren()) do
if v:IsA("BasePart") then
char:WaitForChild("Humanoid"):ChangeState(11)
local tween = game:GetService("TweenService"):Create(hump,TweenInfo.new((hump.Position-v.Position).Magnitude/69420,Enum.EasingStyle.Quad), {CFrame = v.CFrame * CFrame.new(0,-5,0)})
tween:Play()
wait(.2)
local Target = game:GetService("ReplicatedStorage").Remotes.Collect;
Target:FireServer(v);
wait(.1)
end
end
wait(#collects:GetChildren()/7.3)
until (check.Gas.Count.Text == "5/5" or check.Gas.Count.Text == "6/6" or check.Gas.Count.Text == "7/7" or check.Gas.Count.Text == "8/8" or check.Gas.Count.Text == "9/9") and (check.Tinder.Count.Text == "5/5" or check.Tinder.Count.Text == "6/6" or check.Tinder.Count.Text == "7/7" or check.Tinder.Count.Text == "8/8" or check.Tinder.Count.Text == "9/9")

repeat
for i, v in pairs(crosses:GetChildren()) do
if v:IsA("BasePart") then
char:WaitForChild("Humanoid"):ChangeState(11)
local tween = game:GetService("TweenService"):Create(hump,TweenInfo.new((hump.Position-v.Position).Magnitude/69420,Enum.EasingStyle.Quad), {CFrame = v.CFrame * CFrame.new(0,-5,0)})
tween:Play()
wait(.2)
local Target = game:GetService("ReplicatedStorage").Remotes.Gas;
Target:FireServer(v);
wait(.1)
end
end
wait(#crosses:GetChildren()/7.3)
until (check.Gas_P.Count.Text == "5/5" or check.Gas_P.Count.Text == "6/6" or check.Gas_P.Count.Text == "7/7" or check.Gas_P.Count.Text == "8/8" or check.Gas_P.Count.Text == "9/9") and (check.Tinder_P.Count.Text == "5/5" or check.Tinder_P.Count.Text == "6/6" or check.Tinder_P.Count.Text == "7/7" or check.Tinder_P.Count.Text == "8/8" or check.Tinder_P.Count.Text == "9/9")

repeat
local v = game:GetService("Workspace").Switch.Base
local tween = game:GetService("TweenService"):Create(hump,TweenInfo.new((hump.Position-v.Position).Magnitude/69420,Enum.EasingStyle.Quad), {CFrame = v.CFrame * CFrame.new(0,-5,0)})
tween:Play()
local Target = game:GetService("ReplicatedStorage").Remotes.Lever;
Target:FireServer();
wait(.1)
until not char
end