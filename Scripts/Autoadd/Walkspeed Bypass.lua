local getinfo = debug.getinfo
local getupvalues = debug.getupvalues
local setupvalue = debug.setupvalue
local plr = game.Players.LocalPlayer
local notif = require(game:GetService("ReplicatedStorage").UIModules.NotifyUser)

repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("CharacterLocal")
for i,v in pairs(getgc(true)) do
    if type(v) == "function" and getinfo(v).name  then
        local info = getinfo(v)
        if info.source == "=Workspace."..tostring(game.Players.LocalPlayer)..".CharacterLocal" then
            local upvs = getupvalues(v)
            if tostring(upvs[1]) == "Humanoid" and upvs[2] == false and type(upvs[3]) == "table" then
                setupvalue(v,3,{RunSpeed = math.huge})
                notif:ShowNotification("WalkSpeed Bypassed :)")
            end
        end
    end
end

plr.CharacterAdded:Connect(function(c)
    repeat wait() until c:FindFirstChild("CharacterLocal")
    for i,v in pairs(getgc(true)) do
        if type(v) == "function" and getinfo(v).name  then
            local info = getinfo(v)
            if info.source == "=Workspace."..tostring(game.Players.LocalPlayer)..".CharacterLocal" then
                local upvs = getupvalues(v)
                if tostring(upvs[1]) == "Humanoid" and upvs[2] == false and type(upvs[3]) == "table" then
                    setupvalue(v,3,{RunSpeed = math.huge})
                    notif:ShowNotification("WalkSpeed Bypassed :)")
                end
            end
        end
    end
end)