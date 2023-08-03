--v038
--Update: Updated script 5/22/2022
--Put the script in autoexec if your exploit have it, free exploits don't usually.

Credits = [[
    THIS IS CREDITS DON'T TOUCH OR EDIT BECAUSE WITHOUT THIS EXACT CREDITS SCRIPT WON'T WORK
    
    This script actually is actually FREE and it can be found by a faker who releases this script under their name
    without giving credits to me, and making people go through many ads to get it
    or even making it paid, but whole time its free, make sure you get it from the source!
    Where to buy: https://www.tech-brain.net/product-page/shindo-life-infinite-spinning

    List of bloodlines and stuff is in the channel named #bloodline-names, and many
    other steps on how to use the script correctly Discord Server: https://discord.gg/8KqTZVcfCP
    
    The real owner and the creator of this script is Tech Brain#0001
    If you get this script from a fake person, send their info to me at Tech Brain#0001 in the discord
    Discord Server: https://discord.gg/8KqTZVcfCP or discord.io/techbrain
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