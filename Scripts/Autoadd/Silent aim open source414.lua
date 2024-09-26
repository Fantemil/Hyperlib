
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer 
local camera = workspace.CurrentCamera 
local mouse = localPlayer:GetMouse() 
local wtvp = camera.WorldToViewportPoint
             
local function getClosestPlayerHead()
    local target
    local distance = math.huge 
    for i, v in ipairs(Players.GetPlayers(Players)) do
         if v == localPlayer or not v.Character then continue end 
         local character = v.Character 
         if character.FindFirstChild(character, "Head") then
            local head = character.Head 
            local headPos, onScreen = wtvp(camera, head.Position)
            
            if onScreen then 
                local mouseDist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(headPos.X, headPos.Y)).Magnitude
                if mouseDist < distance then 
                    distance = mouseDist 
                    target = head
                end 
            end 
        end 
    end
    return target 
end 
local old; old = hookmetamethod(game, "__namecall", function(...)
    local method = getnamecallmethod()
    local args = {...}
    local callingScript = getcallingscript()
    if (method == "Raycast") and (tostring(callingScript) == "Equipment" or tostring(callingScript) == "FighterController" or tostring(callingScript) == "PlayerDataController" or tostring(callingScript) == "ControlsController") then 
        args[2] = camera.CFrame.Position
        args[3] = (getClosestPlayerHead().Position - args[2]).Unit * 1000
    end
    return old(unpack(args))
end)