spawn(function()
 while task.wait() do
pcall(function()
  game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
       game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       if v.name == "Katana" then -- change name of tool here
           v.Parent = game.Players.LocalPlayer.Character
end end end) end end)

spawn(function()
 while task.wait(0.1) do
pcall(function()

local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
           for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name ~= Player.Name then
           local i = 10
           repeat
           wait(0.5)
           i = i-1
local CFrameEnd = CFrame.new(v.Character.HumanoidRootPart.position)
local Time = 0.3
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)

until i == 0 or game.Players[v.Name].Character.Humanoid.Health == 0
end end end) end end)
spawn(function()
 while task.wait(3) do
pcall(function()
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
game:GetService("ReplicatedStorage").RemoteTriggers.SpawnIn:FireServer()
end end) end end)