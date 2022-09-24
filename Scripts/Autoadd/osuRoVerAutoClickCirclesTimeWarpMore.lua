for i,v in pairs(getgc()) do 
    if getfenv(v).script == workspace.OsuConvert then 
        if #getconstants(v) > 100 then 
            old = hookfunction(v, function(a, b, c, d, e, f, g, h, i)
                local x1,y1,z1,w1 = old(a, b, c, d, e, f, g, h, i)
                local x,y,z,w = old(a, b, _G.Timewarp and _G.SongSpeed or y1.SongSpeed, d, e, f, g, h, i)
                if _G.Timewarp then 
                    y.SongSpeed = _G.SongSpeed or 1
                else 
                    y.SongSpeed = y1.SongSpeed
                end 
                if _G.CircleSizeEnabled then
                    y.Difficulty.CircleSize = _G.CircleSize 
                else 
                    y.Difficulty.CircleSize = y1.Difficulty.CircleSize
                end
                if _G.AREnabled then 
                    y.Difficulty.ApproachRate = _G.AR
                else 
                    y.Difficulty.ApproachRate = y1.Difficulty.ApproachRate
                end 
                    if _G.Hidden then 
                        getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).Hidden = false
                    end 
                    if _G.Flashlight then 
                        getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).Flashlight = true
                    end 
                    if _G.Relax then 
                        getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).AutoPlay = false
                    end
                return x,y,z,w
            end)
            game.Players.LocalPlayer.PlayerGui.BG.StartButton.MouseButton1Click:Connect(function()
                wait(2.5)
                for i = 1, 50 do 
                    if _G.Hidden then 
                        getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).Hidden = true
                    end 
                    if _G.Flashlight then 
                        getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).Flashlight = false
                    end 
                    if _G.Relax then 
                        getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).AutoPlay = true
                    end 
                    wait()
                end 
            end)
        end 
    end 
end 

spawn(function()
    while wait(.1) do 
        pcall(function()
            if game.Players.LocalPlayer.PlayerGui.PlayScreen.Song.TimePosition > 10 then 
                if _G.Relax then
                    getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).AutoPlay = true
                end 
                
                if _G.Flashlight then 
                    getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).Flashlight = false
                end 
                
                if _G.Hidden then 
                    getsenv(game.Players.LocalPlayer.PlayerGui.PlayScreen.OsuGame).HiddenMod = false
                end 
            end  
        end)
    end 
end)

local Library = loadstring(game:HttpGet('https://pst.klgrth.io/paste/jz9ho/raw'))()

local Window = Library:AddWindow('Maple Lite')

local Relax = Window:AddTab('Relax')
local Timewarp = Window:AddTab('Timewarp')
local Visuals = Window:AddTab('Visuals')
local Credits = Window:AddTab('Credits')

Relax:AddSwitch('Enabled', function(t)
    _G.Relax = t 
end) 

Relax:AddSlider('Accuraccy', function(t)
    _G.RelaxAccuraccy = t
end, {
    ['min'] = 1,
    ['max'] = 100,
})

Timewarp:AddSwitch('Enabled', function(t)
    _G.Timewarp = t
end) 

Timewarp:AddSlider('Timewarp Multiplier', function(t)
    _G.SongSpeed = t/10
end, {
    ['min'] = 1,
    ['max'] = 15,
}) 

Visuals:AddSwitch('Enabled', function(t)
    _G.CircleSizeEnabled = t
end)

Visuals:AddSlider('Circle Size', function(t)
    _G.CircleSize = t
end, {
    ['min'] = 2,
    ['max'] = 7,
}) 

Visuals:AddSwitch('Enabled', function(t)
    _G.AREnabled = t
end)

Visuals:AddSlider('Approach Rate', function(t)
    _G.AR = t
end, {
    ['min'] = 0,
    ['max'] = 12,
}) 

Visuals:AddSwitch('Unmod Hidden', function(t)
    _G.Hidden = t 
end) 

Visuals:AddSwitch('Unmod Flashlight', function(t)
    _G.Flashlight = t
end) 

Credits:AddLabel('Author: Kono Subarashii')