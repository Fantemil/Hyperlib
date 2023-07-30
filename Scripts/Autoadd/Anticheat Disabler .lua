local player = game.Players.LocalPlayer
local storage = game.ReplicatedStorage
local dirtyRemotes = {
    "hmm",
    "Whizz",
    "Kick",
    "ApplyVel",
    "YouGotXP",
    "Flames",
    "ReplicateGear",
    "GetMapVote",
    "Vote",
    "DoVotekick",
    "TCtullysBigStinkyEvent2",
    "TCtullysBigStinkyEvent",
    "MoreFreeBadgesEnjoy",
    "COMMAND",
    "Fire",
    "BurnMe",
    "ForceTeam",
    "SCP",
    "Glitch",
    "ThrowBall"
}
local dirtyIDs = {
    "rbxassetid://11493344192",
    "rbxassetid://11706521913",
    "rbxassetid://328298876",
    "rbxassetid://11706698017",
    "rbxassetid://11810985691",
    "rbxassetid://11441550965",
    "rbxassetid://13296723282",
    "rbxassetid://11440677815",
    "rbxassetid://8834748103",
    "rbxassetid://11445329779",
    "rbxassetid://11447558233",
    "rbxassetid://11441541927"
}

for _, v in next, getconnections(game:GetService("ScriptContext").Error) do
    v:Disable()
end

for _, v in next, getconnections(game:GetService("LogService").MessageOut) do
    v:Disable()
end

-- We don't need them aswell. Some of them tho.
for _, v in pairs(storage.Modules:GetChildren()) do
    if
        v.Name == "ping" or v.Name == "Sound" or v.Name == "Teams" or v.Name == "Projectiles" or v.Name == "Xp" or
            v.Name == "BitBuffer" or
            v.Name == "ClientFunctions" or
            v.Name == "Spread"
    then
        continue
    end
    v:Destroy()
end

for _, v in pairs(storage.SCRIPT:GetChildren()) do
    v:Destroy()
end

for _, v in pairs(storage.Functions:GetChildren()) do
    if v.Name == "Ping" or v.Name == "ClientFunctions" then
        continue
    end
    v:Destroy()
end

for _, v in pairs(storage.Events:GetChildren()) do
    if v:IsA("RemoteFunction") or v:IsA("BindableEvent") then
        if v.Name == "GetPing" or v.Name == "GetInventory" or v.Name == "AssetStreaming" or v.Name == "Redeem" or v.Name == "ClientFunctions" or string.find(v.Name:lower(), "ban") then
            continue
        end
        v:Destroy()
    end
end

for _, v in pairs(storage:GetChildren()) do
    if v:IsA("ModuleScript") then
        if v.Name == "KillEffects" or v.Name == "Xp" or v.Name == "ClientFunctions" then
            continue
        end
        v:Destroy()
    end
end

for _, v in pairs(storage:GetChildren()) do
    if v:IsA("Script") then
        v:Destroy()
    end
end

for _, v in pairs(storage:GetChildren()) do
    if v:IsA("RemoteFunction") then
        v:Destroy()
    end
end
-- Packages clean up
game.CorePackages.Packages:Destroy()

local oldNC
oldNC =
    hookmetamethod(
    game,
    "__namecall",
    newcclosure(
        function(Self, ...)
            local method = getnamecallmethod()

            if (string.lower(method) == "kick") then
                return task.wait(9e9)
            end

            if (string.lower(method) == "getassetfetchstatus") then
                if table.find(dirtyIDs, ...) and Self.ClassName == "ContentProvider" then
                    return nil
                end
            end

            if (string.lower(method) == "fireserver" and table.find(dirtyRemotes, tostring(Self))) then
                return task.wait(9e9)
            end

            return oldNC(Self, ...)
        end
    )
)
