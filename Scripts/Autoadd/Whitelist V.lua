--// Retrieve the whitelist from the URL
local HttpService = game:GetService("HttpService")
local WhitelistUrl = "https://example.com/whitelist.here" -- Replace with your own URL
local Whitelist = {}
local success, result = pcall(function()
return HttpService:GetAsync(WhitelistUrl)
end)
if success then
for name in result:gmatch("[^\r\n]+") do
table.insert(Whitelist, name)
end
else
error("Failed to retrieve whitelist: " .. tostring(result))
end

--// Expose a remote function to check if a player is whitelisted
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local IsPlayerWhitelisted = Instance.new("RemoteFunction")
IsPlayerWhitelisted.Name = "IsPlayerWhitelisted"
IsPlayerWhitelisted.Parent = ReplicatedStorage

function IsPlayerWhitelisted.OnServerInvoke(player)
if table.find(Whitelist, player.Name) then
return true
else
return false
end
end

--// Client-side script

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local IsPlayerWhitelisted = ReplicatedStorage:WaitForChild("IsPlayerWhitelisted")
local player = game.Players.LocalPlayer

--// Call the remote function to check if the player is whitelisted
local isWhitelisted = IsPlayerWhitelisted:InvokeServer(player)
if isWhitelisted then
print(player.Name .. " is allowed to use the script")
else
print(player.Name .. " is not whitelisted")
end