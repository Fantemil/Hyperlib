local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
 vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
game.Players.LocalPlayer.Character.Head:Destroy()
wait(7)
spawn(function()
game:GetService("RunService").Stepped:connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
end) end)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
Clone = game:GetService("Players").LocalPlayer.Character.LowerTorso.Root:Clone()
  game:GetService("Players").LocalPlayer.Character.LowerTorso.Root:Destroy()
  Clone.Parent = game:GetService("Players").LocalPlayer.Character
end)
game.Workspace.Gravity = 0
local CFrameEnd = CFrame.new(-51.1823959, 80.6168747, -536.437805)
local Time = 1
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)

local CFrameEnd = CFrame.new(-47.6731682, 66.860466, 8698.90137, 0.999818563, 0.00121844851, -0.0190091729, 8.06243428e-09, 0.997951984, 0.0639670715, 0.0190481842, -0.0639554635, 0.997770965)
local Time = 33
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)
wait(0.3)
local CFrameEnd = CFrame.new(-58.6682281, -359.746033, 9489.12891, -0.993616283, 0.0757325292, -0.0836138725, -2.70548408e-05, 0.74101454, 0.671488941, 0.112812653, 0.667204618, -0.736282051)
local Time = 1
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
   repeat
       wait()
   until game.Players.LocalPlayer.Character
       wait(3.3)
       game.Workspace.Gravity = 0
local CFrameEnd = CFrame.new(-51.1823959, 80.6168747, -536.437805)
local Time = 1 -- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)

local CFrameEnd = CFrame.new(-47.6731682, 66.860466, 8698.90137, 0.999818563, 0.00121844851, -0.0190091729, 8.06243428e-09, 0.997951984, 0.0639670715, 0.0190481842, -0.0639554635, 0.997770965)
local Time = 33
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)

local CFrameEnd = CFrame.new(-58.6682281, -359.746033, 9489.12891, -0.993616283, 0.0757325292, -0.0836138725, -2.70548408e-05, 0.74101454, 0.671488941, 0.112812653, 0.667204618, -0.736282051)
local Time = 1
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)
game.Workspace.Gravity = 200
end)
spawn(function()
   while wait (2) do
workspace.ClaimRiverResultsGold:FireServer()
     end
end)