task.spawn(function()
    if game.PlaceId ~= 9821272782 then
        getgenv().Press = function(v)
            return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
        end
        while true do wait(10.5)
            Press("RightBracket");
        end
    else
        while true do wait(10.5)
            keypress(0xDD);
        end
    end
end)