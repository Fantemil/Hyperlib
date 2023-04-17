repeat wait() until game:IsLoaded()
spawn(function()
   while task.wait(0.1) do
   pcall(function()
for i,v in pairs(game.Workspace:GetDescendants()) do
   if v.Name == "KillPart" or v.Name == "KillBrick" or  v.Name == "Killpart" or v.Name == "MovingKillBrick" or v.Name == "Ring" then
       v:Destroy()
   end
end
   
local CFrameEnd = CFrame.new(game.Workspace.Lobby.SpawnPoint.StartPoint.Position)
local Time = 1
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)


local CFrameEnd = CFrame.new(game.Workspace.CurrentStages.RunEnd.FinishPart.EndPoint.Position)
local Time = 2
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)

local CFrameEnd = CFrame.new(game.Workspace.CurrentStages.RunEnd.EndWall.Position)
local Time = 1
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)
wait(3)
   game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService"Players".LocalPlayer)
end) end end)