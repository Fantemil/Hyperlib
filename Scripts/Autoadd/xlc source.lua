getgenv().Private = { 
    Silent = {
        ["Enabled"]     = (true),    
        ["UseKeybind"] = (false), 
		["Keybind"]    = ("B"),          
        ["Part"]        = ("UpperTorso"), 
        ["UseAirPart"]  = (true),              
        ["AirPart"]     = ("UpperTorso"),       
        ["ClosestPart"] = (true),              
        
        ["HitChance"]   = (50), 
        
		["Prediction"]    = (true),  
        ["Ammount"] = (0.142), 
        
        ["AntiGroundShots"]        = (true), 
        ["AntiGroundValue"]        = (0.4),  
        ["WhenAntiGroundActivate"] = (-20),   
        
        ["WallCheck"] = (true), 
        
        ["CheckIf_KO"]        = (true),  
        ["CheckIf_TargetDeath"] = (true),   
	},
	SilentAutoPrediction = {
	    ["Enable"] = (false),         
	    ["120"]    = (0.165),     
        ["110"]    = (0.1455),   
	    ["100"]    = (0.156),     
        ["90"]     = (0.1402),    
	    ["80"]     = (0.143324),  
        ["70"]     = (0.134489),  
        ["60"]     = (0.124565), 
	    ["50"]     = (0.135),     
        ["40"]     = (0.1301123),  
	    ["30"]     = (0.1145),    
        ["20"]     = (0.113129),   
	    ["10"]     = (0.07),     
	},
    SilentVisuals = {
        ["Visible"] = (true), 
        ["Radius"]  = (9),   
        ["filled"] = (true),
        ["transparency"] = (0.1),
        ["color"] = Color3.fromRGB(1, 35, 255),
    },
    Cam = {
        ["Key"]         = ("X"),                
        ["Enabled"]     = (true),        
        ["Part"]        = ("Head"), 
        ["ClosestPart"] = (false),  
        
		["DisableTargetDeath"] = (true),  
		["DisableLocalDeath"]  = (true), 
        ["DisableOn_KO"]       = (true), 
        
        ["UseCircleRadius"]      = (true), 
        ["DisableOutSideCircle"] = (true), 
        
		["Shake"]   = (false), 
		["Value"] = (110),    

		["Prediction"]    = (true),  
        ["Ammount"] = (0.1), 
        
        ["WallCheck"]  = (true),  

        ["Smoothness"] = (0.007), 
    },
    CamVisuals = {
        ["Visible"] = (false), 
        ["Radius"]  = (100),  
        ["filled"] = (true),
        ["transparency"] = (0.8),
        ["color"] = Color3.fromRGB(1, 35, 255),  
    },
    Character = {
        Enabled = true,
        Keybind = "C",
        spinSpeed = 30,
        spinLimit = 1, --ammount of spins itll do before itll stop
    },
    Macro = {
        Enabled = true
    },
    GunFOV =  {
        ["Enabled"] =           (false),      
        ["Double-Barrel SG"] =  {["FOV"] = 18},
        ["Revolver"] =          {["FOV"] = 12.5},
        ["SMG"] =               {["FOV"] = 13}, 
        ["Shotgun"] =           {["FOV"] = 15}, 
        ["Rifle"] =             {["FOV"] = 18}, 
        ["TacticalShotgun"] =   {["FOV"] = 14.2},
        ["Silencer"] =          {["FOV"] = 17},
        ["AK47"] =              {["FOV"] = 10}, 
        ["AR"] =                {["FOV"] = 10}, 
	},
	Both = {
		["DetectDesync"]    = (true), 
		["DesyncDetection"] = (90),  
		
		["UsDetectDesyncKeybind"] = (true), 
		["DetectDesyncKey"]       = ("["), 
		
        ["DetectUnderGround"]     = (true), 
        ["UnderGroundDetection"]  = (-40),   
		
		["UseUnderGroundKeybind"] = (true), 
		["UnderGroundKey"]        = ("]"),  
		
		["SendNotification"]      = (true), 
	},
}

local Prey = nil
local Plr  = nil
local DetectedDesync      = false
local DetectedDesyncV2    = false
local DetectedUnderGround = false
local DetectedFreeFall    = false
local OldSilentAimPart    = getgenv().Private.Silent.Part

