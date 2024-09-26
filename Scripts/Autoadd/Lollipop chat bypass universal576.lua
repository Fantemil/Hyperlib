-- Chat bypass has discontinued due to roblox moderation
-- They have blocked these type of bypasses even boxes and stuff hopefully one day 
-- someone will revive

--]]

if identifyexecutor() == "Solara" then
	return error("Executor not supported.")
end

local Services = setmetatable({}, {
	__index = function(_, serviceName)
		local success, service = pcall(function()
			return game:GetService(serviceName)
		end)
		if success then
			return cloneref(service)
		else
			warn("Service not found: " .. serviceName)
			return nil
		end
	end
})

local player = Services.Players.LocalPlayer
repeat task.wait() until game:IsLoaded() and player.Character

getgenv().OptionsSettings = ({...})[1]
--loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/publicproduct.lua",true))()
player:Kick("Please use kawaii chat bypass by hellohellohell0123 it is working fine for all games rn.")