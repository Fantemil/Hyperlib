local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local panelTrigger = replicatedStorage:WaitForChild("Events"):WaitForChild("PanelTrigger")
local localPlayer = players.LocalPlayer

local baseCommandList = {
    { [1] = "/depth", [2] = nil, [3] = 250 },
    { [1] = "/spin", [2] = nil, [3] = 250 },
    { [1] = "/fire", [2] = nil, [3] = 250 },
    { [1] = "/height", [2] = nil, [3] = 250 },
    { [1] = "/width", [2] = nil, [3] = 250 },
    { [1] = "/char", [2] = nil, [3] = 250 },
    { [1] = "/jumppower", [2] = nil, [3] = 1 },
    { [1] = "/hipheight", [2] = nil, [3] = 1 },
    { [1] = "/gravity", [2] = nil, [3] = 250 },
    { [1] = "/bighead", [2] = nil, [3] = 250 },
    { [1] = "/skydive", [2] = nil, [3] = 250 },
    { [1] = "/cactus", [2] = nil },
    { [1] = "/bruh", [2] = nil },
    { [1] = "/goldify", [2] = nil },
    { [1] = "/rainbow", [2] = nil },
    { [1] = "/bald", [2] = nil },
    { [1] = "/imposter", [2] = nil },
    { [1] = "/bush", [2] = nil },
    { [1] = "/poof", [2] = nil },
    { [1] = "/rainbowtrail", [2] = nil },
    { [1] = "/upsidedown", [2] = nil },
    { [1] = "/meme", [2] = nil },
    { [1] = "/sit", [2] = nil },
    { [1] = "/tree", [2] = nil },
    { [1] = "/sparkle", [2] = nil },
    { [1] = "/glow", [2] = nil },
    { [1] = "/cake", [2] = nil },
    { [1] = "/cola", [2] = nil },
    { [1] = "/dusk", [2] = nil },
    { [1] = "/pizza", [2] = nil },
    { [1] = "/night", [2] = nil },
    { [1] = "/burger", [2] = nil },
    { [1] = "/popcorn", [2] = nil },
    { [1] = "/rainbow", [2] = nil },
}

while true do
    for _, player in ipairs(players:GetPlayers()) do
        if player ~= localPlayer then
            local commandList = {}
            for _, command in ipairs(baseCommandList) do
                local newCommand = {}
                for key, value in pairs(command) do
                    newCommand[key] = value
                end
                newCommand[2] = player.Name
                table.insert(commandList, newCommand)
            end

            for _, command in ipairs(commandList) do
                panelTrigger:FireServer(unpack(command))
            end
            task.wait(4)
        end
    end
end