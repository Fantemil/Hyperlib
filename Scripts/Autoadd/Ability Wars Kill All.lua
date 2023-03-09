for i,v in pairs (game:GetService("Players"):GetPlayers()) do
 pcall(function()
local A_1 = v.Character.Humanoid
local A_2 = 0
local Event = game:GetService("Players").LocalPlayer.Character.HitEvent
Event:FireServer(A_1, A_2)
end)
end