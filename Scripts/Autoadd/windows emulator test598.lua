local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

local namecall, index;

namecall = hookmetamethod(game, "__namecall", function(...)
    local args = {...};
    local self = args[1];
    local method = getnamecallmethod();

    if self == UserInputService or self == GuiService then
        if method == "GetPlatform" then
            return Enum.Platform.Windows; -- Return Windows for computer emulation
        elseif method == "IsTenFootInterface" then
            return false;
        end
    end
    return namecall(...);
end)

index = hookmetamethod(game, "__index", function(tbl, idx)
    if tostring(getcallingscript()) ~= "ControlModule" and tbl == UserInputService then
        if idx == "TouchEnabled" then
            return false; -- Simulate no touch input for a computer
        elseif idx == "MouseEnabled" then
            return true;  -- Simulate mouse input for a computer
        elseif idx == "KeyboardEnabled" then
            return true;  -- Simulate keyboard input for a computer
        end
    end
    return index(tbl, idx);
end);