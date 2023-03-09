--[[ITEM LIST
    ////////
    "Arrow"
    "Requiem Arrow"
    "Locacaca"
    "Stone Mask"
    "Steel Ball"
    "Heart of the Saint's Corpse"
    "Left Arm of the Saint's Corpse"
    "Eye of the Saint's Corpse"
    "Skull of the Saint's Corpse"
    "Ribcage of the Saint's Corpse"
    "Left Leg of the Saint's Corpse"
    "Right Leg of the Saint's Corpse"
    "Right Arm of the Saint's Corpse"
    "Cash"
    "Coin"
    "Pluck"
    ////////
]]--

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HUD",1000000):WaitForChild("Screen",10).LoadingScreen.Visible == false
wait()
local function hop()
    local servers = {}
    local req = syn.request({
        Url = string.format('https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100', game.PlaceId)
    })
    local body = game:GetService("HttpService"):JSONDecode(req.Body)
    if body and body.data then
        for i, v in next, body.data do
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < tonumber(v.maxPlayers) then
                table.insert(servers, 1, v.id)
            end
        end
    end
    if #servers > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    else
        return notify("Serverhop", "Couldn't find a server.")
    end
end
local items = {"Arrow";"Requiem Arrow";"Locacaca";"Stone Mask";"Steel Ball","Cash","Coin"}
local me = game.Players.LocalPlayer
char = me.Character
HRP = char.HumanoidRootPart
local function tp(arg1)
    HRP.CFrame = arg1.CFrame   
end
local itemsFolder = game:GetService("Workspace").Map.Items.SpawnedItems
sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Legacy)
-- ///////////////////
-- FARM
-- ///////////////////
for i, v in pairs(itemsFolder:GetChildren()) do
    if table.find(items, v.Name) then
        print(v)
        if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Mesh") then
            tp(v)
            char.Humanoid.Jump = true
            wait(.5)
            local prox = v:WaitForChild("ProximityPrompt", .5)
            fireproximityprompt(prox)
            wait()
            print("Fired")
        elseif v:FindFirstChild("Handle") then
            tp(v.Handle)
            char.Humanoid.Jump = true
            wait(.5)
            local prox = v.Handle:WaitForChild("ProximityPrompt", .5)
            fireproximityprompt(prox)
            wait()
            print("Fired")
        end
    end
end
wait(5)
for i = 1, 10 do
    hop()
end