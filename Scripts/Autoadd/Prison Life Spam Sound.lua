while wait() do
for i,v in pairs(game.Players:GetChildren()) do
pcall(function()
local A_1 = game:GetService("Workspace")["Prison_guardspawn"].spawn.Sound
local A_2 = v.Character.Head
local Event = game:GetService("ReplicatedStorage").SoundEvent
Event:FireServer(A_1, A_2)
end)
end
end