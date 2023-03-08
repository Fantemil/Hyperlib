-- Gui to Lua
-- Version: 3.2

-- Instances:

local Swordfighting = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Killall = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Aimbot = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local spam = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Admin = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Lightabuse = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UICorner_7 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local UICorner_9 = Instance.new("UICorner")

--Properties:

Swordfighting.Name = "Sword fighting"
Swordfighting.Parent = game.CoreGui
Swordfighting.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Swordfighting
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Position = UDim2.new(0.342964828, 0, 0.244532794, 0)
Main.Size = UDim2.new(0, 397, 0, 257)
Main.Visible = false
Main.Draggable = true
Main.Active = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Size = UDim2.new(0, 397, 0, 41)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Sword Destroying Gui"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.Parent = TextLabel

Killall.Name = "Kill all"
Killall.Parent = Main
Killall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Killall.Position = UDim2.new(0, 0, 0.210677594, 0)
Killall.Size = UDim2.new(0, 192, 0, 50)
Killall.Font = Enum.Font.SourceSans
Killall.Text = "Kill all (Made by Clown and also u have to hold out sword"
Killall.TextColor3 = Color3.fromRGB(0, 0, 0)
Killall.TextScaled = true
Killall.TextSize = 14.000
Killall.TextWrapped = true
Killall.MouseButton1Down:connect(function()
 --// Setting \\--
 local range = 1000000

 --// Variable \\--
 local player = game:GetService("Players").LocalPlayer

 --// Script \\--
 game:GetService("RunService").RenderStepped:Connect(function()
  local p = game.Players:GetPlayers()
  for i = 2, #p do local v = p[i].Character
   if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
    local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
    if tool and tool:FindFirstChild("Handle") then
     tool:Activate()
     for i,v in next, v:GetChildren() do
      if v:IsA("BasePart") then
       firetouchinterest(tool.Handle,v,0)
       firetouchinterest(tool.Handle,v,1)
      end
     end
    end
   end
  end
 end)
end)

UICorner_2.Parent = Killall

