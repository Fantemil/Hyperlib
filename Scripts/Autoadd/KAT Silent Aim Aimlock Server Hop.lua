local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Flexware 1.2 | KAT", HidePremium = false, SaveConfig = true, ConfigFolder = "FlexwareProfile", IntroEnabled = true, IntroText = "Flexware 1.2 | Knife Ability Test"})
local MainTab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
MainTab:AddButton({
 Name = "Destroy UI",
 Callback = function()
        OrionLib:Destroy()
        print("button pressed")
   end    
})
local Section = MainTab:AddSection({
 Name = "Local Player"
})
MainTab:AddButton({
 Name = "Low Gravity",
 Callback = function()
  workspace.Gravity = 20
         print("button pressed")
   end    
})
MainTab:AddButton({
 Name = "Default Gravity",
 Callback = function()
  workspace.Gravity = 192.2
        print("button pressed")
   end    
})
MainTab:AddButton({
 Name = "Boost Speed",
 Callback = function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        print("button pressed")
   end    
})
MainTab:AddButton({
 Name = "Default Speed",
 Callback = function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        print("button pressed")
   end    
})
MainTab:AddButton({
 Name = "Rejoin Server",
 Callback = function()
  local tpservice= game:GetService("TeleportService")
  local plr = game.Players.LocalPlayer
  tpservice:Teleport(game.PlaceId, plr)
        print("button pressed")
   end    
})
MainTab:AddButton({
 Name = "Server Hop",
 Callback = function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
  module:Teleport(game.PlaceId)
        print("button pressed")
   end    
})
local Section = MainTab:AddSection({
 Name = "Combat"
})
MainTab:AddButton({
 Name = "Silent Aim",
 Callback = function()
  local Camera = game:GetService("Workspace").CurrentCamera
  local Players = game:GetService("Players")
  local LocalPlayer = game:GetService("Players").LocalPlayer

  local function GetClosestPlayer()
  local ClosestPlayer = nil
  local FarthestDistance = math.huge

  for i, v in pairs(Players.GetPlayers(Players)) do
   if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
    local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

    if DistanceFromPlayer < FarthestDistance then
     FarthestDistance = DistanceFromPlayer
     ClosestPlayer = v
    end
   end
  end

  if ClosestPlayer then
   return ClosestPlayer
  end
  end

  local GameMetaTable = getrawmetatable(game)
  local OldGameMetaTableNamecall = GameMetaTable.__namecall
  setreadonly(GameMetaTable, false)

  GameMetaTable.__namecall = newcclosure(function(object, ...)
  local NamecallMethod = getnamecallmethod()
  local Arguments = {...}

  if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
   local ClosestPlayer = GetClosestPlayer()
   
   if ClosestPlayer and ClosestPlayer.Character then
    Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
   end
  end

  return OldGameMetaTableNamecall(object, unpack(Arguments))
  end)

  setreadonly(GameMetaTable, true)
 end
})
MainTab:AddButton({
 Name = "Aimlock - MouseButton1",
 Callback = function()
  local Area = game:GetService("Workspace")
  local RunService = game:GetService("RunService")
  local UIS = game:GetService("UserInputService")
  local Players = game:GetService("Players")
  local LocalPlayer = Players.LocalPlayer
  local MyCharacter = LocalPlayer.Character
  local MyRoot = MyCharacter:FindFirstChild("HumanoidRootPart")
  local MyHumanoid = MyCharacter:FindFirstChild("Humanoid")
  local Mouse = LocalPlayer:GetMouse()
  local MyView = Area.CurrentCamera
  local MyTeamColor = LocalPlayer.TeamColor
  local HoldingM2 = false
  local Active = false
  local Lock = false
  local Epitaph = .9999999999999999999999999999999999999999999 
  local HeadOffset = Vector3.new(0, .1, 0)

  _G.TeamCheck = false
  _G.AimPart = "HumanoidRootPart"
  _G.Sensitivity = 0
  _G.CircleSides = 64
  _G.CircleColor = Color3.fromRGB(255, 0, 130)
  _G.CircleTransparency = 0
  _G.CircleRadius = 200
  _G.CircleFilled = false
  _G.CircleVisible = true
  _G.CircleThickness = 1

  local FOVCircle = Drawing.new("Circle")
  FOVCircle.Position = Vector2.new(MyView.ViewportSize.X / 2, MyView.ViewportSize.Y / 2)
  FOVCircle.Radius = _G.CircleRadius
  FOVCircle.Filled = _G.CircleFilled
  FOVCircle.Color = _G.CircleColor
  FOVCircle.Visible = _G.CircleVisible
  FOVCircle.Transparency = _G.CircleTransparency
  FOVCircle.NumSides = _G.CircleSides
  FOVCircle.Thickness = _G.CircleThickness

  local function CursorLock()
   UIS.MouseBehavior = Enum.MouseBehavior.LockCenter
  end
  local function UnLockCursor()
   HoldingM1 = false Active = false Lock = false 
   UIS.MouseBehavior = Enum.MouseBehavior.Default
  end
  function FindNearestPlayer()
   local dist = math.huge
   local Target = nil
   for _, v in pairs(Players:GetPlayers()) do
    if v ~= LocalPlayer and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") and v then
     local TheirCharacter = v.Character
     local CharacterRoot, Visible = MyView:WorldToViewportPoint(TheirCharacter[_G.AimPart].Position)
     if Visible then
      local RealMag = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(CharacterRoot.X, CharacterRoot.Y)).Magnitude
      if RealMag < dist and RealMag < FOVCircle.Radius then
       dist = RealMag
       Target = TheirCharacter
      end
     end
    end
   end
   return Target
  end

  UIS.InputBegan:Connect(function(Input)
   if Input.UserInputType == Enum.UserInputType.MouseButton1 then
    HoldingM1 = true
    Active = true
    Lock = true
    if Active then
     local The_Enemy = FindNearestPlayer()
     while HoldingM1 do task.wait(.000001)
      if Lock and The_Enemy ~= nil then
       local Future = The_Enemy.HumanoidRootPart.CFrame + (The_Enemy.HumanoidRootPart.Velocity * Epitaph + HeadOffset)
       MyView.CFrame = CFrame.lookAt(MyView.CFrame.Position, Future.Position)
       CursorLock()
      end
     end
    end
   end
  end)
  UIS.InputEnded:Connect(function(Input)
   if Input.UserInputType == Enum.UserInputType.MouseButton1 then
    UnlockCursor()
   end
  end)
        print("button pressed")
   end    
})  
OrionLib:Init()