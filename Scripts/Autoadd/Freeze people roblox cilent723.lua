local x = 10 -- How big is X 
    local z = 10 -- How big is Z
local wait = 2 -- adjust when will this water turn into freeze machine

if not setclipboard then
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "ur exec does not support setclipboard",
Text = "change setclipboard to print or use an online Lua editor and copy", 

Button1 = "k",
Button2 = "nah",
Duration = 30 
})
end

local function chat(msg)
    game.Players:Chat(msg)
end
    
-- DO NOT ADJUST Y!

    local chatCommand = "" -- add anything
    for i = 1, 30 do
        chatCommand = chatCommand .. ":makepart " .. i .. "|"
    end
     for i = 1, 30 do
        chatCommand = chatCommand .. ":setcollision " .. i .. " false|"
    end
    for i = 1, 30 do
        chatCommand = chatCommand .. ":resizepart " .. i .. " exact " .. x .. " 2040 " .. z .. "|"
    end
    for i = 1, 30 do
        chatCommand = chatCommand .. ":movepart " .. i .. " relative 0 " .. (i - 1) * 2000 .. " 0|"
    end
    chatCommand = chatCommand .. ":thaw|:wait ".. wait .."|"
    for i = 1, 30 do
        chatCommand = chatCommand .. ":terrainpart " .. i .. " Water|"
    end
        chatCommand = chatCommand .. ":wtransparency 1|:wcolor 255,255,0"

setclipboard(chatCommand)
print(chatCommand) -- print has been made for you incase if you need to use lua editor