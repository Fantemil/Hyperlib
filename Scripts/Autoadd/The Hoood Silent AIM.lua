_G.Prediction =  (  .18  )  -- [ Lower Prediction: Lower Ping | Higher Prediction: Higher Ping  ]

_G.FOV =  (  350  )

_G.AimKey =  (  "c"  )

--[[
 Do not edit anything under this.
]]

local SilentAim = true
local LocalPlayer = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local Mouse = LocalPlayer:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local UIS = game:GetService("UserInputService")
local CanCraftPart = false

hookmetamethod = hookmetamethod
Drawing = Drawing
getnamecall_method = getnamecall_method
getnamecallmethod = getnamecallmethod
newcclosure = newcclosure
hide_me = hide_me
getrawmetatable = getrawmetatable
is_protosmasher_caller = is_protosmasher_caller
checkcaller = checkcaller
Cer = Cer
setreadonly = setreadonly
make_writeable = make_writeable

local getnamecallmethod = getnamecallmethod or getnamecall_method
local newcclosure = newcclosure or hide_me or function(func)
 return func
end
local checkcaller = checkcaller or is_protosmasher_caller or Cer.isCerus
local mt = getrawmetatable(game)
local mt_index, mt_namecall = mt.__index, mt.__namecall
if setreadonly then
 setreadonly(mt, false)
elseif make_writeable then
 make_writeable(mt, true)
end

local FOV_CIRCLE = Drawing.new("Circle")
FOV_CIRCLE.Visible = true
FOV_CIRCLE.Filled = false
FOV_CIRCLE.Thickness = 1
FOV_CIRCLE.Transparency = 1
FOV_CIRCLE.Color = Color3.new(0, 1, 0)
FOV_CIRCLE.Radius = _G.FOV
FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

Options = {
 Torso = "HumanoidRootPart";
 Head = "Head";
}

local function EyeFrames()
 CanCraftPart = true
 if CanCraftPart then
  local Apple = Instance.new("Part", workspace)
  Apple.Name = "Apple"
  Apple.Anchored = true
  Apple.CanCollide = false
  Apple.Size = Vector3.new(1.3,2,1)
  Apple.Transparency = 1
 end
 CanCraftPart = false
end
local function MoveFovCircle()
 pcall(function()
  local DoIt = true
  spawn(function()
   while DoIt do task.wait()
    FOV_CIRCLE.Position = Vector2.new(Mouse.X, (Mouse.Y + 36))
   end
  end)
 end)
end coroutine.wrap(MoveFovCircle)()

Mouse.KeyDown:Connect(function(KeyPressed)
 if KeyPressed == (_G.AimKey:lower()) then
  if SilentAim == false then
   FOV_CIRCLE.Color = Color3.new(0, 1, 0)
   SilentAim = true
  elseif SilentAim == true then
   FOV_CIRCLE.Color = Color3.new(1, 0, 0)
   SilentAim = false
  end
 end
end)
Mouse.KeyDown:Connect(function(Rejoin)
 if Rejoin == "=" then 
  game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
 end
end)

setreadonly(mt, false)
mt.__index = newcclosure(function(self, What)
 local Fir = mt_index(self, What)
 local Mir = "Hit"
 local Tor = "Target"
 local Suff = "TargetPoint"
 local Jun = "UnitRay"
 local Corr = Mouse
 if self == Corr and (What == Mir or What == Tor) then
  if SilentAim then
   EyeFrames()
   local TorsoWasHere = workspace:FindFirstChild("Apple")
   local Distance = 9e9
   local Target = nil
   for _, v in pairs(Players:GetPlayers()) do 
    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
     local Enemy = v.Character
     local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
     local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
     local World, ToSpace = workspace:FindPartOnRayWithIgnoreList(RayCast,  {LocalPlayer.Character:FindFirstChild("Head")})
     local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
     if RootWorld < 4 then
      local RootPartPosition, Visible = Camera:WorldToScreenPoint(Enemy[Options.Torso].Position)
      if Visible then
       local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
       if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
        Distance = Real_Magnitude
        Target = Enemy
       end
      end
     end
    end
   end

   TorsoWasHere.Size = Vector3.new(Target[Options.Torso].Size)
   TorsoWasHere.CFrame = Target[Options.Torso].CFrame
   local StartTick = tick()
   TorsoWasHere.Position = Target[Options.Torso].Position
   local Initial_PartPos = TorsoWasHere.Position task.wait()
   TorsoWasHere.Position = Target[Options.Torso].Position
   local ChangeInDisplacement = Target[Options.Torso].Position - Initial_PartPos
   local deltaTime = (tick() - StartTick)
   local Real_Velocity = (ChangeInDisplacement / deltaTime)
   local Predicted_Position = Target[Options.Torso].Position + (Real_Velocity * _G.Prediction + Vector3.new(0,-1,0))

   if Target then
    Fir = TorsoWasHere.CFrame + (Real_Velocity * _G.Prediction + Vector3.new(0,-1,0))
   end
   if What == "X" then
    Fir = UIS:GetMouseLocation().X
   end
   if What == "Y" then
    Fir = UIS:GetMouseLocation().Y
   end
   if What == Jun then
    Fir = Ray.new(self.Origin, (self.Hit - self.Origin).Unit)
   end
  end
 end
 return Fir
end)
setreadonly(mt, true)
task.wait(1)
setreadonly(mt, false)
mt.__index = (function(self, What)
 local Fitra = mt_index(self, What)
 local Mir = "Hit"
 local Core = "Target"
 local Module = Mouse
 if self == Module and (What == Mir or What == Core) then
  local Distance = 9e9
  local Targete = nil 
  if SilentAim then
   for _, v in pairs(Players:GetPlayers()) do 
    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
     local Enemy = v.Character 
     local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
     local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
     local World, ToSpace = workspace:FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
     local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
     if RootWorld < 4 then
      local RootPartPosition, Visible = Camera:WorldToScreenPoint(Enemy[Options.Torso].Position)
      if Visible then
       local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
       if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
        Distance = Real_Magnitude
        Targete = Enemy
       end
      end
     end
    end
   end
  end
  if Targete ~= nil and Targete[Options.Torso] and Targete:FindFirstChild("Humanoid").Health > 0 then
   if SilentAim then
    local ShootThis = Targete[Options.Torso]
    local Predicted_Position = ShootThis.CFrame + (ShootThis.AssemblyLinearVelocity * _G.Prediction + Vector3.new(0,-1,0))    
    return ((What == Mir and Predicted_Position) or (What == Core and Predicted_Position))
   end
  end
 end
 return Fitra
end)
setreadonly(mt, true)