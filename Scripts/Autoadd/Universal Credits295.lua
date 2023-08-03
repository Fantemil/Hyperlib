getgenv().credits =
[[Script taken from «ScriptBlox.com»
]]

--//
print"Lmao" -- Script here
--\\

local creditsstring =
[[Script taken from «ScriptBlox.com»
]]

if not getgenv().credits or getgenv().credits ~= creditsstring then
    game.Players.LocalPlayer:Kick("Dont touch credits, kid🥶")
    wait(.5)
    while true do end
end