local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local venyx = library.new("HAMEWARE", 5013109572)

local themes = {
   Background = Color3.fromRGB(24, 24, 24),
   Glow = Color3.fromRGB(0, 0, 0),
   Accent = Color3.fromRGB(10, 10, 10),
   LightContrast = Color3.fromRGB(20, 20, 20),
   DarkContrast = Color3.fromRGB(14, 14, 14),
   TextColor = Color3.fromRGB(255, 255, 255)
}

--Coded by Tyris & Doiv (void)
local mouse = game.Players.LocalPlayer:GetMouse()
local BodyParts = {'LeftFoot', 'LeftHand', 'LeftLowerArm', 'LeftLowerLeg', 'LeftUpperArm', 'LeftUpperLeg', 'LowerTorso', 'RightFoot', 'RightHand', 'RightLowerArm', 'RightLowerLeg', 'RightUpperLeg', 'RightUpperArm', 'UpperTorso', 'Head'}
local invitecode = ""
local HAMEWARE_Chatspam = {"HAMEWARE ON TOP!", "OWNING ANY OTHER CHEAT THEN HAMEWARE MAKES YOU AN IDIOT LIBERAL", "HAMEWARE PENCE 2020", "HAMEWARE WINNING", "GET GOOD GET HAMEWARE", "discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode, "HAMEWARE | TWO STUDS AHEAD OF THE GAME"}
local Furry_Chatspam = {'UwU Sowwiez! Im using hameware and owning youwww </3', 'OwO hameware is tapping aww of youw fwiends :c', 'e.e you arent using hameware?? Dat makes meh angerye!! >:c', '>.< I am tapping eyes closed with hameware~', ':3 come get hameware! discoard.gg/'..invitecode, 'OvO hameware is slotted!! C:', 'UvU no challenge for hameware! </3'}
local Swiss_Chatspam = {'SalÃ¼ zÃ¤mme Ig bin en schwiizer.', 'Hei u-huara dreck isch denn da imfall', 'Ier sing alli extrem schlecht i dem spiil lol', 'Wa wennd ier eigentlich, ich bin eh besser also leafet doch???', 'Han kei bock meh gege euch spiele, ier sind alli extrem schlecht', 'Boah alter in zuri hets boes fuetz!', 'Ig schwoer hameware isch immer ontop!', 'Hameware isch de best script wo nid full-public isch', 'holl der doch hameware! discord.gg/'..invitecode}
local HvH_Chatspam = {"HHHHHH D0g owned by Hameware user hhh", "No Hameware no talk dog LLLL", "hhhh imagine not owning hameware NN dog 2k20 Hamewareless", "come 5v5 dumb dog", "Absolute dog hhhh no Hameware no talk nn", "I'm hvh legende so shhhh", "hdf eins du hs", 'einsclick hdf hund', 'schnauze nn ich bin hvh legende', 'Hvh legend here', 'Hameware hameware nr #1 cheat', 'Antiaim top of the game'}
local China_Chatspam = {"HAMEWAREæä½³", "HAMEWAREä¸è¡£", "èæ¬é»å®¢è½¯ä»¶", "äºé©¬é", "æ·éè", "æåæºé»å®¢hameware", "å¤©å®é¨å¹¿åºæ¯åçï¼ä¸é¢æhameware, tianamen square", "ä¹æ²»Â·å¼æ´ä¼å¾·", "ç·äººå¥³äººç«ä¸­å½é¡¶", "å¯æçé»äºº", "æ¯ç²è´´è½¯ä»¶", "xå¼å¾", "æ°´å°ç", "é´èææ¯", "é»è²çæ´»æ æè°BLM", "femboyesæ¯åæ§æ"}
local uion = true
local circle = Drawing.new("Circle")
local LP = game:GetService("Players").LocalPlayer
circle.Visible = false
local fakeanim = Instance.new('Animation', workspace)
fakeanim.AnimationId = 'rbxassetid://0'
local userInputService = game:GetService("UserInputService")
userInputService.MouseBehavior = Enum.MouseBehavior.Default

local target;
local bodyname;
local ChatDebounce = false
local NameTags_Toggled = false
local ArmChams = false
local WeaponChams = false
local ArmMaterial = 'Plastic'
local WeaponMaterial = 'Plastic'
local debris = game:GetService("Workspace").Debris
local SilentAimFOV_Thickness = 1
local Show_SILENTAIMFOV = false
local CollectDebris = false
local SilentAim_Toggled = false
local NoAnims_Toggle = false
local Teamcheck_Toggled = false
local Visuals_Toggled = false
local Chams_Toggled = false
local SilentAimFOV_Filled = false
local AntiAim_Toggle = false
local isthirdperson = false
local ChatSpam = false
local Movement_Toggled = false
local Bhop_Toggled = false
local Chatspam_Toggled = false
local Bhop_Speed = 1
local Chatspam_Wait = 1
local Chatspam_Type = nil
local SilentAim_FOV = 0
local SilentAimFOV_Transparency = 0
local silentaim_headhitchance = 0
local silentaim_bodyhitchance = 0
local Pitch_Type = nil
local Yaw_Type = nil
local AntiAim_Speed = 0
local CustomPitch_Value = 0
local ArmChams_Color = Color3.new(50, 50, 50)
local WeaponChams_Color = Color3.new(50, 50, 50)
local SilentAimFOV_Numsides = 3
local CustomYaw_Value = 0
local leftrotation = CFrame.new(-150, 0, 0)
local rightrotation = CFrame.new(150, 0, 0)
local backrotation = CFrame.new(-4, 0, 0)
local ChamsColor = Color3.fromRGB(50, 50, 50)
local SilentAimFOV_Color = Color3.fromRGB(50, 50, 50)
local defaultvector = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
local hed = Instance.new('Part', workspace.Terrain)
local rhead = Instance.new('Part', hed)
local rtors = Instance.new('Part', hed)
rhead.Name = "Head"
rtors.Name = 'UpperTorso'

local page = venyx:addPage("Aimbot", 5892773989)
local section1 = page:addSection("Silent Aimbot")
local section2 = page:addSection("Silent Aimbot Settings")
local addonsectionAIMBOT = page:addSection("Targets")
local addonsectionAIMBOTVisuals = page:addSection("Targets")

section1:addToggle("Silent Aimbot", nil, function(value)
   SilentAim_Toggled = value
end)

addonsectionAIMBOTVisuals:addToggle("Show SilentAim FOV", nil, function(value)
   Show_SILENTAIMFOV = value
end)

addonsectionAIMBOTVisuals:addToggle("SilentAim FOV Filled", nil, function(value)
   SilentAimFOV_Filled = value
end)

addonsectionAIMBOTVisuals:addSlider("SilentAim FOV Thickness", 1, 1, 5, function(value)
   SilentAimFOV_Thickness = value
end)

addonsectionAIMBOTVisuals:addSlider("SilentAim FOV numsides", 3, 3, 100, function(value)
   SilentAimFOV_Numsides = value
end)

addonsectionAIMBOTVisuals:addSlider("SilentAim FOV Transparency", 0, 0, 100, function(value)
   SilentAimFOV_Transparency = value
end)

addonsectionAIMBOTVisuals:addColorPicker('SilentAim FOV Color', Color3.fromRGB(50, 50, 50), function(color3)
   SilentAimFOV_Color = color3
end)

addonsectionAIMBOT:addToggle("TeamCheck", nil, function(value)
   Teamcheck_Toggled = value
end)

section2:addSlider("Silent Aimbot FOV", 0, 0, 500, function(value)
   SilentAim_FOV = value
end)

section2:addSlider("Head hitchance", 0, 0, 100, function(value)
   silentaim_headhitchance = value
end)

section2:addSlider("Body hitchance", 0, 0, 100, function(value)
   silentaim_bodyhitchance = value
end)

local Visuals = venyx:addPage("Visuals", 5892783507)
local section3 = Visuals:addSection("Chams")
local addonsectionVISUALS = Visuals:addSection("Local")

section3:addToggle("Visuals", nil, function(value)
   Visuals_Toggled = value
end)

section3:addToggle("Nametag Esp", nil, function(value)
   NameTags_Toggled = value
end)

section3:addToggle("Chams", nil, function(value)
   Chams_Toggled = value
end)

section3:addColorPicker('Chams Color', Color3.fromRGB(50, 50, 50), function(color3)
   ChamsColor = color3
end)


addonsectionVISUALS:addKeybind("ThirdPerson keybind", Enum.KeyCode.X, function()
   if not isthirdperson then
       isthirdperson = true
   else
       isthirdperson = false
   end
   
end, function()
end)




addonsectionVISUALS:addToggle("Arm Chams", nil, function(value)
   ArmChams = value
end)

addonsectionVISUALS:addToggle('Weapon Chams', nil, function(value)
   WeaponChams = value
end)

addonsectionVISUALS:addColorPicker('Arm Color', Color3.fromRGB(50, 50, 50), function(color3)
   ArmChams_Color = color3
end)

addonsectionVISUALS:addColorPicker('Weapon Color', Color3.fromRGB(50, 50, 50), function(color3)
   WeaponChams_Color = color3
end)

addonsectionVISUALS:addDropdown("Arm Material", {"Plastic", "ForceField", "Wood", "Grass"}, function(text)
   ArmMaterial = text
end)

addonsectionVISUALS:addDropdown("Weapon Material", {"Plastic", "ForceField", "Wood", "Grass"}, function(text)
   WeaponMaterial = text
end)


local AAPage = venyx:addPage("Anti-Aim", 5012544693)
local section4 = AAPage:addSection("Main")
local section5 = AAPage:addSection("Pitch")
local section6 = AAPage:addSection("Yaw")

section4:addToggle("AntiAim Toggle", nil, function(value)
   AntiAim_Toggle = value
end)

section4:addToggle("Disable Animations", nil, function(value)
   NoAnims_Toggle = value
end)

section5:addDropdown("Pitch Type", {"Custom", "Up", "Down", "Zero"}, function(text)
   Pitch_Type = text
end)

section5:addSlider("Pitch Value", 0, -150, 150, function(value)
   CustomPitch_Value = value / 100
end)

section6:addDropdown("Yaw Type", {"Custom", "Jitter", "Spin", "Back"}, function(text)
   Yaw_Type = text
end)

section6:addSlider('Spin Speed', 0, 0, 100, function(value)
   AntiAim_Speed = value
end)

section6:addSlider("Yaw Value", 0, 0, 360, function(value)
   CustomYaw_Value = value
end)

local Misc = venyx:addPage("Misc", 5894272440)
local Movement = Misc:addSection("Movement")
local Troll = Misc:addSection("Trolle")
local MiscLocal = Misc:addSection("Local")

MiscLocal:addToggle("Collect Debris", nil, function(value)
   CollectDebris = value
end)

Movement:addToggle("Movement Modifiers", nil, function(value)
   Movement_Toggled = value
end)

Movement:addToggle("Bhop", nil, function(value)
   Bhop_Toggled = value
end)

Movement:addSlider("Bhop Speed", 1, 0, 100, function(value)
   Bhop_Speed = value
end)

Troll:addToggle("Troll Features", nil, function(value)
   Troll_Toggled = value
end)

Troll:addToggle("Chatspam", nil, function(value)
   Chatspam_Toggled = value
end)

Troll:addDropdown("Chatspam Type", {"HAMEWARE", "Furry", "Swiss", "HvH", "China"}, function(text)
   Chatspam_Type = text
end)

Troll:addSlider("Chatspam Sleep", 1, 1, 10, function(value)
   Chatspam_Wait = value
end)


local theme = venyx:addPage("GUI", 5012543246)
local colors = theme:addSection("Colors")
local uitogl = theme:addSection("UI Toggle")

uitogl:addKeybind("GUI Toggle Keybind", Enum.KeyCode.Insert, function(val)
   if uion then
       userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
       uion = false
   else
       userInputService.MouseBehavior = Enum.MouseBehavior.Default
       uion = true
   end
   venyx:toggle()
end, function()
end)

for theme, color in pairs(themes) do
   colors:addColorPicker(theme, color, function(color3)
       venyx:setTheme(theme, color3)
   end)
end

venyx:SelectPage(venyx.pages[1], true)

local function BulletTracer(ray)

   local mid = ray.Origin + ray.Direction/2

   if workspace.Camera:FindFirstChild("Arms") then
       if workspace.Camera.Arms:FindFirstChild("Bullet") then
           local pr = Instance.new("Part")
           pr.Parent = workspace
           pr.Anchored = true
           pr.CFrame = CFrame.new(mid, ray.Origin)
           pr.Size = Vector3.new(BulletTracer_Thickness, BulletTracer_Thickness, ray.Direction.Magnitude)
           pr.Color = BulletTracers_Color
           pr.Transparency = BulletTracers_Transparency
           pr.Material = Enum.Material.Neon
           print('Rayd')
           wait(3)
           pr:Destroy()
       end
   end

end


local function convert_rgb_to_vertex(c3)
   return Vector3.new(c3.R, c3.G, c3.B)
end
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
if setreadonly then
   setreadonly(mt, false)
else
   make_writeable(mt, true)
end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f)
   return f
