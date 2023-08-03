while wait() do
local you = game.Players.LocalPlayer.Name 
local Event = game:GetService("ReplicatedStorage").Systems.Clicking.RemoteEvents[you]
Event:FireServer()
end