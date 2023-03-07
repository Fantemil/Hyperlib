repeat wait() until game:IsLoaded()

function spawn(callback)
    task.spawn(callback)
end

-- // Services \\ --
local Players = game:GetService("Players")
local Client = Players.LocalPlayer

local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/L1ZOT/Team-Skeet/main/lib/Source.lua"))()

local win = SolarisLib:New({
   Name = "Team Skeet",
   FolderToSave = "TeamSkeet"
})

local tab = win:Tab("Autofarm")

local sec = tab:Section("Farms")
local Racing = tab:Section("Racing")

local tab2 = win:Tab("Credits")

local secc = tab2:Section("Creators")

secc:Button("Mana#9724", function()
    setclipboard("Mana#9724")
end)

secc:Button("Discord", function()
    local req = (syn and syn.request) or (http and http.request) or http_request or nil
    if req ~= nil then
        for port = 6463, 6472, 1 do
            local inv = 'http://127.0.0.1:' .. tostring(port) .. '/rpc?v=1'
            local http = game:GetService('HttpService')
            local t = {
                cmd = 'INVITE_BROWSER',
                args = {
                    ['code'] = 'PKx8qevgMk'
                },
                nonce = string.lower(http:GenerateGUID(false))
            }
            local post = http:JSONEncode(t)
            req({
                Url = inv,
                Method = 'POST',
                Body = post,
                Headers = {
                    ['Content-Type'] = 'application/json',
                    ['Origin'] = 'https://discord.com'
                }
            })
        end
    end
end)

sec:Toggle("Auto Speed", false,"Toggle", function(t)
    StartFarm = t
end)

spawn(function()
    while task.wait() do
        if StartFarm then
            pcall(function()
                for i,v in pairs(game:GetService("ReplicatedStorage").Orbs:GetChildren()) do
                    if v:IsA("Model") then
                        for i = 1,FarmSpeed do
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", v.Name, "City")
                        end
                    end
                end
            end)
        end
    end
end)

sec:Toggle("Auto Rebirth", false,"Toggle", function(t)
    Auto_Rebirth = t
end)

spawn(function()
    while task.wait() do
        if Auto_Rebirth then
            pcall(function()
                game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            end)
        end
    end
end)

local slider = sec:Slider("Farming Speed", 1,10,1,1,"Slider", function(t)
   FarmSpeed = t
end)

sec:Toggle("Bring Hops", false,"Toggle", function(t)
    Bring_Hops = t
end)

spawn(function()
    while task.wait() do
        if Bring_Hops then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    v.CFrame = Client.Character.HumanoidRootPart.CFrame
                end
            end)
        end
    end
end)

function EToggle(Parent, Name, callback)
    Parent:Toggle(Name, false,"Toggle", callback)
end

EToggle(Racing, "Auto Join Race", function(t)
    Auto_Join_Race = t
end)

spawn(function()
    while task.wait() do
        if Auto_Join_Race then
            pcall(function()
                if Client.PlayerGui.gameGui.raceJoinLabel.Visible then
                    game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
                end
            end)
        end
    end
end)

EToggle(Racing, "Auto Race", function(t)
    Auto_Race = t
end)

spawn(function()
    while task.wait() do
        if Auto_Race then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").raceMaps:GetChildren()) do
                    if game.Players.LocalPlayer.currentMap.Value == v.mapValue.Value then
                        repeat task.wait() until Client.PlayerGui.gameGui.countdownLabels.goLabel.Visible
                        Client.Character.HumanoidRootPart.CFrame = v.finishPart.CFrame
                    end
                end
            end)
        end
    end
end)