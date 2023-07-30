getgenv().DNS = {
   General = {
       Notifications = true,
       FOVMode = "PredictionPoint"
   },
   Silent = {
       Main = {
           Enabled = true,
           Mode = "Target",
           Toggle = "C",
           Prediction = 0.12471,
           Parts = {"Head","LowerTorso","UpperTorso"}
       },
       FOV = {
           ShowFOV = false,
           Radius = 70,
           Color = Color3.fromRGB(0, 71, 171),
           Filled = false,
           Transparency = 0.8
       }
   },
   Camlock = {
       Main = {
           Enabled = true,
           Key = "C",
           UnlockKey = "Z",
           SmoothLock = true,
           Smoothness = 0.067,
           PredictMovement = false,
           Prediction = 0.51,
           Shake = true,
           ShakeValue = 25,
           Parts = {"Head"}
       },
       FOV = {
           UseFOV = true,
           ShowFOV = false,
           Radius = 120,
           Color = Color3.fromRGB(0, 71, 171),
           Filled = false,
           Transparency = 0.4
       }
   },
   Tracer = {
       Enabled = false,
       Color = Color3.fromRGB(137, 207, 240),
       Transparency = 0.4,
       Visible = false
   },
   AutoPrediction = { -- the numbers are pings ( this is for silent + Current sets not recommended )
       Enabled = true,
       ping20_30 = 0.12588,
       ping30_40 = 0.11911,
       ping40_50 = 0.12471,
       ping50_60 = 0.12766,
       ping60_70 = 0.12731,
       ping70_80 = 0.12951,
       ping80_90 = 0.13181,
       ping90_100 = 0.138,
       ping100_110 = 0.146,
       ping110_120 = 0.1367,
       ping120_130 = 0.1401,
       ping130_140 = 0.1437,
       ping140_150 = 0.153,
       ping150_160 = 0.1514,
       ping160_170 = 0.1663,
       ping170_180 = 0.1672,
       ping180_190 = 0.1848,
       ping190_200 = 0.1865,
   }
}

local function getnamecall()
   if game.PlaceId == 2788229376 then
       return "UpdateMousePos"
   elseif game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then
       return "MousePos"
   elseif game.PlaceId == 9825515356 then
       return "GetMousePos"
   end
end

local namecalltype = getnamecall()

function MainEventLocate()
   for _,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
       if v.Name == "MainEvent" then
           return v
       end
   end
end

local mainevent = MainEventLocate()

-- // Shorthand
local uwuDNS = getgenv().DNS
local uwuMain = uwuDNS.General
local uwuCamMain = uwuDNS.Camlock.Main
local uwuCamFOV = uwuDNS.Camlock.FOV
local uwuSilentMain = uwuDNS.Silent.Main
local uwuSilentFOV = uwuDNS.Silent.FOV
local uwuTrace = uwuDNS.Tracer
local uwuAutoPred = uwuDNS.AutoPrediction

-- // Optimization
local vect3 = Vector3.new
local vect2 = Vector2.new
local cnew = CFrame.new

-- // Libraries
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

-- // Services
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local plrs = game:GetService("Players")
local ws = game:GetService("Workspace")

-- // Script Variables
local CToggle = false
local lplr = plrs.LocalPlayer
local CTarget = nil
local CPart = nil
local SToggle = false
local STarget = nil
local SPart = nil

-- // Client Variables
local m = lplr:GetMouse()
local c = ws.CurrentCamera

-- // Notification Function
local function SendNotification(text)
   Notification:Notify(
       {Title = "DNS Rewrite", Description = "pl#0001 - "..text},
       {OutlineColor = Color3.fromRGB(50,76,110),Time = 2, Type = "image"},
       {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(50,76,110)}
   )
end 

-- // Call notification function
if uwuMain.Notifications then
   SendNotification("pl#0001 - injecting DNS Rewrite")
   wait(3.5)
   SendNotification("pl#0001 - finished injecting DNS Rewrite")
end

-- // Camlock FOV
local CamlockFOV = Drawing.new("Circle")
CamlockFOV.Visible = uwuCamFOV.ShowFOV
CamlockFOV.Thickness = 1
CamlockFOV.NumSides = 30
CamlockFOV.Radius = uwuCamFOV.Radius * 3
CamlockFOV.Color = uwuCamFOV.Color
CamlockFOV.Filled = uwuCamFOV.Filled
CamlockFOV.Transparency = uwuCamFOV.Transparency