end
mt.__namecall = newClose(function(...)
   local method = namecallMethod()
   local args = {...}

   if method == "FindPartOnRayWithIgnoreList" then
       if SilentAim_Toggled then
           args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target[bodyname].CFrame.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
       end
   elseif method == 'LoadAnimation' and tostring(args[2]) == 'RunForward' or tostring(args[2]) == 'RunBackward' or
       tostring(args[2]) == 'RunLeft' or tostring(args[2]) == 'RunRight' then
       if NoAnims_Toggle then
           args[2] = fakeanim
       end
   elseif method == 'FireServer' and tostring(args[1]) == "ControlTurn" then
       if AntiAim_Toggle then
           if Pitch_Type == "Custom" then
               args[2] = CustomPitch_Value
           elseif Pitch_Type == 'Down' then
               args[2] = -1.5
           elseif Pitch_Type == "Up" then
               args[2] = 1.5
           elseif Pitch_Type == "Zero" then
               args[2] = 0
           end
       end
   end

   return oldNamecall(unpack(args))
end)

mt.__index = newcclosure(function(self, ...)
   local arg = {...}

   if isthirdperson then
       if arg[1] == 'CameraMode' then
           return Enum.CameraMode.Classic
       end
   end


   return oldIndex(self, ...)
end)
local newmt = mt.__newindex
local namecall = mt.__namecall
setreadonly(mt,false)
newmt = newcclosure(function(self,args,value)
   if checkcaller() then
       return new(self,args,value)
   end
   if args:lower() == "walkspeed" or args == "WalkSpeed" then
       return
   end
   return newmt(self,args,value)
end)


