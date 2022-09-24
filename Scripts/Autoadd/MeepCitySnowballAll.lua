local it = 932
local function ball(player)
if it and player.Character and player.Character:FindFirstChild("Head") then
local pos = player.Character.Head.Position
local Global = require(game:GetService("ReplicatedStorage").Global)
game:GetService("ReplicatedStorage").ConnectionEvent:FireServer(226, game:GetService("HttpService"):JSONEncode({it,Global.ConcatenateVector3(targetpos),Global.ConcatenateVector3(pos),Global.ConcatenateVector3(pos),0}))
end
end
for i,v in pairs(game.Players:GetPlayers()) do
ball(v)
end