-- made by CypherM#8368 (if you take anything from this script then make sure to add credits!) (you are not allowed to sell this / add it to your paid script unless if you ask me)

--[[
how to use:

simply put this script in autoexec and it will automatically rejoin games if your network disconnects or if you get kicked,ect
]]

repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')

po.ChildAdded:connect(function(a)
    if a.Name == 'ErrorPrompt' then
        repeat
            ts:Teleport(game.PlaceId)
            wait(2)
        until false
    end
end)