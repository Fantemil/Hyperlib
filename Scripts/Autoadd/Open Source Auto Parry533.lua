-- credit to dendenzzz

getgenv().autoparry = true

local VirtualManager = 
game:GetService("VirtualInputManager")
local Stats = game:GetService('Stats')
local Players = game:GetService('Players')
local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local RunService = game:GetService('RunService')
local parry_helper = loadstring(game:HttpGet("https://raw.githubusercontent.com/TripleScript/TripleHub/main/helper_.lua"))()

local ero = false

task.spawn(function()
    RunService.PreRender:Connect(function()
        if not getgenv().autoparry then 
            return 
        end

        local par = parry_helper.FindTargetBall()
        if not par then 
            return 
        end

        local hat = par.AssemblyLinearVelocity
        if par:FindFirstChild('zoomies') then 
            hat = par.zoomies.VectorVelocity
        end

        local i = par.Position
        local j = Player.Character.PrimaryPart.Position
        local kil = (j - i).Unit
        local l = Player:DistanceFromCharacter(i)
        local m = kil:Dot(hat.Unit)
        local n = hat.Magnitude

        if m > 0 then
            local o = l - 5
            local p = o / n

            if parry_helper.IsPlayerTarget(par) and p <= 0.55 and not ero then
                VirtualManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                wait(0.01)
                ero = true
            end
        else
            ero = false
        end
    end)
end)