local Players, Client, Mouse, RS, Camera =
    game:GetService("Players"),
    game:GetService("Players").LocalPlayer,
    game:GetService("Players").LocalPlayer:GetMouse(),
    game:GetService("RunService"),
    game:GetService("Workspace").CurrentCamera

local Circle       = Drawing.new("Circle")
local CamCircle = Drawing.new("Circle")

Circle.Color           = Color3.new(1,1,1)
Circle.Thickness       = 1
CamCircle.Color     = Color3.new(1,1,1)
CamCircle.Thickness = 1

local UpdateFOV = function ()
    if (not Circle and not CamCircle) then
        return Circle and CamCircle
    end
    CamCircle.Visible  = getgenv().Private.CamVisuals.Visible
    CamCircle.Radius   = getgenv().Private.CamVisuals.Radius * 3
    CamCircle.Filled = getgenv().Private.CamVisuals.filled
    CamCircle.Color = getgenv().Private.CamVisuals.color
    CamCircle.Transparency = getgenv().Private.CamVisuals.transparency
    CamCircle.Position = Vector2.new(Mouse.X, Mouse.Y + (game:GetService("GuiService"):GetGuiInset().Y))
    
    Circle.Visible  = getgenv().Private.SilentVisuals.Visible
    Circle.Radius   = getgenv().Private.SilentVisuals.Radius * 3
    Circle.Filled = getgenv().Private.SilentVisuals.filled
    Circle.Color = getgenv().Private.SilentVisuals.color
    Circle.Transparency = getgenv().Private.SilentVisuals.transparency
    Circle.Position = Vector2.new(Mouse.X, Mouse.Y + (game:GetService("GuiService"):GetGuiInset().Y))
    return Circle and CamCircle
end

RS.Heartbeat:Connect(UpdateFOV)

local WTS = function (Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

local IsOnScreen = function (Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

local VisibleCheck = function (Part, PartDescendant)
    local Character = Client.Character or Client.CharacterAdded.Wait(Client.CharacterAdded)
    local Origin = Camera.CFrame.Position
    local _, OnScreen = Camera.WorldToViewportPoint(Camera, Part.Position)

    if (OnScreen) then
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastParams.FilterDescendantsInstances = {Character, Camera}

        local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, raycastParams)

        if (Result) then
            local PartHit = Result.Instance
            local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))
            
            return Visible
        end
    end
    return false
end

local FilterObjs = function (Object)
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
                if (Distance < ClosestDistance) then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
    return BodyPart
end

local CalculateChance = function(percentage)
    -- // Floor the percentage
    percentage = math.floor(percentage)

    -- // Get the chance
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    -- // Return
    return chance <= percentage / 100
end

local ClosestPlrFromMouse = function()
    local Target, Closest = nil, 1/0
    local HitChance = CalculateChance(getgenv().Private.Silent.HitChance)

    if not HitChance then
        Target = nil
        return Target
    end
    for _ ,v in pairs(Players:GetPlayers()) do
    	if getgenv().Private.Silent.WallCheck then
    		if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
                if Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position) and VisibleCheck(v.Character.HumanoidRootPart, v.Character) then
                	local GetClosPart = tostring(GetClosestBodyPart(v.Character))
            		local Position = Camera:WorldToScreenPoint(v.Character[GetClosPart].Position)
            		local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
        			if GetClosPart ~= nil then
            			if (Circle.Radius > Distance and Distance < Closest) then
            				Closest = Distance
            				Target = v
            			end
        			end
    			end
    		end
    	else
    		if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
                if Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position) then
                	local GetClosPart = tostring(GetClosestBodyPart(v.Character))
            		local Position = Camera:WorldToScreenPoint(v.Character[GetClosPart].Position)
            		local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
        			if GetClosPart ~= nil then
            			if (Circle.Radius > Distance and Distance < Closest) then
            				Closest = Distance
            				Target = v
            			end
        			end
    			end
    		end
    	end
    end
    if getgenv().Private.Silent.CheckIf_KO == true and Prey and Prey.Character then 
        local KOd = Prey.Character:WaitForChild("BodyEffects")["K.O"].Value
        local Grabbed = Prey.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
        if KOd or Grabbed then
            Target = nil
            return Target
        end
    end
	if getgenv().Private.Silent.CheckIf_TargetDeath == true and Prey and Prey.Character and Prey.Character:FindFirstChild("Humanoid") then
		if Prey.Character.Humanoid.health < 4 then
            Target = nil
            return Target
		end
	end
    return Target