if setreadonly then
   setreadonly(mt, true)
else
   make_writeable(mt, false)
end

function characterrotate(pos)
   pcall(function()
       if game.Players.LocalPlayer.Character then
           game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
           local gyro = Instance.new('BodyGyro')
           gyro.D = 0
           gyro.P = 1000000
           gyro.MaxTorque = Vector3.new(0, 1000000, 0)
           gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
           gyro.CFrame = CFrame.new(gyro.Parent.Position, pos)
           wait()
           gyro:Destroy()
       end
   end)
end

function GetTarget()
   local fob = SilentAim_FOV
   local nearestcharacter = nil
   pcall(function()
       local t = nil
       local m = LP:GetMouse()
       for _, PL in pairs(game.Players:GetPlayers()) do
           if PL.Character and PL.Character:FindFirstChild("Head") then
               if PL ~= LP then
                   if Teamcheck_Toggled == false then
                       if PL ~= nearestcharacter then
                           local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(PL.Character.Head.CFrame.p)
                           local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X, m.Y)).Magnitude
                           if dist < fob then
                               if 0 < PL.Character.Humanoid.Health then
                                   nearestcharacter = PL.Character
                                   fob = dist
                               end
                           end
                       end
                   else
                       if PL.TeamColor ~= LP.TeamColor then
                           if PL ~= nearestcharacter then
                               local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(PL.Character.Head.CFrame.p)
                               local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X, m.Y)).Magnitude
                               if dist < fob then
                                   if 0 < PL.Character.Humanoid.Health then
                                       nearestcharacter = PL.Character
                                       fob = dist
                                   end
                               end
                           end
                       end
                   end
               end
           end
       end
   end)
   return nearestcharacter
