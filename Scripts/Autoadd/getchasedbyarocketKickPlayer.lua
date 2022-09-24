local target = "Roblox" -- enter their full player name
local mess = "whatever message here"
local repsto = game:GetService("ReplicatedStorage")

repsto.KickPlayer:FireServer(target, mess)