--[[ Made by ThroughTheFireAndFlames#9925

        Universal Autofarm Maker [V1] ;)

--]]-------------------------------------

getgenv().AutoFarm = true -- Determinds if you want it off or on
getgenv().Npc = {"Npc1","Npc2","Npc3","Npc4","Npc5"} -- List of Npcs. [So it goes in array it will solo all the npcs from the first named one to the last] -- Names can be shortened but be spesific

getgenv().Position = Vector3.new(0,nil,5) -- x y z but dont touch "nil" cause it does nothing, [5] is what determinds how far away behind npc. The lower value the closer to the npc max [1].
getgenv().OffsetY = -1.5 -- Adjust this instead of the "nil".

getgenv().MethodX = "Tween" -- MethodXs: ["Tween","Teleport"].
getgenv().TweenDurationX = 0.15 -- 0.25 Recommended, The higher the value the more slower it becomes, 0.1 is almost like teleportion.

getgenv().Press = function(v)
    return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
end

getgenv().Unpress = function(v)
    return game:GetService("VirtualInputManager"):SendKeyEvent(false, v, false, game);
end

getgenv().Attacking = function()
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1) -- Auto clicker [Better to use a remote event]
    -- Your Attacking remote here or the things I listed below: [You can also put multiple buttons to press to do multiple attacks at once]
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/AutoFarmer/main/Universal"))();