end


local ClosestPlrFromMouse2 = function()
    local Target, Closest = nil, 1/0
    
    for _ ,v in pairs(Players:GetPlayers()) do
    	if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
        	if getgenv().Private.Cam.WallCheck then
        		local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
        		local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                
        		if (Distance < Closest and OnScreen) and VisibleCheck(v.Character.HumanoidRootPart, v.Character) then
        			Closest = Distance
        			Target = v
        		end
                elseif getgenv().Private.Cam.UseCircleRadius then
            		local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            		local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (CamCircle.Radius > Distance and Distance < Closest and OnScreen) and VisibleCheck(v.Character.HumanoidRootPart, v.Character) then
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

Mouse.KeyDown:Connect(function(Key)
    local Keybind = getgenv().Private.Cam.Key:lower()
    if (Key == Keybind) then
        if getgenv().Private.Cam.Enabled == true then
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
end)

Mouse.KeyDown:Connect(function(Key)
    local Keybind = getgenv().Private.Silent.Keybind:lower()
    if (Key == Keybind) and getgenv().Private.Silent.UseKeybind == true then
            if getgenv().Private.Silent.Enabled == true then
				getgenv().Private.Silent.Enabled = false
                if getgenv().Private.Both.SendNotification then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Private",
                            Text = "Disabled Silent Aim",
                            Icon = "http://www.roblox.com/asset/?id=116879548",
                            Duration = 5
                        }
                    )
                end
            else
				getgenv().Private.Silent.Enabled = true
                if getgenv().Private.Both.SendNotification then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Private",
                            Text = "Enabled Silent Aim",
                            Icon = "http://www.roblox.com/asset/?id=116879548",
                            Duration = 5
                        }
                    )
                end
            end
        end
    end
)


Mouse.KeyDown:Connect(function(Key)
    local Keybind = getgenv().Private.Both.UnderGroundKey:lower()
    if (Key == Keybind) and getgenv().Private.Both.UseUnderGroundKeybind == true then
            if getgenv().Private.Both.DetectUnderGround == true then
				getgenv().Private.Both.DetectUnderGround = false
                if getgenv().Private.Both.SendNotification then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Private",
                            Text = "Disabled UnderGround Resolver",
                            Icon = "http://www.roblox.com/asset/?id=116879548",
                            Duration = 5
                        }
                    )
                end
            else
				getgenv().Private.Both.DetectUnderGround = true
                if getgenv().Private.Both.SendNotification then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Private",
                            Text = "Enabled UnderGround Resolver",
                            Icon = "http://www.roblox.com/asset/?id=116879548",
                            Duration = 5
                        }
                    )
                end
            end
        end
    end
)

Mouse.KeyDown:Connect(function(Key)
    local Keybind = getgenv().Private.Both.DetectDesyncKey:lower()
    if (Key == Keybind) and getgenv().Private.Both.UsDetectDesyncKeybind == true then
            if getgenv().Private.Both.DetectDesync == true then
				getgenv().Private.Both.DetectDesync = false
                if getgenv().Private.Both.SendNotification then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Private",
                            Text = "Disabled Desync Resolver",
                            Icon = "http://www.roblox.com/asset/?id=116879548",
                            Duration = 5
                        }
                    )
                end
            else
				getgenv().Private.Both.DetectDesync = true
                if getgenv().Private.Both.SendNotification then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Private",
                            Text = "Enabled Desync Resolver",
                            Icon = "http://www.roblox.com/asset/?id=116879548",
                            Duration = 5
                        }
                    )
                end
            end
        end
    end
)

local grmt = getrawmetatable(game)
local backupindex = grmt.__index
setreadonly(grmt, false)