--Silent FOV
local SilentFOV = Drawing.new("Circle")
SilentFOV.Visible = uwuSilentFOV.ShowFOV
SilentFOV.Thickness = 1
SilentFOV.NumSides = 30
SilentFOV.Radius = uwuSilentFOV.Radius * 3
SilentFOV.Color = uwuSilentFOV.Color
SilentFOV.Filled = uwuSilentFOV.Filled
SilentFOV.Transparency = uwuSilentFOV.Transparency

--Tracer
local Line = Drawing.new("Line")
Line.Color = uwuTrace.Color
Line.Transparency = uwuTrace.Transparency
Line.Thickness = 1
Line.Visible = uwuTrace.Visible

-- // Script Functions
local function uwuFindTawget() -- // Find target
   local d, t = math.huge, nil
   for _,v in pairs (plrs:GetPlayers()) do
       local _,os = c:WorldToViewportPoint(v.Character.PrimaryPart.Position)
       if v ~= lplr and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and os then
           local pos = c:WorldToViewportPoint(v.Character.PrimaryPart.Position)
           local magnitude = (vect2(pos.X, pos.Y) - vect2(m.X, m.Y + 36)).magnitude
           if magnitude < d then
               t = v
               d = magnitude
           end
       end
   end
   return t
end

local function uwuFindPart() -- // Find aimpart
   local d, p = math.huge, nil
   if CTarget then
       for _,v in pairs(CTarget.Character:GetChildren()) do
           if table.find(uwuCamMain.Parts, v.Name) then
               local pos = c:WorldToViewportPoint(v.Position)
               local Magn = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
               if Magn < d then
                   d = Magn
                   p = v
               end
           end
       end
       return p.Name
   end
end

local function uwuFindSilentPart() -- // Find aimpart
   local d, p = math.huge, nil
   if CTarget then
       for _,v in pairs(CTarget.Character:GetChildren()) do
           if table.find(uwuSilentMain.Parts, v.Name) then
               local pos = c:WorldToViewportPoint(v.Position)
               local Magn = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
               if Magn < d then
                   d = Magn
                   p = v
               end
           end
       end
       return p.Name
   end
end

local function uwuCheckAnti(targ) -- // Anti-aim detection
   if (targ.Character.HumanoidRootPart.Velocity.Y < -5 and targ.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall) or targ.Character.HumanoidRootPart.Velocity.Y < -50 then
       return true
   elseif targ and (targ.Character.HumanoidRootPart.Velocity.X > 35 or targ.Character.HumanoidRootPart.Velocity.X < -35) then
       return true
   elseif targ and targ.Character.HumanoidRootPart.Velocity.Y > 60 then
       return true
   elseif targ and (targ.Character.HumanoidRootPart.Velocity.Z > 35 or targ.Character.HumanoidRootPart.Velocity.Z < -35) then
       return true
   else
       return false
   end
end

local function InSilentRadiuwus(target, section, fov) -- // Check if player is in the fov
   if target then
       local pos = nil
       if not uwuCheckAnti(target) then
           pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + target.Character.PrimaryPart.Velocity * section.Prediction)
       else
           pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + ((target.Character.Humanoid.MoveDirection * target.Character.Humanoid.WalkSpeed) * section.Prediction))
       end
       local mag = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
       if mag < fov * 3 then
           return true
       else
           return false
       end
   end
end

local function Silent()
   if STarget then
       if SPart and InSilentRadiuwus(STarget, uwuSilentMain, SilentFOV.Radius) then
           if not uwuCheckAnti(STarget) then
               mainevent:FireServer(namecalltype, STarget.Character[SPart].Position + (STarget.Character[SPart].Velocity * uwuSilentMain.Prediction))
           else
               mainevent:FireServer(namecalltype, STarget.Character[SPart].Position + ((STarget.Character.Humanoid.MoveDirection * STarget.Character.Humanoid.WalkSpeed) * uwuSilentMain.Prediction))
           end
       end
   end