Aimbot.Name = "Aimbot"
Aimbot.Parent = Main
Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Aimbot.Position = UDim2.new(0.5163728, 0, 0.210677594, 0)
Aimbot.Size = UDim2.new(0, 192, 0, 50)
Aimbot.Font = Enum.Font.SourceSans
Aimbot.Text = "Aimbot (gui made by Clown i think)"
Aimbot.TextColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.TextScaled = true
Aimbot.TextSize = 14.000
Aimbot.TextWrapped = true
Aimbot.MouseButton1Down:connect(function()
 if not syn or not protectgui then
  getgenv().protectgui = function()end
 end
 local Library = loadstring(game:HttpGet('https://lindseyhost.com/UI/LinoriaLib.lua'))()
 Library:SetWatermark("Holy shit noam chomsky made this Noam chomsky 2.0#5573")
 Library:Notify('Press Right-CTRL To Toggle The UI')
 Library:Notify('YAY AN ACTUAL FEATURE MADE BY NOAM CHOMSKY')

 local Camera = workspace.CurrentCamera
 local Players = game:GetService("Players")
 local GuiService = game:GetService("GuiService")

 local LocalPlayer = Players.LocalPlayer
 local Mouse = LocalPlayer:GetMouse()

 local GetChildren = game.GetChildren
 local WorldToScreen = Camera.WorldToScreenPoint
 local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
 local FindFirstChild = game.FindFirstChild
 local GuiInset = GuiService.GetGuiInset

 local function getPositionOnScreen(Vector)
  local Vec3, OnScreen = WorldToScreen(Camera, Vector)
  return Vector2.new(Vec3.X, Vec3.Y), OnScreen
 end

 local function ValidateArguments(Args, RayMethod)
  local Matches = 0
  if #Args < RayMethod.ArgCountRequired then
   return false
  end
  for Pos, Argument in next, Args do
   if typeof(Argument) == RayMethod.Args[Pos] then
    Matches = Matches + 1
   end
  end
  return Matches >= RayMethod.ArgCountRequired
 end

 local function getDirection(Origin, Position)
  return (Position - Origin).Unit * 1000
 end

 local function getMousePosition()
  return Vector2.new(Mouse.X, Mouse.Y)
 end

 local function IsPlayerVisible(Player)
  local PlayerCharacter = Player.Character
  local LocalPlayerCharacter = LocalPlayer.Character

  if not (PlayerCharacter or LocalPlayerCharacter) then return end 

  local PlayerRoot = FindFirstChild(PlayerCharacter, Options.TargetPart.Value) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")

  if not PlayerRoot then return end 

  local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
  local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)

  return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
 end

 local function getClosestPlayer()
  if not Options.TargetPart.Value then return end
  local Closest
  local DistanceToMouse
  for _, Player in next, GetChildren(Players) do
   if Player == LocalPlayer then continue end
   if Toggles.TeamCheck.Value and Player.Team == LocalPlayer.Team then continue end

   local Character = Player.Character

   if not Character then continue end

   if Toggles.VisibleCheck.Value and not IsPlayerVisible(Player) then continue end

   local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
   local Humanoid = FindFirstChild(Character, "Humanoid")

   if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end

   local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)

   if not OnScreen then continue end

   local Distance = (getMousePosition() - ScreenPosition).Magnitude
   if Distance <= (DistanceToMouse or (Toggles.fov_Enabled.Value and Options.Radius.Value) or 2000) then
    Closest = Character[Options.TargetPart.Value]
    DistanceToMouse = Distance
   end
  end
  return Closest
 end

 local Window = Library:CreateWindow("Universal Silent Aim")

 local GeneralTab = Window:AddTab("General")
 local MainBOX = GeneralTab:AddLeftTabbox("Main")
 do
  local Main = MainBOX:AddTab("Main")
  Main:AddToggle("aim_Enabled", {Text = "Enabled"})
  Main:AddToggle("TeamCheck", {Text = "Team Check"})
  Main:AddToggle("VisibleCheck", {Text = "Visible Check"})
  Main:AddDropdown("TargetPart", {Text = "Target Part", Default = 1, Values = {
   "Head", "HumanoidRootPart"
  }})
  Main:AddDropdown("Method", {Text = "Silent Aim Method", Default = 1, Values = {
   "Raycast","FindPartOnRay",
   "FindPartOnRayWithWhitelist",
   "FindPartOnRayWithIgnoreList",
   "Mouse.Hit/Target"
  }})
 end
 local FieldOfViewBOX = GeneralTab:AddLeftTabbox("Field Of View")
 do
  local fov_circle = Drawing.new("Circle")
  fov_circle.Thickness = 1
  fov_circle.NumSides = 100
  fov_circle.Radius = 180
  fov_circle.Filled = false
  fov_circle.Visible = false
  fov_circle.ZIndex = 999
  fov_circle.Transparency = 1
  fov_circle.Color = Color3.fromRGB(54, 57, 241)

  local mouse_box = Drawing.new("Square")
  mouse_box.Visible = true 
  mouse_box.ZIndex = 999 
  mouse_box.Color = Color3.fromRGB(54, 57, 241)
  mouse_box.Thickness = 20 
  mouse_box.Size = Vector2.new(20, 20)
  mouse_box.Filled = true 

    --[[while task.wait() do 
        mouse_box.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset(GuiService).Y)
    end]]

  local Main = FieldOfViewBOX:AddTab("Field Of View")
  Main:AddToggle("fov_Enabled", {Text = "Enabled"})
  Main:AddSlider("Radius", {Text = "Radius", Min = 0, Max = 360, Default = 180, Rounding = 0}):OnChanged(function()
   fov_circle.Radius = Options.Radius.Value
  end)
  Main:AddToggle("Visible", {Text = "Visible"}):AddColorPicker("Color", {Default = Color3.fromRGB(54, 57, 241)}):OnChanged(function()
   fov_circle.Visible = Toggles.Visible.Value
   while Toggles.Visible.Value do
    fov_circle.Visible = Toggles.Visible.Value
    fov_circle.Color = Options.Color.Value
    fov_circle.Position = getMousePosition() + Vector2.new(0, 36)
    task.wait()
   end
  end)
  Main:AddToggle("MousePosition", {Text = "Show Fake Mouse Position"}):AddColorPicker("MouseVisualizeColor", {Default = Color3.fromRGB(54, 57, 241)}):OnChanged(function()
   mouse_box.Visible = Toggles.MousePosition.Value 
   while Toggles.MousePosition.Value do 
    if Toggles.aim_Enabled.Value == true and Options.Method.Value == "Mouse.Hit/Target" then
     mouse_box.Color = Options.MouseVisualizeColor.Value 

     mouse_box.Visible = ((getClosestPlayer() and true) or false)
     mouse_box.Position = ((getClosestPlayer() and Vector2.new(Camera:WorldToViewportPoint(getClosestPlayer().Position).X, Camera:WorldToViewportPoint(getClosestPlayer().Position).Y)) or Vector2.new(0, 0))
    end

    task.wait()
   end
  end)
 end

 local ExpectedArguments = {
  FindPartOnRayWithIgnoreList = {
   ArgCountRequired = 3,
   Args = {
    "Instance", "Ray", "table", "boolean", "boolean"
   }
  },
  FindPartOnRayWithWhitelist = {
   ArgCountRequired = 3,
   Args = {
    "Instance", "Ray", "table", "boolean"
   }
  },
  FindPartOnRay = {
   ArgCountRequired = 2,
   Args = {
    "Instance", "Ray", "Instance", "boolean", "boolean"
   }
  },
  Raycast = {
   ArgCountRequired = 3,
   Args = {
    "Instance", "Vector3", "Vector3", "RaycastParams"
   }
  }
 }


 local oldNamecall
 oldNamecall = hookmetamethod(game, "__namecall", function(...)
  local Method = getnamecallmethod()
  local Arguments = {...}
  local self = Arguments[1]

  if Toggles.aim_Enabled.Value and self == workspace then
   if Method == "FindPartOnRayWithIgnoreList" and Options.Method.Value == Method then
    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
     local A_Ray = Arguments[2]

     local HitPart = getClosestPlayer()
     if HitPart then
      local Origin = A_Ray.Origin
      local Direction = getDirection(Origin, HitPart.Position)
      Arguments[2] = Ray.new(Origin, Direction)

      return oldNamecall(unpack(Arguments))
     end
    end
   elseif Method == "FindPartOnRayWithWhitelist" and Options.Method.Value == Method then
    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithWhitelist) then
     local A_Ray = Arguments[2]

     local HitPart = getClosestPlayer()
     if HitPart then
      local Origin = A_Ray.Origin
      local Direction = getDirection(Origin, HitPart.Position)
      Arguments[2] = Ray.new(Origin, Direction)

      return oldNamecall(unpack(Arguments))
     end
    end
   elseif (Method == "FindPartOnRay" or Method == "findPartOnRay") and Options.Method.Value:lower() == Method:lower() then
    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRay) then
     local A_Ray = Arguments[2]

     local HitPart = getClosestPlayer()
     if HitPart then
      local Origin = A_Ray.Origin
      local Direction = getDirection(Origin, HitPart.Position)
      Arguments[2] = Ray.new(Origin, Direction)

      return oldNamecall(unpack(Arguments))
     end
    end
   elseif Method == "Raycast" and Options.Method.Value == Method then
    if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
     local A_Origin = Arguments[2]

     local HitPart = getClosestPlayer()
     if HitPart then
      Arguments[3] = getDirection(A_Origin, HitPart.Position)

      return oldNamecall(unpack(Arguments))
     end
    end
   end
  end
  return oldNamecall(...)
 end)

 local oldIndex = nil 
 oldIndex = hookmetamethod(game, "__index", function(self, Index)
  if self == Mouse and (Index == "Hit" or Index == "Target") then 
   if Toggles.aim_Enabled.Value == true and Options.Method.Value == "Mouse.Hit/Target" and getClosestPlayer() then
    local HitPart = getClosestPlayer()

    return ((Index == "Hit" and HitPart.CFrame) or (Index == "Target" and HitPart))
   end
  end

  return oldIndex(self, Index)
 end)
