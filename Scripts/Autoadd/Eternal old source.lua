-- // Eternal Source (Old) Leaked By The Owner Himself tayk#0001 

-- // .gg/bulletassist ft. .gg/externals

-- // We Will Always Remember Colloper AKA Tayk.

-- // Cop Eternal V2 And Nova.


getgenv().Eternal = {
    Options = {
	  ['Rconsole'] = false, 
	  ['Gui'] = false,
	  ['Notifications'] = true, 
	  ['Funny_Intro'] = true,
    },
    BulletAssist = {
      ['Toggle'] = "P",
      ['Enabled'] = true,
      ['Prediction'] = 0.14224646,
      ['HitPart'] = "UpperTorso",
      ['NearestPart'] = true,
	  ['Type'] = true,
	  ['Closest_Type'] = "Closest Point",
      ['HitChance'] = 100, 
      ['KoCheck'] = true, 
      ['WallChecked'] = true, 
      ['AirShot_Function'] = false,
	  ['Airshot_Part'] = "UpperTorso",
    },
    FOV = { 
      ['Visible'] = true,
      ['Radius'] = 32.5,
	  ['NumSides'] = 1000,
	  ['Transparency'] = 0.7, 
	  ['Filled'] = false,
	  ['UseKeyBind'] = true, 
	  ['Keybind'] = "M",
      ['Thickness'] = 0.7,
	  ['Rainbow'] = true,
	  ['Color'] = Color3.new(100, 0, 100),
    },
    Aim_Assist = { --// smoothlock, aim assist wtv
      ['Key'] = "C", 
      ['Enabled'] = true,
      ['Part'] = "HumanoidRootPart",
      ['UseMouseKey'] = false, -- use mouse key 
      ['MouseKey'] = Enum.UserInputType.MouseButton2, -- you can use side keys on ur mouse (I have them)
      ['Nearestpart'] = false, --// legitness 
      ['Visible_Check'] = true, --// checks if player is visible
	  ['DisableOutSideOfFOV'] = true, -- disables aim assist when player is outside fov_2
      ['PredictPlr'] = false, --// predict player
      ['Prediction'] = 0.102, --// prediction
      ['AirshotFunc'] = true,
      ['AirshotPart'] = "HumanoidRootPart",
      ['Smoothness'] = 0.9, --// smoothness
      ['UnlockOnPlrsDeath'] = true, -- basically knocked check
      ['Shake'] = false, --// shake
      ['Shake_Value'] = {
		  ['X']= 10,
		  ['Y'] = 2,
	      ['Z'] = 5,
				
	      },
     }, 
    Checks = {
	  ['Grabbed_Check'] = true,	
      ['Crew_Check'] = true, 
	  ['FriendCheck'] = true, 
      ['WallCheckPlr'] = true, 
      ['CheckIfKnocked'] = true,
      ['DisableWhenYourKnocked'] = true,
    },    
    FOV_2 = { 
      ['Visible'] = true,
      ['Radius'] = 62,
    },  
    Resolver = {
      ['Velocity_Recalculation'] = false, --// misses half of the time and dont resolve desync
    },    
    Macro = {
      ['Type'] = "First Person", -- IOIO / First Person
      ['Key'] = "q", -- keybind
      ['Speed'] = 1,
	},  
    Safety_Measures = {
      ['NoGroundShots'] = true, 
      ['DisableOutSideOfFOV'] = true,
    },
    Auto_Prediction = {
      ['Enabled'] = false, 
      ['Refresh_Rate'] = 0.12,
      ['Ping_10'] = 0.125235,
	  ['Ping_20'] = 0.123,
	  ['Ping_30'] = 0.123,
      ['Ping_40'] = 0.1346,
      ['Ping_50'] = 0.13427,
      ['Ping_60'] = 0.139236,
      ['Ping_70'] = 0.1373254,
      ['Ping_80'] = 0.139,
      ['Ping_90'] = 0.1374234,
      ['Ping_100'] = 0.142323,
      ['Ping_110'] = 0.147,
      ['Ping_120'] = 0.15235,
	  ['Ping_130'] = 0.162323,
      ['Ping_140'] = 0.15,
	  ['Ping_150'] = 0.167,
	  ['Ping_160'] = 0.13,
	  ['Ping_170'] = 0.13,
	  ['Ping_180'] = 0.13,
	  ['Ping_190'] = 0.13,
      ['Ping_200'] = 0.120,

    
        }
   }   
   

