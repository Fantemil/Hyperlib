local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Godly Hub", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local FOVCircle = true
local CircleRadius = 80

function aimBot()
 local Camera = workspace.CurrentCamera
 local Players = game:GetService("Players")
 local RunService = game:GetService("RunService")
 local UserInputService = game:GetService("UserInputService")
 local TweenService = game:GetService("TweenService")
 local LocalPlayer = Players.LocalPlayer
 local Holding = false

 _G.AimbotEnabled = true
 _G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
 _G.AimPart = "Head" -- Where the aimbot script would lock at.
 _G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.

 _G.CircleSides = 64 -- How many sides the FOV circle would have.
 _G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
 _G.CircleTransparency = 0.7 -- Transparency of the circle.
 _G.CircleRadius = 80 -- The radius of the circle / FOV.
 _G.CircleFilled = false -- Determines whether or not the circle is filled.
 _G.CircleVisible = true -- Determines whether or not the circle is visible.
 _G.CircleThickness = 0 -- The thickness of the circle.

 local FOVCircle = Drawing.new("Circle")
 FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
 FOVCircle.Radius = _G.CircleRadius
 FOVCircle.Filled = _G.CircleFilled
 FOVCircle.Color = _G.CircleColor
 FOVCircle.Visible = _G.CircleVisible
 FOVCircle.Radius = _G.CircleRadius
 FOVCircle.Transparency = _G.CircleTransparency
 FOVCircle.NumSides = _G.CircleSides
 FOVCircle.Thickness = _G.CircleThickness

 local function GetClosestPlayer()
  local MaximumDistance = _G.CircleRadius
  local Target = nil

  for _, v in next, Players:GetPlayers() do
   if v.Name ~= LocalPlayer.Name then
    if _G.TeamCheck == true then
     if v.Team ~= LocalPlayer.Team then
      if v.Character ~= nil then
       if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
        if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
         local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
         local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
         
         if VectorDistance < MaximumDistance then
          Target = v
         end
        end
       end
      end
     end
    else
     if v.Character ~= nil then
      if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
       if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
        local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
        local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
        
        if VectorDistance < MaximumDistance then
         Target = v
        end
       end
      end
     end
    end
   end
  end

  return Target
 end

 UserInputService.InputBegan:Connect(function(Input)
  if Input.UserInputType == Enum.UserInputType.MouseButton2 then
   Holding = true
  end
 end)

 UserInputService.InputEnded:Connect(function(Input)
  if Input.UserInputType == Enum.UserInputType.MouseButton2 then
   Holding = false
  end
 end)

 RunService.RenderStepped:Connect(function()
  FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
  FOVCircle.Radius = _G.CircleRadius
  FOVCircle.Filled = _G.CircleFilled
  FOVCircle.Color = _G.CircleColor
  FOVCircle.Visible = _G.CircleVisible
  FOVCircle.Radius = _G.CircleRadius
  FOVCircle.Transparency = _G.CircleTransparency
  FOVCircle.NumSides = _G.CircleSides
  FOVCircle.Thickness = _G.CircleThickness

  if Holding == true and _G.AimbotEnabled == true then
   TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
  end
 end)
end

function esp()
 local plr = game.Players.LocalPlayer 
 
 local l_character = plr.Character or plr.CharacterAdded:wait()
 local f_team
 local e_team
 local e_plrlist
 local rs = game:GetService("RunService")
 local camera = workspace.CurrentCamera
 local pfId = 292439477
 local pId = game.PlaceId
 local is_pf = pfId == pId
 
 
 local function geteplrlist()
 local t = {}
 if is_pf then
  local team_color_to_string = tostring(game.Players.LocalPlayer.TeamColor)
   if team_color_to_string == "Bright orange" then
    t = workspace.Players["Bright blue"]:GetChildren()
   else
    t = workspace.Players["Bright orange"]:GetChildren()
   end
 elseif not is_pf then
  if #game.Teams:GetChildren() > 0 then
   for i,v in next, game.Players:GetPlayers() do
    if v.Team~=game.Players.LocalPlayer.Team then
     table.insert(t,v)
    end
   end
  else
   for i,v in next, game.Players:GetPlayers() do
    if v ~= game.Players.LocalPlayer then
     table.insert(t,v)
     end
    end
   end
  end
 return t
 end
 
 rs.Stepped:Connect(function()
 e_plrlist = geteplrlist()
 end)
 
 local function check_for_esp(c_model)
 if not c_model then
  return
 else
  returnv = false
  for i,v in next, c_model:GetDescendants() do
   if v:IsA("BoxHandleAdornment") then
    returnv = true
    break
    end
   end
  return returnv
 end
 end
 
 local function remove_esp(c_model)
 for i,v in next, c_model:GetDescendants() do
  if v:IsA("BoxHandleAdornment") then
   v:Destroy()
  end
 end
 end
 
 
 
 
 local function cast_ray(body_part)
 local rp = RaycastParams.new()
 rp.FilterDescendantsInstances = l_character:GetDescendants()
 rp.FilterType = Enum.RaycastFilterType.Blacklist
 
 local rcr = workspace:Raycast(camera.CFrame.Position, (body_part.Position - camera.CFrame.Position).Unit * 15000,rp)
 if rcr and rcr.Instance:IsDescendantOf(body_part.Parent) then
  return true
 else
  return false
 end
 end
 
 local function create_esp(c_model)
 if not c_model then
  return
 else
  if check_for_esp(c_model) then
   for i,v in next, c_model:GetChildren() do
    if v:IsA("BasePart") and v:FindFirstChild("BoxHandleAdornment") then
     local walt = v:FindFirstChild("BoxHandleAdornment")
     if cast_ray(v) then
      walt.Color3 = Color3.fromRGB(0,255,0)
     else
      walt.Color3 = Color3.fromRGB(255,0,0)
     end
    end
   end
  else
   for i,v in next, c_model:GetChildren() do
    if v:IsA("BasePart") then
     local b = Instance.new("BoxHandleAdornment")
     b.Parent = v
     b.Adornee = v
     b.AlwaysOnTop = true
     b.Size = v.Size
     b.ZIndex = 2
     b.Transparency = 0.5
    end
   end
  end
 end
 end
 
 setfpscap(10000)
 
 rs.RenderStepped:Connect(function()
 for i,v in next, e_plrlist do
  if is_pf then
   create_esp(v)
  else
   create_esp(v.Character)
  end
 end
 end)
end

local MainTab = MainWindow:MakeTab({
 Name = "Main Tab",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

MainTab:AddToggle({
 Name = "Aimbot FOV Circle",
 Default = true,
 Callback = function(Value)
  FOVCircle = Value
 end    
})

MainTab:AddSlider({
 Name = "FOV Circle Radius",
 Min = 80,
 Max = 360,
 Default = 80,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Radius",
 Callback = function(Value)
  CircleRadius = Value
 end    
})

MainTab:AddButton({
 Name = "Aimbot",
 Callback = function()
       aimbot()
   end    
})

MainTab:AddButton({
 Name = "ESP",
 Callback = function()
       esp()   
})

local AboutTab = MainWindow:MakeTab({
 Name = "About Godly Hub",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

AboutTab:AddParagraph("Created By:","DcYhL")

AboutTab:AddButton({
 Name = "Join Discord",
 Callback = function()
        setclipboard("https://discord.gg/yu9tKsfuA8")
        OrionLib:MakeNotification({
            Name = "Copied To Clipboard",
            Content = "Discord Invite Link Copied To Clipboard",
            Image = "rbxassetid://4483345998",
            Time = 10
        })
   end    
})

OrionLib:Init()