end)

UICorner_3.Parent = Aimbot

spam.Name = "spam"
spam.Parent = Main
spam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
spam.Position = UDim2.new(0, 0, 0.481140673, 0)
spam.Size = UDim2.new(0, 192, 0, 50)
spam.Font = Enum.Font.SourceSans
spam.Text = "Spam"
spam.TextColor3 = Color3.fromRGB(0, 0, 0)
spam.TextScaled = true
spam.TextSize = 14.000
spam.TextWrapped = true
spam.MouseButton1Down:connect(function()
 while wait(0.5)do
 -- Script generated by SimpleSpy - credits to exxtremewa#9394
 -- This generator is IN DEVELOPMENT, not compatible with all types/classes yet

 local args = {
  [1] = "LOL GET BETTER XDXDXDXDXD",
  [2] = "All",
 }

 game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
 end
 
 while wait(0.5)do
 -- Script generated by SimpleSpy - credits to exxtremewa#9394
 -- This generator is IN DEVELOPMENT, not compatible with all types/classes yet

 local args = {
  [1] = "Instead of playing this game go out side and have a lifre",
  [2] = "All",
 }

  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
  end
end)

UICorner_4.Parent = spam

Admin.Name = "Admin"
Admin.Parent = Main
Admin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Admin.Position = UDim2.new(0.5163728, 0, 0.481140673, 0)
Admin.Size = UDim2.new(0, 192, 0, 50)
Admin.Font = Enum.Font.SourceSans
Admin.Text = "Infinty Admin (credit to EdgeIy For creating this WONDERFUL admin."
Admin.TextColor3 = Color3.fromRGB(0, 0, 0)
Admin.TextScaled = true
Admin.TextSize = 14.000
Admin.TextWrapped = true
Admin.MouseButton1Down:connect(function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UICorner_5.Parent = Admin

Lightabuse.Name = "Light abuse"
Lightabuse.Parent = Main
Lightabuse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lightabuse.Position = UDim2.new(0, 0, 0.737949967, 0)
Lightabuse.Size = UDim2.new(0, 397, 0, 50)
Lightabuse.Font = Enum.Font.SourceSans
Lightabuse.Text = "Light abuse (Players wont notice if ur hacking) Might need a little bit of skill for this one xd"
Lightabuse.TextColor3 = Color3.fromRGB(0, 0, 0)
Lightabuse.TextScaled = true
Lightabuse.TextSize = 14.000
Lightabuse.TextWrapped = true
Lightabuse.MouseButton1Down:connect(function()
 --// Setting \\--
 local range = 10

 --// Variable \\--
 local player = game:GetService("Players").LocalPlayer

 --// Script \\--
 game:GetService("RunService").RenderStepped:Connect(function()
  local p = game.Players:GetPlayers()
  for i = 2, #p do local v = p[i].Character
   if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
    local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
    if tool and tool:FindFirstChild("Handle") then
     tool:Activate()
     for i,v in next, v:GetChildren() do
      if v:IsA("BasePart") then
       firetouchinterest(tool.Handle,v,0)
       firetouchinterest(tool.Handle,v,1)
      end
     end
    end
   end
  end
 end)
end)


UICorner_6.Parent = Lightabuse

UICorner_7.Parent = Main

Frame.Parent = Swordfighting
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0, 0, 0.39193666, 0)
Frame.Size = UDim2.new(0, 100, 0, 49)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Size = UDim2.new(0, 100, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
Main.Visible = true
Frame.Visible = false
end)


UICorner_8.Parent = TextButton

UICorner_9.Parent = Frame