local Players, Client, Mouse, RS, Camera =
game:GetService("Players"),
game:GetService("Players").LocalPlayer,
game:GetService("Players").LocalPlayer:GetMouse(),
game:GetService("RunService"),
game:GetService("Workspace").CurrentCamera
-- functions nd shi
local Aim_AssistCircle = Drawing.new("Circle")
Aim_AssistCircle.Color = Color3.new(0,0,0)
Aim_AssistCircle.Thickness = 1
    
    
    
-- updating FOV_2 on re execute


	local UpdateFOV = function ()
        if ( not Aim_AssistCircle) then
            return Aim_AssistCircle
        end
-- yeah im not adding more stuff to this        
Aim_AssistCircle.Visible  = getgenv().Eternal.FOV_2.Visible
Aim_AssistCircle.Radius   = getgenv().Eternal.FOV_2.Radius * 3
Aim_AssistCircle.Position = Vector2.new(Mouse.X, Mouse.Y + (game:GetService("GuiService"):GetGuiInset().Y))
   return Aim_AssistCircle
end 

-- wall check whatever

    RS.Heartbeat:Connect(UpdateFOV)
    local WallCheck = function(destination, ignore)
        local Origin    = Camera.CFrame.p
        local CheckRay  = Ray.new(Origin, destination - Origin)
        local Hit       = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit      == nil
    end
    
    local WTS = function (Object)
        local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
        return Vector2.new(ObjectVector.X, ObjectVector.Y)
    end
    
    local IsOnScreen = function (Object)
        local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
        return IsOnScreen
    end
    
    local FilterObjs = function (Object)
        if string.find(Object.Name, "Gun") then
            return
        end
        if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
            return true
        end
    end
    
    -- this is why u get banned in hc
    
    local ClosestPlrFromMouse2 = function()
        local Target, Closest = nil, 1/0
        
        for _ ,v in pairs(Players:GetPlayers()) do
            if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
                if getgenv().Eternal.Checks.WallCheckPlr then
                    local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            
                    if (Distance < Closest and OnScreen) and WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}) then
                        Closest = Distance
                        Target = v
                    end
                    elseif getgenv().Eternal.Aim_Assist.Visible_Check then
                        local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                        if (Aim_AssistCircle.Radius > Distance and Distance < Closest and OnScreen) and WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}) then
                            Closest = Distance
                            Target = v
                        end
                    else
                        local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v
                        end
                    end
                end
            end
        return Target
    end
    
    local GetClosestBodyPart = function (character)
        local ClosestDistance = 1/0
        local BodyPart = nil
        
        if (character and character:GetChildren()) then
            for _,  x in next, character:GetChildren() do
                if FilterObjs(x) and IsOnScreen(x) then
                    local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (Circle.Radius > Distance and Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
                end
            end
        end
        return BodyPart
    end
    
    local GetClosestBodyPartV2 = function (character)
        local ClosestDistance = 1/0
        local BodyPart = nil
        
        if (character and character:GetChildren()) then
            for _,  x in next, character:GetChildren() do
                if FilterObjs(x) and IsOnScreen(x) then
                    local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
                end
            end
        end
        return BodyPart
    end



--// knocked check

    RS.RenderStepped:Connect(function()
        if getgenv().Eternal.Aim_Assist.Enabled == true then
            if getgenv().Eternal.Checks.CheckIfKnocked == true and Plr and Plr.Character then 
                local KOd = Plr.Character:WaitForChild("BodyEffects")["K.O"].Value
                local Grabbed = Plr.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if KOd or Grabbed then
                    Plr = nil
                    IsTargetting = false
                end
            end		--// no ground shots (worst method)


            
            -- unlock on players death (enemy)
            
            if getgenv().Eternal.Aim_Assist.UnlockOnPlrsDeath == true and Plr and Plr.Character:FindFirstChild("Humanoid") then
                if Plr.Character.Humanoid.health < 4 then
                    Plr = nil
                    IsTargetting = false
                end
            end
            
-- shake function
            if getgenv().Eternal.Aim_Assist.PredictPlr and Plr and Plr.Character and Plr.Character:FindFirstChild(getgenv().Eternal.Aim_Assist.Part) then
                if getgenv().Eternal.Aim_Assist.Shake then
                    local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Eternal.Aim_Assist.Part].Position + Plr.Character[getgenv().Eternal.Aim_Assist.Part].Velocity * getgenv().Eternal.Aim_Assist.Prediction +
                    Vector3.new(
                        math.random(-getgenv().Eternal.Aim_Assist.Shake_value.X, getgenv().Eternal.Aim_Assist.Shake_value.X),
                        math.random(-getgenv().Eternal.Aim_Assist.Shake_value.Y, getgenv().Eternal.Aim_Assist.Shake_value.Y),
                        math.random(-getgenv().Eternal.Aim_Assist.Shake_value.Z, getgenv().Eternal.Aim_Assist.Shake_value.Z)
                    ) * 0.1)
                    Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Eternal.Aim_Assist.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                else
                    local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Eternal.Aim_Assist.Part].Position + Plr.Character[getgenv().Eternal.Aim_Assist.Part].Velocity * getgenv().Eternal.Aim_Assist.Prediction)
                    Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Eternal.Aim_Assist.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                end
            elseif getgenv().Eternal.Aim_Assist.PredictPlr == false and Plr and Plr.Character and Plr.Character:FindFirstChild(getgenv().Eternal.Aim_Assist.Part) then
                if getgenv().Eternal.Aim_Assist.Shake then
                    local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Eternal.Aim_Assist.Part].Position +
                    Vector3.new(
                        math.random(-getgenv().Eternal.Aim_Assist.Shake_value.X, getgenv().Eternal.Aim_Assist.Shake_value.X),
                        math.random(-getgenv().Eternal.Aim_Assist.Shake_value.Y, getgenv().Eternal.Aim_Assist.Shake_value.Y),
                        math.random(-getgenv().Eternal.Aim_Assist.Shake_value.Z, getgenv().Eternal.Aim_Assist.Shake_value.Z)
                    ) * 0.1)
                    Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Eternal.Aim_Assist.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                else
                    local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Eternal.Aim_Assist.Part].Position)
                    Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Eternal.Aim_Assist.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                end
            end
        end
    end)
    
    task.spawn(function ()
        while task.wait() do
            if Plr then
                if getgenv().Eternal.Aim_Assist.Enabled and (Plr.Character) and getgenv().Eternal.Aim_Assist.Nearestpart then
                    getgenv().Eternal.Aim_Assist.Part = tostring(GetClosestBodyPartV2(Plr.Character))
                end
            end
        end
    end)

