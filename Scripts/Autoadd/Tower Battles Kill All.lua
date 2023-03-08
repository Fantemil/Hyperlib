local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local r = game:GetService("ReplicatedStorage").InflictTarget
local Window = Flux:Window("the gui", "Press N to open/close", Color3.fromRGB(255, 110, 48), Enum.KeyCode.N)
local threads = 3 -- luau support multithreading

local Tab1 = Window:Tab("do stuff", "http://www.roblox.com/asset/?id=6023426915")
Tab1:Label("Made by Nexity#3200")

Tab1:Button("update current weapon held", "requires you to have your weapon out", function()
    local weapon
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v.ClassName == "Tool" then
            weapon = v
        end
    end
    local s = require(weapon.Setting)
    local gundamage = s.BaseDamage
    if s.HeadshotEnabled then
        gundamage = s.BaseDamage * s.HeadshotDamageMultiplier
    end
    _G.tbdhstuff = {weapon, gundamage}
end)
Tab1:Button("kill all enemies", "press update current weapon held first", function()
    local enemy = game.Workspace.Game.Enemies:GetChildren()
    local weapon = _G.tbdhstuff[1]
    local gundamage = _G.tbdhstuff[2]
    
    local function damage(x, y)
        local args = {
            [1] = weapon,
            [2] = game:GetService("Players").LocalPlayer,
            [3] = x.Humanoid,
            [4] = x.HumanoidRootPart,
            [5] = y,
            [6] = {
                [1] = 0,
                [2] = 0,
                [3] = false,
                [4] = false,
                [5] = weapon.GunScript_Server.IgniteScript,
                [6] = weapon.GunScript_Server.IcifyScript,
                [7] = 100,
                [8] = 100
            },
            [7] = {
                [1] = false,
                [2] = 5,
                [3] = 3
            },
            [8] = x.Head.Head
        }
        
        r:InvokeServer(unpack(args))
    end
    
    for i,v in pairs(enemy) do
        pcall(function()
            if v.Humanoid.Health > 0 then
                local t = math.ceil(v.Humanoid.Health / gundamage)
                for uselessvaluehere=1, threads, 1 do
                    spawn(function()
                        for i=1, math.ceil(t / threads), 1 do
                            coroutine.wrap(damage)(v, gundamage)
                            task.wait(.01)
                        end
                    end)
                end
            end
        end)
    end
end)
Tab1:Button("Destroy this GUI", "destroys the gui", function()
    game.CoreGui.FluxLib:Destroy()
end)