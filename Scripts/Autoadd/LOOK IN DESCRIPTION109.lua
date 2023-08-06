if (game.PlaceId ~= 13253735473) then
    return
end

local queue_teleport = queueonteleport or queue_on_teleport
local script = [[
    local player_gui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
    if (not player_gui:FindFirstChildOfClass('Actor')) then
        warn('Bypass Loading...')
        local connection; connection = player_gui.ChildAdded:Connect(function(child)
	        if (child.ClassName == 'Actor') then
	            for _, client in next, child:GetChildren() do
	                if (client:IsA('Script')) then
	                    client.Disabled = true
	                    client.Parent = player_gui
	                    client.Disabled = false
	                else
	                    client.Parent = player_gui
	                end
	            end
	            task.wait()
	            child:Destroy()
	            warn('Actors have been bypassed')
	            connection:Disconnect()
	        end
	    end)
    end
]]

local player_gui = game:GetService("Players").LocalPlayer:FindFirstChild('PlayerGui')
local actor = player_gui:FindFirstChildOfClass('Actor')
if (actor) then
	if (actor:FindFirstChild('LobbyClient')) then
		if (not _G.lobby_bypass) then
			_G.lobby_bypass = true
            if (queue_teleport) then
                queue_teleport(script)
                warn('Lobby bypass loaded!')
            else
                warn('Cant load lobby bypass (executor problem)')
            end
        else
            warn('Lobby bypass has already loaded!')
        end
	elseif (not getrenv()._G.modules) then
		warn('Actors have not been bypassed')
		warn('Please Inject')
		warn(' - In Lobby')
		warn(' - While Loading')
		warn('For the bypass to work!')	
	end
elseif (not getrenv()._G.modules) then
    loadstring(script)()
else
	warn('Actors have already been bypassed!')
end