--// aim assist toggle

    Mouse.KeyDown:Connect(function(Key)
        local Keybind = getgenv().Eternal.Aim_Assist.Key:lower()
        if (Key == Keybind) then
            if getgenv().Eternal.Aim_Assist.Enabled == true then
                IsTargetting = not IsTargetting
                if IsTargetting then
                    Plr = ClosestPlrFromMouse2()
                else
                    if Plr ~= nil then
                        Plr = nil
                        IsTargetting = false
                    end
                end
            end
        end
    end)        -- disable outside of fov
    
                if getgenv().Eternal.Safety_Measures.DisableOutSideOfFOV == true and Plr and Plr.Character and Plr.Character:WaitForChild("HumanoidRootPart") then
                if
                Aim_AssistCircle.Radius <
                    (Vector2.new(
                        Camera:WorldToScreenPoint(Plr.Character.HumanoidRootPart.Position).X,
                        Camera:WorldToScreenPoint(Plr.Character.HumanoidRootPart.Position).Y
                    ) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                 then
                    Plr = nil
                    IsTargetting = false
                end
                end
                
    -- airshot function            


    --// Bullet Assist (most optimized locals) 
    
    local Players, Client, Mouse, RS, Camera, r =
    game:GetService("Players"),
    game:GetService("Players").LocalPlayer,
    game:GetService("Players").LocalPlayer:GetMouse(),
    game:GetService("RunService"),
    game.Workspace.CurrentCamera,
    math.random
    -- locals and the color and shit
    local Circle = Drawing.new("Circle")
    Circle.Color = Color3.new(0, 0, 0)
    Circle.Transparency = getgenv().Eternal.FOV["Transparency"]
    Circle.Thickness = getgenv().Eternal.FOV["Thickness"]
	Circle.Filled = getgenv().Eternal.FOV["Filled"]
    Circle.NumSides = getgenv().Eternal.FOV["NumSides"]
    
    local Prey
    local On
    
    local Vec2 = function(property)
    return Vector2.new(property.X, property.Y + (game:GetService("GuiService"):GetGuiInset().Y))
    end
    
    -- updating fov on re execute
    
    local UpdateBulletAssistaimFOV = function()
    if not Circle then
        return Circle
    end
    
-- rainbow fov function

    if getgenv().Eternal.FOV.Rainbow then
        Circle.Color = Color3.fromHSV((tick() % 2 / 2), 1, 1)
    elseif not getgenv().Eternal.FOV.Rainbow then
	Circle.Color = getgenv().Eternal.FOV["Color"]
    end
    Circle.Visible = getgenv().Eternal.FOV["Visible"]
    Circle.Radius = getgenv().Eternal.FOV["Radius"] * 3.05
    Circle.Position = Vec2(Mouse)

    return Circle
    end
    -- updating the fov
    game.RunService.RenderStepped:Connect(
    function()
        UpdateBulletAssistaimFOV()
    end
    )
    -- wallcheck
    
    local WallCheck = function(destination, ignore)
    if getgenv().Eternal.BulletAssist.WallChecked then
        local Origin = Camera.CFrame.p
        local CheckRay = Ray.new(Origin, destination - Origin)
        local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
    end
    
    
    GetClosestToMouse = function()
    local Target, Closest = nil, 1 / 0
    
    for _, v in pairs(Players:GetPlayers()) do
        if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
            local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
    
            if
                (Circle.Radius > Distance and Distance < Closest and OnScreen and
                    WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}))
             then
                Closest = Distance
                Target = v
            end
        end
    end
    return Target
    end
    
    -- ko check
    
    function TargetChecks(Target)
    if getgenv().Eternal.BulletAssist.KoCheck == true and Target.Character then
        return Target.Character.BodyEffects["K.O"].Value and true or false
    end
    return false
    end
    -- some velocity typa sh ur able to replace with md
    function PredictionictTargets(Target, Value)
    return Target.Character[getgenv().Eternal.BulletAssist.HitPart].CFrame +
        (Target.Character[getgenv().Eternal.BulletAssist.HitPart].Velocity * Value)
    end
    
    local WTS = function(Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
    end
    
    local IsOnScreen = function(Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
    end
    
    local FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
    end
    
    local GetClosestBodyPart = function (character)
        local ClosestDistance = 1/0
        local BodyPart = nil
        
        if (character and character:GetChildren()) then
            for _,  x in next, character:GetChildren() do
                if FilterObjs(x) and IsOnScreen(x) then
                    local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (Circle.Radius > Distance and Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
                end
            end
        end
        return BodyPart
    end
    
    -- nearest part
    
    RS.RenderStepped:Connect(
    function()
        if Prey then
            if Prey ~= nil and getgenv().Eternal.BulletAssist.Enabled and getgenv().Eternal.BulletAssist.NearestPart == true then
                getgenv().Eternal.BulletAssist["HitPart"] = tostring(GetClosestBodyPart(Prey.Character))
            end
        end
    end
    )
    

    
    -- aim assist Toggle
    
    Mouse.KeyDown:Connect(
      function(Key)
        if (Key == getgenv().Eternal.BulletAssist.Toggle:lower()) then
            if getgenv().Eternal.BulletAssist.Enabled == true then
                getgenv().Eternal.BulletAssist.Enabled = false
            else
                getgenv().Eternal.BulletAssist.Enabled = true
            end
        end
      end
    )
    
-- index shit
    
    local grmt = getrawmetatable(game)
    local index = grmt.__index
    local properties = {
    "Hit"
    }
    setreadonly(grmt, false)
    
    grmt.__index =
    newcclosure(
    function(self, v)
        if Mouse and (table.find(properties, v)) then
            Prey = GetClosestToMouse()
            if Prey ~= nil and getgenv().Eternal.BulletAssist.Enabled and not TargetChecks(Prey) then
                local endpoint = PredictionictTargets(Prey, getgenv().Eternal.BulletAssist.Prediction)
    
                return (table.find(properties, tostring(v)) and endpoint)
            end
        end
        return index(self, v)
    end
    )
    
    -- airshot func
    
    RS.Heartbeat:Connect(function()
    if getgenv().Eternal.BulletAssist.AirShot_Function == true and Prey.Character:FindFirstChild("Humanoid") then
        if Prey.Character.Humanoid.FloorMaterial == Enum.Material.Air and Prey.Character.Humanoid.Jump == true then
        getgenv().Eternal.BulletAssist.HitPart = getgenv().Eternal.BulletAssist.Airshot_Part
        else
        getgenv().Eternal.BulletAssist.HitPart = getgenv().Eternal.BulletAssist.HitPart
           end
        end
    end)



    -- auto prediction 
    

while getgenv().Eternal.Auto_Prediction.Enabled == true do
    local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingNumber = string.split(Ping, " ")[1] -10
        if pingNumber < 10 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_10
        elseif pingNumber < 20 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_20
        elseif pingNumber < 30 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_30
        elseif pingNumber < 40 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_40
        elseif pingNumber < 50 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_50
        elseif pingNumber < 60 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_60
        elseif pingNumber < 70 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_70
        elseif pingNumber < 80 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_80
        elseif pingNumber < 90 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_90
        elseif pingNumber < 100 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_100
        elseif pingNumber < 110 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_110
        elseif pingNumber < 120 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_120
        elseif pingNumber < 130 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_130
        elseif pingNumber < 140 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_140
        elseif pingNumber < 150 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_150
        elseif pingNumber < 160 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_160
        elseif pingNumber < 170 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_170
        elseif pingNumber < 180 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_180
        elseif pingNumber < 190 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_190
        elseif pingNumber < 200 then
        getgenv().Eternal.BulletAssist.Prediction = getgenv().Eternal.Auto_Prediction.Ping_200

    end
    wait(getgenv().Eternal.Auto_Prediction.Refresh_Rate)
end

-- disables aim assist when knocked

if getgenv().Eternal.Checks.DisableWhenYourKnocked == true and Plr and Plr.Character:FindFirstChild("Humanoid") then
			if Client.Character.Humanoid.health < 1 then
				Plr = nil
				IsTargetting = false
			end
       end
	
-- grabbed checks

    if getgenv().Eternal.Checks.Grabbed_Check == true and player and player.Character then
        if player.Character:FindFirstChild("GRABBING_CONSTRAINT") then
            return true
        end
end

-- crew checks

if getgenv().Eternal.Checks.Crew_check == true then
while true do
local newPlayer = game.Players.PlayerAdded:wait()
if player:IsInGroup(newPlayer.Group) then
table.insert(Ignored.Players, newPlayer)
end
end
end
f

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local SpeedGlitch = false
Mouse.KeyDown:Connect(function(Key)
    if Key == (Eternal.Macro.Key) and Eternal.Macro.Type == "IOIO" then
    SpeedGlitch = not SpeedGlitch
    if SpeedGlitch == true then
    repeat task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    until SpeedGlitch == false
end
end
end)
    Mouse.KeyDown:Connect(function(Key)
    if Key == (Eternal.Macro.Key) and Eternal.Macro.Type == "First Person" then
    SpeedGlitch = not SpeedGlitch
    if SpeedGlitch == true then
    repeat task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
    task.wait(getgenv().Eternal.Macro.Speed / 100)
    until SpeedGlitch == false
end
end
end)


if getgenv().Eternal.Resolver.Velocity_Recalculation then
local function get_calculated_velocity(obj)
    if nil_check(obj) and obj.Character and obj.Character:FindFirstChild(partlol) then
        local root = obj.Character.HumanoidRootPart
        local character = obj.Character 

        local currentPosition = root.Position
        local currentTime = tick() 

        wait(0.00350) 

        local newPosition = root.Position
        local newTime = tick()

        local distanceTraveled = (newPosition - currentPosition) 

        local timeInterval = newTime - currentTime
        local velocity = distanceTraveled / timeInterval
        currentPosition = newPosition
        currentTime = newTime
        return velocity
    end
end
      end
   