end

function isInTable(table, tofind)
   local found = false
   for _,v in pairs(table) do
       if v==tofind then
           found = true
           break;
       end
   end
   return found
end

TweenStatus = nil

local TweenService = game:GetService("TweenService")
TweenCFrame = Instance.new("CFrameValue")


function tweenstuff(partpos)
   TweenStatus = true
   TweenCFrame.Value = workspace.CurrentCamera.CFrame
   local tweenframe = TweenService:Create(TweenCFrame, TweenInfo.new(0.2),{Value = CFrame.new(workspace.CurrentCamera.CFrame.Position, partpos)})
   tweenframe:Play()
   tweenframe.Completed:Wait()
   TweenStatus = nil
   TweenCFrame.Value = CFrame.new(0,0,0)
end


while true do


   if Movement_Toggled then
       
       if Bhop_Toggled then
           if userInputService:IsKeyDown(Enum.KeyCode.Space) then
               if LP.Character then
                   LP.Character['Humanoid'].Jump = true
                   LP.Character['Humanoid'].WalkSpeed =  Bhop_Speed
               end
           end
       end
   end


   if Visuals_Toggled then

       if NameTags_Toggled then
           if Teamcheck_Toggled then
               for I,V in pairs (game.Players:GetPlayers()) do
                   if V ~= LP then
                       if V.TeamColor ~= LP.TeamColor then
                           if V.Character and V.Character:FindFirstChild("Head") then
                               if V.Character.Head:FindFirstChild("TotallyNotNAMEESP") then
                                   V.Character.Head['TotallyNotNAMEESP'].TextLabel.TextColor3 = ChamsColor
                               else
                                   local bbgui = Instance.new("BillboardGui",  V.Character['Head'])
                                   bbgui.Name = "TotallyNotNAMEESP"
                                   bbgui.AlwaysOnTop = true
                                   bbgui.StudsOffset = Vector3.new(0, 2, 0)
                                   bbgui.ClipsDescendants = false
                                   bbgui.Enabled = true
                                   bbgui.Size = UDim2.new(0, 200,0, 50)

                                   local boxha = Instance.new('TextLabel', bbgui)
                                   boxha.Size = UDim2.new(0, 200,0, 50)
                                   boxha.TextColor3 = ChamsColor
                                   boxha.Text = V.Name
                                   boxha.Font = Enum.Font.Code
                                   boxha.TextSize = 20
                                   boxha.BackgroundTransparency = 1
                                   boxha.BorderSizePixel = 0
                                   boxha.Visible = true
                                   boxha.Size = UDim2.new(0, 200,0, 50)
                                   boxha.TextWrapped = true
                               end
                           end
                       elseif V.TeamColor == LP.TeamColor then
                           if V.Character and V.Character:FindFirstChild("Head") then
                               if V.Character.Head:FindFirstChild("TotallyNotNAMEESP") then
                                   V.Character.Head['TotallyNotNAMEESP']:Destroy()
                               end
                           end
                       end
                   end
               end
           else
               for I,V in pairs (game.Players:GetPlayers()) do
                   if V ~= LP then
                       if V.Character and V.Character:FindFirstChild("Head") then
                           if V.Character.Head:FindFirstChild("TotallyNotNAMEESP") then
                               V.Character.Head['TotallyNotNAMEESP'].TextLabel.TextColor3 = ChamsColor
                           else
                               local bbgui = Instance.new("BillboardGui",  V.Character['Head'])
                               bbgui.Name = "TotallyNotNAMEESP"
                               bbgui.AlwaysOnTop = true
                               bbgui.StudsOffset = Vector3.new(0, 2, 0)
                               bbgui.ClipsDescendants = false
                               bbgui.Enabled = true
                               bbgui.Size = UDim2.new(0, 200,0, 50)
                               local boxha = Instance.new('TextLabel', bbgui)
                               boxha.Size = UDim2.new(0, 200,0, 50)
                               boxha.TextColor3 = ChamsColor
                               boxha.Text = V.Name
                               boxha.Font = Enum.Font.Code
                               boxha.TextSize = 20
                               boxha.BackgroundTransparency = 1
                               boxha.BorderSizePixel = 0
                               boxha.Visible = true
                               boxha.Size = UDim2.new(0, 200,0, 50)
                               boxha.TextWrapped = true
                           end
                       end
                   end
               end
           end
       end
       if Chams_Toggled then
           if Teamcheck_Toggled then
               for I,V in pairs (game.Players:GetPlayers()) do
                   if V ~= LP then
                       if V.TeamColor ~= LP.TeamColor then
                           if V.Character then
                               for X,Z in pairs(V.Character:GetChildren()) do
                                   if Z.ClassName == 'MeshPart' or Z.ClassName == 'Part' and isInTable(BodyParts, Z.Name) then
                                       if Z:FindFirstChild("TotallyNotESP") then
                                           Z['TotallyNotESP'].Color3 = ChamsColor
                                       else
                                           if Z.Name == 'Head' then
                                               local headha = Instance.new("CylinderHandleAdornment",Z)
                                               headha.Adornee = Z
                                               headha.Transparency = 0
                                               headha.AlwaysOnTop = true
                                               headha.Name = "TotallyNotESP"
                                               headha.ZIndex = 1
                                               headha.Color3 = ChamsColor
                                               headha.Height = 1.3
                                           else
                                               local boxha = Instance.new("BoxHandleAdornment",Z)
                                               boxha.Adornee = Z
                                               boxha.Transparency = 0
                                               boxha.AlwaysOnTop = true
                                               boxha.Name = "TotallyNotESP"
                                               boxha.Size = Z.Size
                                               boxha.ZIndex = 1
                                               boxha.Color3 = ChamsColor
                                           end
                                       end
                                   end
                               end
                           end
                       elseif V.TeamColor == LP.TeamColor then
                           if V.Character then
                               for X,Z in pairs(V.Character:GetChildren()) do
                                   if Z.ClassName == 'MeshPart' or Z.ClassName == 'Part' and isInTable(BodyParts, Z.Name) then
                                       if Z:FindFirstChild("TotallyNotESP") then
                                           Z['TotallyNotESP']:Destroy()
                                       end
                                   end
                               end
                           end
                       end
                   end
               end
           else
               for I,V in pairs (game.Players:GetPlayers()) do
                   if V ~= LP then
                       if V.Character then
                           for X,Z in pairs(V.Character:GetChildren()) do
                               if Z.ClassName == 'MeshPart' or Z.ClassName == 'Part' and isInTable(BodyParts, Z.Name) then
                                   if Z:FindFirstChild("TotallyNotESP") then
                                       Z['TotallyNotESP'].Color3 = ChamsColor
                                   else
                                       if Z.Name == 'Head' then
                                           local headha = Instance.new("CylinderHandleAdornment",Z)
                                           headha.Adornee = Z
                                           headha.Transparency = 0
                                           headha.AlwaysOnTop = true
                                           headha.Name = "TotallyNotESP"
                                           headha.ZIndex = 1
                                           headha.Color3 = ChamsColor
                                           headha.Height = 1.3
                                       else
                                           local boxha = Instance.new("BoxHandleAdornment",Z)
                                           boxha.Adornee = Z
                                           boxha.Transparency = 0
                                           boxha.AlwaysOnTop = true
                                           boxha.Name = "TotallyNotESP"
                                           boxha.Size = Z.Size
                                           boxha.ZIndex = 1
                                           boxha.Color3 = ChamsColor
                                       end
                                   end
                               end
                           end
                       end
                   end
               end
           end
       end
   end


   if Chatspam_Toggled then
       if not ChatDebounce then
           spawn(function()
               ChatDebounce = true
               while ChatDebounce do
                   if Chatspam_Type == 'HAMEWARE' then
                       game.ReplicatedStorage.Events.PlayerChatted:FireServer(HAMEWARE_Chatspam[math.random(1, #HAMEWARE_Chatspam)], false, false, false, true)
                   elseif Chatspam_Type == 'Furry' then
                       game.ReplicatedStorage.Events.PlayerChatted:FireServer(Furry_Chatspam[math.random(1, #Furry_Chatspam)], false, false, false, true)
                   elseif Chatspam_Type == 'Swiss' then
                       game.ReplicatedStorage.Events.PlayerChatted:FireServer(Swiss_Chatspam[math.random(1, #Swiss_Chatspam)], false, false, false, true)
                   elseif Chatspam_Type == 'HvH' then
                       game.ReplicatedStorage.Events.PlayerChatted:FireServer(HvH_Chatspam[math.random(1, #HvH_Chatspam)], false, false, false, true)
                       elseif Chatspam_Type == 'China' then
                       game.ReplicatedStorage.Events.PlayerChatted:FireServer(China_Chatspam[math.random(1, #China_Chatspam)], false, false, false, true)
                   end
                   wait(Chatspam_Wait)
                   if not Chatspam_Toggled then
                       ChatDebounce = false
                       break
                   end
               end
           end)
       end
   end

   if AntiAim_Toggle then
       if Yaw_Type == "Custom" then
           characterrotate(CFrame.new(CustomYaw_Value, 0, 0))
       elseif Yaw_Type == "Jitter" then
           if game.Players.LocalPlayer.Character then
               game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
               local spin = Instance.new('BodyAngularVelocity', game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
               spin.AngularVelocity = Vector3.new(0, math.random(-60000, 55000), 0)
               spin.MaxTorque = Vector3.new(0, 35000, 0)
               wait()
               spin:Destroy()
           end
       elseif Yaw_Type == "Spin" then
           if game.Players.LocalPlayer.Character then
               game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
               local spin = Instance.new('BodyAngularVelocity', game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
               spin.AngularVelocity = Vector3.new(0, AntiAim_Speed * 100, 0)
               spin.MaxTorque = Vector3.new(0, 23000, 0)
               wait()
               spin:Destroy()
           end
       elseif Yaw_Type == "Back" then
           characterrotate((workspace.CurrentCamera.CFrame * backrotation).p)
       end
   end

   if isthirdperson then
       userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter  
       LP.CameraMode = 'Classic'
       game.Players.LocalPlayer.CameraMaxZoomDistance = 12
       game.Players.LocalPlayer.CameraMinZoomDistance = 12
   else
       LP.CameraMode = 'LockFirstPerson'
       game.Players.LocalPlayer.CameraMaxZoomDistance = 0
       game.Players.LocalPlayer.CameraMinZoomDistance = 0
   end

   if CollectDebris then
       for i,v in pairs(debris:GetChildren()) do
           if v.Name == "DeadHP" or v.Name == "DeadAmmo" then
               v.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0,0.2,0)
           end
       end
   end


   if SilentAim_Toggled then

       local xd = math.random(0, 100);
       if (silentaim_headhitchance or 0) <= xd then
           bodyname = 'UpperTorso'
       elseif (silentaim_bodyhitchance or 0) >= xd then
           bodyname = 'Head'
       else
           bodyname = 'Head'
       end
       local yeet = GetTarget()
       if yeet then
           target = yeet
       else
           target = hed
       end

       if Show_SILENTAIMFOV then
           circle.Visible = true
           circle.Thickness = SilentAimFOV_Thickness
           circle.NumSides = SilentAimFOV_Numsides
           circle.Radius = SilentAim_FOV
           circle.Filled = SilentAimFOV_Filled
           circle.Position = defaultvector
           circle.Color = SilentAimFOV_Color
           circle.Transparency = SilentAimFOV_Transparency / 100
       else
           circle.Visible = false
       end

   end


   if ArmChams then
       if not workspace.Camera:FindFirstChild("Arms") then
           wait()
       else
           for i,v in pairs(workspace.Camera.Arms:GetDescendants()) do
               if v.Name == 'Right Arm' or v.Name == 'Left Arm' then
                   if v:IsA("BasePart") then
                       v.Material = Enum.Material[ArmMaterial]
                       v.Color = ArmChams_Color
                   end
               elseif v:IsA("SpecialMesh") then
                   if v.TextureId == '' then
                       v.TextureId = 'rbxassetid://0'
                       v.VertexColor = convert_rgb_to_vertex(ArmChams_Color)
                   end
               elseif v.Name == 'L' or v.Name == 'R' then
                   v:Destroy()
               end
           end
       end
   end

   if WeaponChams then
       if not workspace.Camera:FindFirstChild("Arms") then
           wait()
       else
           for i,v in pairs(workspace.Camera.Arms:GetDescendants()) do
               if v:IsA("MeshPart") then
                   v.Material = Enum.Material[WeaponMaterial]
                   v.Color = WeaponChams_Color
               end
           end
       end
   end


   game:GetService("RunService").RenderStepped:Wait()

end