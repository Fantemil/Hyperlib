local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait
local plrs = game:GetService("Players")
local Lplr = plrs.LocalPlayer.Name
local plr = plrs.LocalPlayer
local UI = library:CreateWindow({Name = "Big Paintball",Themeable = {Info = "made by tupsutumppu#3145"}, DefaultTheme = "{\"__Designer.Colors.main\":\"FB00FF\",\"__Designer.Colors.section\":\"FB00FF\",\"__Designer.Background.ImageAssetID\":\"rbxassetid://6071575925\",\"__Designer.Background.ImageColor\":\"000000\",\"__Designer.Colors.tabText\":\"1BFF00\",\"__Designer.Colors.otherElementText\":\"FFFFFF\",\"__Designer.Colors.elementText\":\"B0B0B0\",\"__Designer.Background.UseBackgroundImage\":\"false\"}"})
local RS = game:GetService("RunService")
local camera = game.Workspace.CurrentCamera
local C_FOV = 250
local main = UI:CreateTab({Name = "Main"})
local Settings = {BOXESPENABLED = false,BOXESPCOLOR = Color3.fromRGB(255,255,255),BOXESPTHICKNESS = 1,MOVEMENT = false,WalkSpeed = 70,JumpPower = 70, SILENTAIM = false, SHOWFOV = false,}
local boxes = {}
local esp = main:CreateSection({Name = "Box ESP",Side = "Right"})
local movement = main:CreateSection({Name = "Movement",Side = "Right"})
local silentaim = main:CreateSection({Name = "Silent Aim",Side = "Left"})
local gunmods = main:CreateSection({Name = "Gun Mods",Side = "Left"})

--functions
--Just dont look at these or you will get eye cancer...
local function gunMods()
   local scripts = game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Guns
   for i,v in pairs(scripts:GetChildren()) do
       pcall(function()
           local script_i = tostring(i)
           require(v)[script_i].firerate = 0
           require(v)[script_i].velocity = 9999999
           require(v)[script_i].automatic = true
           require(v)[script_i].additionalSpeed = 10
           require(v)[script_i].damage = math.huge
       end)
   end
   local ch = {"Ammo", "ammo", "Damage", "damage", "Firerate", "firerate", "FireRate", "fireRate"}
   for i,v in pairs(getgc(true)) do
       pcall(function()
           for f = 1, 8 do
               if type(v) == "table" and rawget(v, ch[f]) then
                   v.burstDelay = 0
                   v.shotrate = 0.02
               end
           end
       end)
   end
end
local function newLine()
   local v = Drawing.new("Line")
   v.Color = Settings.BOXESPCOLOR
   v.From = Vector2.new(1,1)
   v.To = Vector2.new(0,0)
   v.Visible = true
   v.Thickness = Settings.BOXESPTHICKNESS
   return v
end
local function newBox(player)
   local box = {
       ["Player"] = player, newLine(), newLine(), newLine(), newLine()
   }
   table.insert(boxes,box)
end
local function shapeBox(box)
   local player = box["Player"]
   local TL = camera:WorldToViewportPoint(player.HumanoidRootPart.CFrame * CFrame.new(-3,3,0).p)
   local TR = camera:WorldToViewportPoint(player.HumanoidRootPart.CFrame * CFrame.new(3,3,0).p)
   local BL = camera:WorldToViewportPoint(player.HumanoidRootPart.CFrame * CFrame.new(-3,-3,0).p)
   local BR = camera:WorldToViewportPoint(player.HumanoidRootPart.CFrame * CFrame.new(3,-3,0).p)
   box[1].From = Vector2.new(TL.X, TL.Y)
   box[1].To = Vector2.new(BL.X, BL.Y)
   -- Top line
   box[2].To = Vector2.new(TR.X, TR.Y)
   box[2].From = Vector2.new(TL.X, TL.Y)
   -- Right line
   box[3].To = Vector2.new(BR.X, BR.Y)
   box[3].From = Vector2.new(TR.X, TR.Y)
   -- Bottom line
   box[4].To = Vector2.new(BR.X, BR.Y)
   box[4].From = Vector2.new(BL.X, BL.Y)
end
local function visBox(box, vis)
   for i,v in ipairs(box) do v.Visible = vis end
end
local function hasBox(player)
   for i, v in ipairs(boxes) do
       if v["Player"] == player then return true end
   end
end
local function clearBoxes()
   for i = #boxes, 1, -1 do
       local box = table.remove(boxes, i)
       visBox(box, false)
       for j = 2, #box do
           box[j]:Remove()
       end
   end
end
local function draw_Circle(val)
   if val then
       Circle = Drawing.new("Circle")
       Circle.Thickness = 2
       Circle.NumSides = 64
       Circle.Radius = C_FOV
       Circle.Filled = false
       Circle.Color = Color3.fromRGB(255,255,255)
       Circle.Visible = true
       Circle.Position = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, game.Workspace.CurrentCamera.ViewportSize.Y / 2)
   else
       Circle.Visible = false
   end