grmt.__index = newcclosure(function(self, v)
    if (getgenv().Private.Silent.Enabled and Mouse and tostring(v) == "Hit") then
        if Prey and Prey.Character then
    		if DetectedDesync and game.Players[tostring(Prey)].Character:FindFirstChild("Humanoid") then
    		    local PreyMoveDirection = (game.Players[tostring(Prey)].Character.Humanoid.MoveDirection * 19)
    			local endpoint = game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].CFrame + (
    				PreyMoveDirection * getgenv().Private.Silent.Ammount
    			)
    			return (tostring(v) == "Hit" and endpoint)
    		elseif DetectedUnderGround then
    			local endpoint = game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].CFrame + (
    				(
    				    Vector3.new(
        				    game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].Velocity.X, 
        				    0, 
        				    game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].Velocity.Z
        				) * getgenv().Private.Silent.Ammount
    				)
    			)
    			return (tostring(v) == "Hit" and endpoint)
    		elseif DetectedFreeFall then
    			local endpoint = game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].CFrame + (
    				(
    				    Vector3.new(
        				    game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].Velocity.X, 
        				   (game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].Velocity.Y * getgenv().Private.Silent.AntiGroundValue), 
        				    game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].Velocity.Z
    				    ) * getgenv().Private.Silent.Ammount
    				)
    			)
    		elseif getgenv().Private.Silent.Prediction then
    			local endpoint = game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].CFrame + (
    				game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].Velocity * getgenv().Private.Silent.Ammount
    			)
    			return (tostring(v) == "Hit" and endpoint)
    		else
    			local endpoint = game.Players[tostring(Prey)].Character[getgenv().Private.Silent.Part].CFrame
    			return (tostring(v) == "Hit" and endpoint)
    		end
        end
    end
    return backupindex(self, v)
end)

task.spawn(function ()
    while task.wait() do
    	if getgenv().Private.Silent.Enabled then
            Prey = ClosestPlrFromMouse()
    	end
        if Plr then
            if getgenv().Private.Cam.Enabled and (Plr.Character) and getgenv().Private.Cam.ClosestPart then
                getgenv().Private.Cam.Part = tostring(GetClosestBodyPart(Plr.Character))
            end
        end
        if Prey then
            if getgenv().Private.Silent.Enabled and (Prey.Character) and getgenv().Private.Silent.ClosestPart then
                getgenv().Private.Silent.Part = tostring(GetClosestBodyPart(Prey.Character))
            end
        end
    	if getgenv().Private.Silent.Enabled then
    		if getgenv().Private.SilentAutoPrediction.Enable then
                local ping = Client:GetNetworkPing() * 2000
                if ping > 120 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["120"]
                elseif ping < 110 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["110"]
                elseif ping < 100 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["100"]
                elseif ping < 90 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["90"]
                elseif ping < 80 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["80"]
                elseif ping < 70 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["70"]
                elseif ping < 60 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["60"]
                elseif ping < 50 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["50"]
                elseif ping < 40 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["40"]
                elseif ping < 30 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["30"]
                elseif ping < 20 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["20"]
                elseif ping < 10 then
                    getgenv().Private.Silent.Ammount = getgenv().Private.SilentAutoPrediction["10"]
                end
            end
    	end
    end
end)

RS.Heartbeat:Connect(function()
	if getgenv().Private.Silent.Enabled then
	    if Prey then
    	    if Prey.Character then
    	        if Prey.Character:FindFirstChild(getgenv().Private.Silent.Part)then
                    if getgenv().Private.Both.DetectDesync == true and Prey.Character:FindFirstChild("HumanoidRootPart") and Prey.Character:FindFirstChild("Humanoid") then
                        if Prey.Character.HumanoidRootPart.Velocity.magnitude > getgenv().Private.Both.DesyncDetection or (Prey.Character.HumanoidRootPart.Velocity.magnitude < 1 and Prey.Character.Humanoid.MoveDirection.magnitude > 0.1) then            
                            DetectedDesync = true
                        else
                            DetectedDesync = false
                        end
                    else
                        if DetectedDesync ~= false then
                            DetectedDesync = false
                        end
                    end
                    if getgenv().Private.Silent.AntiGroundShots == true and Prey.Character:FindFirstChild("HumanoidRootPart") then
                        if Prey.Character.HumanoidRootPart.Velocity.Y < getgenv().Private.Silent.WhenAntiGroundActivate then
                            DetectedFreeFall = true
                        else
                            if DetectedFreeFall ~= false then
                                DetectedFreeFall = false
                            end
                        end
                    end
                    if getgenv().Private.Both.DetectUnderGround == true and Prey.Character:FindFirstChild("HumanoidRootPart") and Prey.Character.HumanoidRootPart.Velocity.Y < getgenv().Private.Both.UnderGroundDetection then            
                        DetectedUnderGround = true
                    else
                        if DetectedUnderGround ~= false then
                            DetectedUnderGround = false
                        end
                    end
                end
                if getgenv().Private.Silent.UseAirPart == true and Prey.Character:FindFirstChild("Humanoid") then
                    if Prey.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                        getgenv().Private.Silent.Part = getgenv().Private.Silent.AirPart
                    else
                        getgenv().Private.Silent.Part = OldSilentAimPart
                    end
                end
    	    end
	    end
	end
    if getgenv().Private.Cam.Enabled == true then
        if Plr then
            if Plr.Character then
                if Plr.Character:FindFirstChild(getgenv().Private.Cam.Part) then
                    if getgenv().Private.Both.DetectDesync == true and Plr.Character:FindFirstChild("HumanoidRootPart") and Plr.Character:FindFirstChild("Humanoid") then
                        if Plr.Character.HumanoidRootPart.Velocity.magnitude > getgenv().Private.Both.DesyncDetection or (Plr.Character.HumanoidRootPart.Velocity.magnitude < 1 and Plr.Character.Humanoid.MoveDirection.magnitude > 0.1)then
                            DetectedDesyncV2 = true
                        else
                            DetectedDesyncV2 = false
                        end
                    else
                        if DetectedDesyncV2 ~= false then
                            DetectedDesyncV2 = false
                        end
                    end
                    if getgenv().Private.Both.DetectUnderGround == true and Plr.Character:FindFirstChild("HumanoidRootPart") and Plr.Character.HumanoidRootPart.Velocity.Y < getgenv().Private.Both.UnderGroundDetection then
                        DetectedUnderGround = true
                    else
                        if DetectedUnderGround ~= false then
                            DetectedUnderGround = false
                        end
                    end
                end
            end
        end
    end
end)

