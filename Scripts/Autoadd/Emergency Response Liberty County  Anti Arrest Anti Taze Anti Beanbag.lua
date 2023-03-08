if syn then
rconsoleprint('ouughhh my booty itchin' so badn')
end
task.spawn(function()
while wait() do
local hum = game.Players.LocalPlayer.Character:WaitForChild('Humanoid')
if hum:GetState(Enum.HumanoidStateType.PlatformStanding) then
if game.StarterGui:GetCoreGuiEnabled(
Enum.CoreGuiType.EmotesMenu
) == false then
game.Players.LocalPlayer.Character.UpperTorso:Destroy()
--fart = game.Players.LocalPlayer.Character['HumanoidRootPart'].CFrame
--repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild('UpperTorso')
--wait(1)
--_G.TP_Exception()
--game.Players.LocalPlayer.Character['HumanoidRootPart'].CFrame = fart
end
end
end
end)