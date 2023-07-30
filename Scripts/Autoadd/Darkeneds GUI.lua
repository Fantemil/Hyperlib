--[[local FirstButton = FirstPage.AddButton("Infinite Yield", function()
print(Less go)
end)]]--

local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/twink"))()

local MainUI = UILibrary.Load("Darkened's Exploit GUI V3")
local FirstPage = MainUI.AddPage("Main Exploits.")

local FirstLabel = FirstPage.AddLabel("The starter stuff I would personally use.")

local FirstButton = FirstPage.AddButton("Flying.", function()
 local mouse = game.Players.LocalPlayer:GetMouse()
 repeat wait() until mouse
 local plr = game.Players.LocalPlayer
 local torso = plr.Character.HumanoidRootPart
 local flying = true
 local deb = true
 local ctrl = {f = 0, b = 0, l = 0, r = 0}
 local lastctrl = {f = 0, b = 0, l = 0, r = 0}
 local maxspeed = 50
 local speed = 0

 function Fly()
 local bg = Instance.new("BodyGyro", torso)
 bg.P = 9e4
 bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
 bg.cframe = torso.CFrame
 local bv = Instance.new("BodyVelocity", torso)
 bv.velocity = Vector3.new(0,0.1,0)
 bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
 repeat wait()
 if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
 speed = speed+.5+(speed/maxspeed)
 if speed > maxspeed then
 speed = maxspeed
 end
 elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
 speed = speed-1
 if speed < 0 then
 speed = 0
 end
 end
 if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
 bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
 lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
 elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
 bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
 else
 bv.velocity = Vector3.new(0,0.1,0)
 end
 bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
 until not flying
 ctrl = {f = 0, b = 0, l = 0, r = 0}
 lastctrl = {f = 0, b = 0, l = 0, r = 0}
 speed = 0
 bg:Destroy()
 bv:Destroy()
 end
 mouse.KeyDown:connect(function(key)
 if key:lower() == "e" then
 if flying then flying = false
 else
 flying = true
 Fly()
 end
 elseif key:lower() == "w" then
 ctrl.f = 1
 elseif key:lower() == "s" then
 ctrl.b = -1
 elseif key:lower() == "a" then
 ctrl.l = -1
 elseif key:lower() == "d" then
 ctrl.r = 1
 end
 end)
 mouse.KeyUp:connect(function(key)
 if key:lower() == "w" then
 ctrl.f = 0
 elseif key:lower() == "s" then
 ctrl.b = 0
 elseif key:lower() == "a" then
 ctrl.l = 0
 elseif key:lower() == "d" then
 ctrl.r = 0
 end
 end)
 Fly()
end)

local FirstButton = FirstPage.AddButton("FullBright.", function()
    if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false
    
        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
     end
    
     _G.FullBrightExecuted = true
     _G.FullBrightEnabled = not _G.FullBrightEnabled    
end)

local FirstLabel = FirstPage.AddLabel("The other Scripts.")

local FirstButton = FirstPage.AddButton("Infinite Yield.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local FirstButton = FirstPage.AddButton("Death Zone Script.", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/bUiq0vWs'))()
end)

local FirstLabel = FirstPage.AddLabel("Special scripts, Teleporting tool, super speed, etc.")

local FirstButton = FirstPage.AddButton("Teleport Tool", function()
    local plr = game:GetService("Players").LocalPlayer
    local mouse = plr:GetMouse()
      
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click to teleport"
      
    tool.Activated:Connect(function()
    local root = plr.Character.HumanoidRootPart
    local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
    local offset = pos-root.Position
    root.CFrame = root.CFrame+offset
    end)
      
    tool.Parent = plr.Backpack   
end)

local FirstToggle = FirstPage.AddToggle("Super Speed", false, function(Value)
    if Value then
        getgenv().WalkSpeedValue = 150; --set your desired walkspeed here
 local Player = game:service'Players'.LocalPlayer;
 Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
 Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
 end)
 Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    else
        getgenv().WalkSpeedValue = 25; --set your desired walkspeed here
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end
end)

local SecondPage = MainUI.AddPage("Thy Hood and Doors Scripts.")

local SecondButton = SecondPage.AddButton("Excalibur Grabber. (Thy Hood)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkenedBreeze/darkeneds-exploit-things/main/Thy-Hood-Excalibur-Getter.lua'))()
end)

local SecondButton = SecondPage.AddButton("MS-DOORS (Doors)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua'))()
end)

local SecondButton = SecondPage.AddButton("H.H.Grenade (Doors)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/x0YVrBkd", true))()
end)

local ThirdPage = MainUI.AddPage("Old Versions")

local ThirdButton = ThirdPage.AddButton("Darkened GUI V1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkenedBreeze/darkeneds-exploit-things/main/Darkened%20GUI%20V1.lua", true))()
end)

local ThirdButton = ThirdPage.AddButton("Darkened GUI V2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkenedBreeze/darkeneds-exploit-things/main/Darkened%20GUI%20V2.lua", true))()
end)