RS.RenderStepped:Connect(function()
    if getgenv().Private.Cam.Enabled == true then
		if getgenv().Private.Cam.DisableTargetDeath == true and Plr and Plr.Character and Plr.Character:FindFirstChild("Humanoid") then
			if Plr.Character.Humanoid.health < 4 then
				Plr = nil
				IsTargetting = false
			end
		end
		if getgenv().Private.Cam.DisableLocalDeath == true and Plr and Plr.Character and Plr.Character:FindFirstChild("Humanoid") and Client and Client.Character and Client.Character:FindFirstChild("Humanoid") then
			if Client.Character.Humanoid.health < 4 then
				Plr = nil
				IsTargetting = false
			end
		end
        if getgenv().Private.Cam.DisableOn_KO == true and Plr and Plr.Character then 
            local KOd = Plr.Character:WaitForChild("BodyEffects")["K.O"].Value
            local Grabbed = Plr.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
            if KOd or Grabbed then
				Plr = nil
				IsTargetting = false
            end
        end
        if getgenv().Private.Cam.DisableOutSideCircle == true and Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
            if
            CamCircle.Radius <
                (Vector2.new(
                    Camera:WorldToScreenPoint(Plr.Character.HumanoidRootPart.Position).X,
                    Camera:WorldToScreenPoint(Plr.Character.HumanoidRootPart.Position).Y
                ) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
             then
                Plr = nil
                IsTargetting = false
            end
        end
        if DetectedDesyncV2 and Plr and Plr.Character and Plr.Character:FindFirstChild("Humanoid") and Plr.Character:FindFirstChild(getgenv().Private.Cam.Part) and getgenv().Private.Cam.Prediction == true then
    		local PlrMoveDirection = (Plr.Character.Humanoid.MoveDirection * 19)
    		local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Private.Cam.Part].Position + (PlrMoveDirection * getgenv().Private.Cam.Ammount))
    		Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Private.Cam.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        elseif DetectedUnderGround then
    		local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Private.Cam.Part].Position + (Vector3.new(Plr.Character[getgenv().Private.Cam.Part].Velocity.X, 0, Plr.Character[getgenv().Private.Cam.Part].Velocity.Z) * getgenv().Private.Cam.Ammount))
    		Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Private.Cam.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		elseif getgenv().Private.Cam.Prediction and Plr and Plr.Character and Plr.Character:FindFirstChild(getgenv().Private.Cam.Part) then
			if getgenv().Private.Cam.Shake then
				local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Private.Cam.Part].Position + Plr.Character[getgenv().Private.Cam.Part].Velocity * getgenv().Private.Cam.Ammount +
				Vector3.new(
					math.random(-getgenv().Private.Cam.Value, getgenv().Private.Cam.Value),
					math.random(-getgenv().Private.Cam.Value, getgenv().Private.Cam.Value),
					math.random(-getgenv().Private.Cam.Value, getgenv().Private.Cam.Value)
				) * 0.1)
				Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Private.Cam.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			else
    			local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Private.Cam.Part].Position + Plr.Character[getgenv().Private.Cam.Part].Velocity * getgenv().Private.Cam.Ammount)
    			Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Private.Cam.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
			end
		elseif getgenv().Private.Cam.Prediction == false and Plr and Plr.Character and Plr.Character:FindFirstChild(getgenv().Private.Cam.Part) then
			if getgenv().Private.Cam.Shake then
				local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Private.Cam.Part].Position +
				Vector3.new(
					math.random(-getgenv().Private.Cam.Value, getgenv().Private.Cam.Value),
					math.random(-getgenv().Private.Cam.Value, getgenv().Private.Cam.Value),
					math.random(-getgenv().Private.Cam.Value, getgenv().Private.Cam.Value)
				) * 0.1)
				Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Private.Cam.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		    else
    			local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().Private.Cam.Part].Position)
    			Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().Private.Cam.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		    end
		end
	end
