_G.wpmlimit = 201 -- Max WPM you can hit, will start stuttering at this limit
_G.keydelay = 0.0525 -- Delay between keys to seem more legit. 0.075 ~ 144wpm

local vim = game:GetService("VirtualInputManager") -- I specifically did this bc keypress used only VK bytecodes
-- Interpreting straight letter to VIM seems to be faster than using VK, and it works without needing game focus

---- vvvvv I DID NOT MAKE ANYTHING IN THIS SECTION vvvvv ----
local function findLetterTable()
for i,obj in pairs( getgc() ) do
if type(obj) == "function" and getfenv(obj).script == game:GetService("Players").LocalPlayer.PlayerGui.LocalMain then
local consts=debug.getconstants(obj)
if consts[8]=="idXTO3JVlV0CBTmiSbaQ" then
--local tab=debug.getupvalue(obj,4)
return debug.getupvalue(obj,4) -- FULL CREDIT TO IDoN0t ON V3RM FOR THIS THING [showthread.php?tid=1140292]
end end end end -- I have no idea what's going on in this thing, other than just raw letters come out of it
---- ^^^^^ I DID NOT MAKE ANYTHING IN THIS SECTION ^^^^^ ----

local descendants = findLetterTable()
for index, descendant in pairs(descendants) do
    if string.upper(descendant) ~= " " then -- Remnant of an old method of getting letters
        local key = Enum.KeyCode[string.upper(descendant)]
        vim:SendKeyEvent(1,key,0,nil)
        vim:SendKeyEvent(0,key,0,nil) 
        else
        vim:SendKeyEvent(1,32,0,nil) -- This is how I used to interpret spaces safely
        vim:SendKeyEvent(0,32,0,nil) -- It's crusty, but it works
        end
    while tonumber(game.Players.LocalPlayer.PlayerGui.ScreenGui.Main.RaceScreen.LiveStats.WPM.Stat.Text) > _G.wpmlimit do
    task.wait() -- This section hard limits at the set WPM cap. Should this also be keydelay so it's less jittery/stuttery?
    end
    wait(_G.keydelay)
    if game.Workspace:FindFirstChild("Doll") then -- To avoid bugs with non RLGL modes
        while game:GetService("SoundService").DollSaying.TimePosition > 5 or game:GetService("SoundService").DollSaying.TimePosition <= 0 do
            task.wait() -- I encourage experimenting with the timepos to squeeze the most out of the time you have. 5 is the highest it's reliable at.
        end
    end
end