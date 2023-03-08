local ReplicatedStorage = game:GetService('ReplicatedStorage')
local HttpService = game:GetService('HttpService')

ReplicatedStorage.Moderation.OnClientEvent:Once(function(...)
local args = {...}

if args[1] == 'New Image Blacklist Data' then
local raw_decal_ids = args[2]
local decal_ids = {}

for _, decal_id in pairs(raw_decal_ids) do
decal_ids[#decal_ids + 1] = decal_id
end

print('Got ' .. #decal_ids .. ' decal ids (saved to ".\\decal-ids.json" file)')
writefile('decal-ids.json', HttpService:JSONEncode(decal_ids))
end
end)