end


local function InRadiuwus(target, section, fov) -- // Check if player is in the fov
   if target then
       if uwuCamFOV.UseFOV then
           local pos = nil
           if not uwuCheckAnti(target) then
               pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + target.Character.PrimaryPart.Velocity * section.Prediction)
           else
               pos = c:WorldToViewportPoint(target.Character.PrimaryPart.Position + ((target.Character.Humanoid.MoveDirection * target.Character.Humanoid.WalkSpeed) * section.Prediction))
           end
           local mag = (vect2(m.X, m.Y + 36) - vect2(pos.X, pos.Y)).Magnitude
           if mag < fov * 3 then
               return true
           else
               return false
           end
       else
           return true
       end
   end
end

uis.InputBegan:Connect(function(k,t)
   if not t then
       if k.KeyCode == Enum.KeyCode[uwuCamMain.Key:upper()] then
           CToggle = true
           CTarget = uwuFindTawget()
           if uwuMain.Notifications then
               SendNotification("locked onto "..CTarget.Name)
           end
       elseif k.KeyCode == Enum.KeyCode[uwuCamMain.UnlockKey:upper()] then
           if CToggle then
               CToggle = false
               CTarget = nil
               if uwuMain.Notifications then
                   SendNotification("unlocked")
               end
           end
       elseif k.KeyCode == Enum.KeyCode[uwuSilentMain.Toggle:upper()] and uwuSilentMain == "Regular" then
           if SToggle then
               SToggle = false
               if uwuMain.Notifications then
                   SendNotification("silent disabled")
               end
           else
               SToggle = true
               if uwuMain.Notifications then
                   SendNotification("silent enabled")
               end
           end
       end
   end
end)

rs.RenderStepped:Connect(function()
   if CTarget then
       CPart = uwuFindPart()
       local pos = nil
       local cum = nil
       if CTarget.Character.BodyEffects["K.O"].Value == true or lplr.Character.BodyEffects["K.O"].Value == true then
           CToggle = false
           CTarget = nil
       else
           if uwuCamMain.Shake then
               if uwuCamMain.PredictMovement then
                   if not uwuCheckAnti(CTarget) then
                       cum = CTarget.Character[CPart].Position + CTarget.Character[CPart].Velocity * uwuCamMain.Prediction + (vect3(
                           math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                           math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                           math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue)
                       ) * 0.1)
                   else
                       cum = CTarget.Character[CPart].Position + ((CTarget.Character.Humanoid.MoveDirection * CTarget.Character.Humanoid.WalkSpeed) * uwuCamMain.Prediction + (vect3(
                           math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                           math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                           math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue)
                       ) * 0.1))
                   end
                   pos = c:WorldToViewportPoint(cum)
               else
                   cum = CTarget.Character[CPart].Position + (vect3(
                       math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                       math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue),
                       math.random(-uwuCamMain.ShakeValue, uwuCamMain.ShakeValue)
                   ) * 0.1)
                   pos = c:WorldToViewportPoint(cum)
               end
           else
               if uwuCamMain.PredictMovement then
                   if not uwuCheckAnti(CTarget) then
                       cum = CTarget.Character[CPart].Position + CTarget.Character[CPart].Velocity * uwuCamMain.Prediction
                   else
                       cum = CTarget.Character[CPart].Position + ((CTarget.Character.Humanoid.MoveDirection * CTarget.Character.Humanoid.WalkSpeed) * uwuCamMain.Prediction)
                   end
                   pos = c:WorldToViewportPoint(cum)
               else
                   cum = CTarget.Character[CPart].Position
                   pos = c:WorldToViewportPoint(cum)
               end
           end
           if InRadiuwus(CTarget, uwuCamMain, CamlockFOV.Radius) then
               local main = nil
               if uwuCamMain.SmoothLock then
                   main = cnew(c.CFrame.p, cum)
                   c.CFrame = c.CFrame:Lerp(main, uwuCamMain.Smoothness, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
               else
                   c.CFrame = cnew(c.CFrame.p, cum)
               end
           end
           if uwuMain.FOVMode == "Mouse" then
               if uwuCamFOV.ShowFOV then
                   CamlockFOV.Position = vect2(m.X, m.Y + 36)
               end
               if uwuSilentFOV.ShowFOV then
                   SilentFOV.Position = vect2(m.X, m.Y + 36)
               end
           elseif uwuMain.FOVMode == "PredictionPoint" then
               if uwuCamFOV.ShowFOV then
                   CamlockFOV.Position = vect2(pos.X, pos.Y)
               end
               if uwuSilentFOV.ShowFOV then
                   SilentFOV.Position = vect2(pos.X, pos.Y)
               end
           end
           if uwuTrace.Enabled then
               Line.Visible = true
               Line.From = vect2(m.X, m.Y + 36)
               Line.To = vect2(pos.X, pos.Y)
           end
       end
   else
       CamlockFOV.Position = vect2(m.X, m.Y + 36)
       SilentFOV.Position = vect2(m.X, m.Y + 36)
       Line.Visible = false
   end
end)