end
local function getClosestToCenter(FOV)
   local maxDist = FOV or math.huge
   local closestPlayer = nil
   local closestPlayerDist = math.huge
   local screenCenter = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, game.Workspace.CurrentCamera.ViewportSize.Y / 2)
   for _, player in pairs(game.Workspace:GetChildren()) do
       if player:IsA("Model") and player.Name ~= plrs.LocalPlayer.Name and plrs:FindFirstChild(player.Name) then
           local humanoid = player:FindFirstChild("Humanoid")
           local humanoidRootPart = player:FindFirstChild("HumanoidRootPart")
           local head = player:FindFirstChild("Head")
           if humanoid and humanoidRootPart and head then
               local pos, onScreen = camera:WorldToViewportPoint(head.Position)
               if onScreen then
                   local distance = (screenCenter - Vector2.new(pos.X, pos.Y)).magnitude
                   if distance <= maxDist and distance < closestPlayerDist then
                       closestPlayer = player
                       closestPlayerDist = distance
                   end
               end
           end
       end
   end
   return closestPlayer
end
game:GetService("RunService").Heartbeat:Connect(function()
   if Settings.SILENTAIM then
       targetplayer = getClosestToCenter(C_FOV)
   else end
end)
local nameCallHook; nameCallHook = hookmetamethod(game, "__namecall", newcclosure(function(...)
   local args = {...}
   local method = getnamecallmethod()
   local call = getcallingscript()
   if string.lower(method) == "findpartonraywithwhitelist" and tostring(call) == "First Person Controller" then
       local toHit = targetplayer and targetplayer.Head and targetplayer.Head.Position or nil
       if Settings.SILENTAIM and toHit then
           local startFrom = toHit + Vector3.new(0,6,0)
           local endTo = toHit - startFrom
           args[2] = Ray.new(startFrom, endTo)
           return nameCallHook(unpack(args))
       else
           return nameCallHook(...)
       end
   end
   return nameCallHook(...)
end))
RS.RenderStepped:connect(function()
   for i, player in ipairs(game.Workspace:GetChildren()) do
       if player.Name ~= plr.Name and player:IsA("Model") then
           if not hasBox(player) then
               newBox(player)
           end
       end
   end
   for i, v in ipairs(boxes) do
       local player = v["Player"]
       if Settings.BOXESPENABLED and player:FindFirstChild("HumanoidRootPart") and player:FindFirstChild("Humanoid") then
           shapeBox(v)
           local _, withinScreenBounds = camera:WorldToScreenPoint(player.HumanoidRootPart.Position)
           if withinScreenBounds then
               visBox(v,true)
           else
               visBox(v,false)
           end
       else
           visBox(v, false)
       end
   end
   if Settings.MOVEMENT then
       game.Workspace[Lplr].Humanoid.WalkSpeed = Settings.WalkSpeed
       game.Workspace[Lplr].Humanoid.JumpPower = Settings.JumpPower
   end
end)
game.Workspace.ChildRemoved:Connect(function(a)
   if a:IsA("Model") and game.Players:FindFirstChild(a.Name) then
       clearBoxes()
   end
end)
--Buttons&etc
silentaim:AddToggle({Name = "Enabled",Flag = "HI_THERE_WHAT_ARE_YOU_LOOKING_FOR",Callback = function(fff)if fff then Settings.SILENTAIM = true else Settings.SILENTAIM = false end end})
silentaim:AddToggle({Name = "Show FOV Circle",Flag = "HI_THERE_WHAT_ARE_YOU_LOOKING_FOR2",Callback = function(sigmaballsjuhani)if sigmaballsjuhani then Settings.SHOWFOV = true draw_Circle(true) else Settings.SHOWFOV = false draw_Circle(false) end end})
silentaim:AddColorPicker({Name = "FOV Color",Flag = "fcpicker",Callback = function(fcolor) wait() Circle.Color = fcolor end})
silentaim:AddSlider({Name = "FOV Thickness",Flag = "fthickness",Value = 2,Min = 1,Max = 4,Callback = function(Value) Circle.Thickness = Value end})
gunmods:AddButton({Name = "Enable Gun Mods",Callback = function() gunMods() end})
esp:AddToggle({Name = "Enabled",Flag = "besp",Callback = function(ff)if ff then Settings.BOXESPENABLED = true else Settings.BOXESPENABLED = false end end})
esp:AddColorPicker({Name = "Color",Flag = "cpicker",Callback = function(ecolor)Settings.BOXESPCOLOR = ecolor clearBoxes() end})
esp:AddSlider({Name = "Thickness",Flag = "ethickness",Value = 1,Min = 1,Max = 4,Callback = function(Value) Settings.BOXESPTHICKNESS = Value clearBoxes() end})
movement:AddToggle({Name = "Enable Movement Sliders",Flag = "m",Callback = function(wd) if wd then Settings.MOVEMENT = true else Settings.MOVEMENT = false end end})
movement:AddSlider({Name = "WalkSpeed",Flag = "ws",Value = nil,Min = 0,Max = 150,Callback = function (ws) if Settings.MOVEMENT then Settings.WalkSpeed = ws end end})
movement:AddSlider({Name = "JumpPower",Flag = "jp",Value = nil,Min = 0,Max = 200,Callback = function (jp) if Settings.MOVEMENT then Settings.JumpPower = jp end end})
movement:AddSlider({Name = "Gravity",Flag = "gr",Value = 90,Min = 0,Max = 200,Callback = function (g) if Settings.MOVEMENT then game.Workspace.Gravity = g end end})