end)

local Script = {Functions = {}}
    Script.Functions.getToolName = function(name)
        local split = string.split(string.split(name, "[")[2], "]")[1]
        return split
    end
    Script.Functions.getEquippedWeaponName = function()
        if (Client.Character) and Client.Character:FindFirstChildWhichIsA("Tool") then
           local Tool =  Client.Character:FindFirstChildWhichIsA("Tool")
           if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
              return Script.Functions.getToolName(Tool.Name)
           end
        end
        return nil
    end
    RS.RenderStepped:Connect(function()
    if Script.Functions.getEquippedWeaponName() ~= nil then
        local WeaponSettings = getgenv().Private.GunFOV[Script.Functions.getEquippedWeaponName()]
        if WeaponSettings ~= nil and getgenv().Private.GunFOV.Enabled == true then
            getgenv().Private.SilentVisuals.Radius = WeaponSettings.FOV
        else
            getgenv().Private.SilentVisuals.Radius = getgenv().Private.SilentVisuals.Radius
        end
    end
end)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local settings = getgenv().Private.Character or {}
local spinSpeed = settings.spinSpeed or 20 -- adjust this to change the speed of the spin
local isSpinning = false
local spinCount = 0
local spinLimit = settings.spinLimit or 1 -- adjust this to change the number of spins before stopping
local isAttacking = false

-- define function to handle spinning
local function spin()
    isSpinning = not isSpinning -- toggle spin state
    while isSpinning do
        spinCount = spinCount + 1
        humanoid.Torso.CFrame = humanoid.Torso.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
        camera.CFrame = camera.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
        if spinCount >= 360 / spinSpeed * spinLimit then -- check if full spin has been completed
            spinCount = 0 -- reset spin count
            isSpinning = false -- stop spinning
        end
        wait()
    end
end

-- bind function to keypress
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode[settings.Keybind] then
        if not isAttacking then -- check if player is currently attacking
            spin()
        end
    end
end)

-- define function to handle attack events
local function onAttack()
    isAttacking = true
end

local function onAttackEnded()
    isAttacking = false
end

-- connect attack events to functions
humanoid.Attacking:Connect(onAttack)
humanoid.AttackEnded:Connect(onAttackEnded)

-- handle shiftlock and first-person mode
if camera.CameraType == Enum.CameraType.Scriptable then -- shiftlock
    camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
        if camera.CameraSubject == humanoid then
            camera.CameraType = Enum.CameraType.Custom
        end
    end)
end

if camera.CameraSubject:IsA("BasePart") and humanoid.RootPart == camera.CameraSubject then -- first person
    humanoid.ChildAdded:Connect(function(child)
        if child:IsA("Accessory") then
            child:Destroy()
        end
    end)
end

if not settings.Character.Enabled then return end -- check if the script is enabled


if getgenv().Private.Macro.Enabled == true then
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local Enabled = false
    Mouse.KeyDown:Connect(
    function(Key)
        if Key == "q" then --input key
            Enabled = not Enabled
            if Enabled == true then
                repeat
                    game:GetService("RunService").Heartbeat:wait()
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0.1", "0.1", true, game) -- change these numbers for higher delay
                    game:GetService("RunService").Heartbeat:wait()
                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0.1", "0.1", false, game)
                    game:GetService("RunService").Heartbeat:wait()
                until Enabled == false
            end
        end
    end
)
end