lplr.Character.ChildAdded:Connect(function(tool)
   if tool:IsA("Tool") then
       tool.Activated:connect(function()
           if uwuSilentMain.Mode == "Regular" then
               if SToggle then
                   STarget = uwuFindTawget()
                   if STarget then
                       SPart = uwuFindSilentPart()
                       if SPart then
                           Silent()
                       end
                   end
               end
           elseif uwuSilentMain.Mode == "Target" then
               if CToggle then
                   STarget = CTarget
                   if STarget then
                       SPart = uwuFindSilentPart()
                       if SPart then
                           Silent()
                       end
                   end
               end
           end
       end)
   end
end)

lplr.CharacterAdded:Connect(function(char)
   char.ChildAdded:Connect(function(tool)
       tool.Activated:connect(function()
           if uwuSilentMain.Mode == "Regular" then
               if SToggle then
                   STarget = uwuFindTawget()
                   if STarget then
                       SPart = uwuFindSilentPart()
                       if SPart then
                           Silent()
                       end
                   end
               end
           elseif uwuSilentMain.Mode == "Target" then
               if CToggle then
                   STarget = CTarget
                   if STarget then
                       SPart = uwuFindSilentPart()
                       if SPart then
                           Silent()
                       end
                   end
               end
           end
       end)
   end)
end)

--Auto Prediction
coroutine.resume(coroutine.create(function()
   while true do
       if uwuAutoPred.Enabled then
           local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
           if ping <= 40 then
               uwuSilentMain.Prediction = uwuAutoPred.ping30_40
           elseif ping <= 50 then
               uwuSilentMain.Prediction = uwuAutoPred.ping40_50
           elseif ping <= 60 then
               uwuSilentMain.Prediction = uwuAutoPred.ping50_60
           elseif ping <= 70 then
               uwuSilentMain.Prediction = uwuAutoPred.ping60_70
           elseif ping <= 80 then
               uwuSilentMain.Prediction = uwuAutoPred.ping70_80
           elseif ping <= 90 then
               uwuSilentMain.Prediction = uwuAutoPred.ping80_90
           elseif ping <= 100 then
               uwuSilentMain.Prediction = uwuAutoPred.ping90_100
           elseif ping <= 110 then
               uwuSilentMain.Prediction = uwuAutoPred.ping100_110
           elseif ping <= 120 then
               uwuSilentMain.Prediction = uwuAutoPred.ping110_120
           elseif ping <= 130 then
               uwuSilentMain.Prediction = uwuAutoPred.ping120_130
           elseif ping <= 140 then
               uwuSilentMain.Prediction = uwuAutoPred.ping130_140
           elseif ping <= 150 then
               uwuSilentMain.Prediction = uwuAutoPred.ping140_150
           elseif ping <= 160 then
               uwuSilentMain.Prediction = uwuAutoPred.ping150_160
           elseif ping <= 170 then
               uwuSilentMain.Prediction = uwuAutoPred.ping160_170
           elseif ping <= 180 then
               uwuSilentMain.Prediction = uwuAutoPred.ping170_180
           elseif ping <= 190 then
               uwuSilentMain.Prediction = uwuAutoPred.ping180_190
           elseif ping <= 200 then
               uwuSilentMain.Prediction = uwuAutoPred.ping190_200
           end
           task.wait(0.7)
       end
   end
end))