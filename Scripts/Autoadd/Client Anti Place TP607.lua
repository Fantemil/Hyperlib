--[[
    Anti Client Place Teleport script
    This will only work on client-sided teleports (this means you can't bypass DH or Jailbreak bans lol)
    Requested by vyrfz
    Written by Amiriki
--]]

local gui = game:GetService('StarterGui')
local tele = game:GetService('TeleportService')
local LocalPlayer = game:GetService('Players').LocalPlayer

namecall = hookmetamethod(game, '__namecall', newcclosure(function(...)
    if not checkcaller() then
        local args = {...}
        local self = args[1]
        local method = getnamecallmethod()
        
        if method == 'Teleport' or method == 'TeleportToPlaceInstance' then
            return gui:SetCore('SendNotification', {Title = 'Teleport Blocked', Text = 'Teleport successfully blocked'})
        end
    end

    return namecall(...)
end))

local oldtp = hookfunction(tele.Teleport, function(...)
    local plr, id = ...
    if plr == LocalPlayer then
        return gui:SetCore('SendNotification', {Title = 'Teleport Blocked', Text = 'Teleport successfully blocked'})
    end
    return oldtp(...)
end)

local oldttpi = hookfunction(tele.TeleportToPlaceInstance, function(...)
    local plr, id = ...
    if plr == LocalPlayer then
        return gui:SetCore('SendNotification', {Title = 'Teleport Blocked', Text = 'Teleport successfully blocked'})
    end
    return oldttpi(...)
end)

return gui:SetCore('SendNotification', {Title = 'Anti-TP Loaded', Text = 'Written by Amiriki'})