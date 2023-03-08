getgenv().Prediction =  (  .18  )   -- [ PREDICTION: Lower Prediction: Lower Ping | Higher Prediction: Higher Ping  ]
 
getgenv().FOV =  (  350  )   -- [ FOV RADIUS: Increases Or Decreases FOV Radius ]
 
getgenv().AimKey =  (  "c"  )  -- [ TOGGLE KEY: Toggles Silent Aim On And Off ]
 
getgenv().DontShootThesePeople = {  -- [ WHITELIST: List Of Who NOT To Shoot, edit like this. "Contain quotations with their name and then a semi-colon afterwards for each line" ; ]
 
 "AimLockPsycho";
 "JakeTheMiddleMan";
 
}
 
--[[
  Do Not Edit Anything Beyond This Point. 
]]
 
local SilentAim = true
local LocalPlayer = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local Mouse = LocalPlayer:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local connections = getconnections(game:GetService("LogService").MessageOut)
for _, v in ipairs(connections) do
 v:Disable()
end
 
getrawmetatable = getrawmetatable
setreadonly = setreadonly
getconnections = getconnections
hookmetamethod = hookmetamethod
getgenv = getgenv
Drawing = Drawing
 
local FOV_CIRCLE = Drawing.new("Circle")
FOV_CIRCLE.Visible = true
FOV_CIRCLE.Filled = false
FOV_CIRCLE.Thickness = 1
FOV_CIRCLE.Transparency = 1
FOV_CIRCLE.Color = Color3.new(0, 1, 0)
FOV_CIRCLE.Radius = getgenv().FOV
FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
 
Options = {
 Torso = "HumanoidRootPart";
 Head = "Head";
}
 
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
 if KeyPressed == (getgenv().AimKey:lower()) then
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
  local LocalPlayer = game:GetService("Players").LocalPlayer
  game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
 end
end)
 
 
local oldIndex = nil
oldIndex = hookmetamethod(game, "__index", function(self, Index, Screw)
 local Screw = oldIndex(self, Index)
 local kalk = Mouse
 local cc = "hit"
 local gboost = cc
 if self == kalk and (Index:lower() == gboost) then
  local Distance = 9e9
  local Target = nil
  local Players = game:GetService("Players")
  local LocalPlayer = game:GetService("Players").LocalPlayer
  local Camera = game:GetService("Workspace").CurrentCamera
  for _, v in pairs(Players:GetPlayers()) do 
   if not table.find(getgenv().DontShootThesePeople, v.Name) then
    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
     local Enemy = v.Character 
     local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
     local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
     local World, ToSpace = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
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
  end
 
  if Target ~= nil and Target[Options.Torso] and Target:FindFirstChild("Humanoid") and Target:FindFirstChild("Humanoid").Health > 0 then
   local Madox = Target[Options.Torso]
   local Formulate = Madox.CFrame + (Madox.AssemblyLinearVelocity * getgenv().Prediction + Vector3.new(0,-1,0)) 
   return (Index:lower() == gboost and Formulate)
  end
  return Screw
 end
 return oldIndex(self, Index, Screw)
end)
 
--Farewell Atman, Nosss, Toru.