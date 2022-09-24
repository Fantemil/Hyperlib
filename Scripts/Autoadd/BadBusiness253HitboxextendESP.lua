local n = {["Tea"]=nil,["Char"]=nil}--network lol
local blacklist = {"Camera object","Geometry delete","Floating","Hitbox e","Fallback co","Coregui insta","Deleted ","gloop","_G","Looking hard","Alternate"}

local OldNameCall
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args={...}
    if getnamecallmethod()=="FireServer" and not checkcaller() and #Args>2 then
        local s = Args[3]
        if typeof(s)=="string" and s~="Look" then
            for i,v in pairs(blacklist) do
                if string.find(s,v) then
                    return wait(9e9)
                end
            end
        end
    end
    return OldNameCall(...)
end)
for i,v in pairs(getgc()) do
    if type(v)=="function" and getinfo(v).name=="GetCharacter" then
        n.Char=v
    end
    if type(v)=="function" and getinfo(v).name=="GetPlayerTeam" then
        n.Tea=v
    end
end
body = function(p)
    return n.Char(p,p)
end
team = function(p)
    return n.Tea(p,p)
end
local l = game:GetService("Players").LocalPlayer
local old_index
old_index = hookmetamethod(game, "__index", function(t, i)
    if checkcaller() and i == "Character" and t~=l then
        if body(t) and body(t):FindFirstChild("Hitbox") then--thanks to the person who made the __index hook here https://v3rmillion.net/showthread.php?pid=8103376#pid8103376
            return body(t)
        end
    end
    if checkcaller() and i == "Team" then
        if team(t) then
            return team(t)
        end
    end
    return old_index(t, i)
end)
local function esp(v)
    if v.Character and v.Team~=game.Players.LocalPlayer.Team and not v.Character:FindFirstChildWhichIsA("BoxHandleAdornment",true) then
        for i,v in pairs(v.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                a = Instance.new("BoxHandleAdornment", v)
                a.Adornee = v
                v.Size=v.Size+Vector3.new(6,6,6)
                v.Massless=true
                v.CanCollide=false
                a.Size = v.Size - Vector3.new(0.1, 0.1, 0.1)
                a.Transparency = 0.989
                a.ZIndex = 10
                a.AlwaysOnTop = true
            end
        end
    end
end
while wait(1) do
    for i,v in pairs(game.Players:GetPlayers()) do
        esp(v)
    end
end