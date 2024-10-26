local mouse = game.Players.LocalPlayer:GetMouse()
local clickCount = 0

local function autoClick()
    if clickCount >= 50 then
        return  -- Stop clicking if the limit is reached
    end
    
    mouse.Button1Down:Fire()
    mouse.Button1Up:Fire()
    
    clickCount = clickCount + 1
    
    wait(0.001)
    
    autoClick()
end

autoClick()
