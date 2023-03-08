getgenv().Prediction =  (  .15  )   -- [ PREDICTION: Lower Prediction: Lower Ping | Higher Prediction: Higher Ping  ]

getgenv().FOV_SIZE =  (  80  )   -- [ FOV RADIUS: Increases Or Decreases FOV Radius ]

getgenv().AimKey =  (  "c"  )  -- [ TOGGLE KEY: Toggles Silent Aim On And Off ]

getgenv().DontShootThesePeople = {  -- [ WHITELIST: List Of Who NOT To Shoot, edit like this. "Contain quotations with their name and then a semi-colon afterwards for each line" ; ]

    "Pres3ly";
 "h3IIshots";

}

--[[
  Do Not Edit Anything Beyond This Point. 
]]

local placeholdval = false
if game.PlaceId == 4753520418 then
 placeholdval = true
else
 game:GetService("Players").LocalPlayer:Kick("LEARN TO READ SPED") task.wait(.5)
 while true do end
end

local DebounceLock = true
local LocalPlayer = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local Mouse = LocalPlayer:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local UserInputService = game:GetService("UserInputService")
local connections = getconnections(game:GetService("LogService").MessageOut)
for _, v in ipairs(connections) do
 v:Disable()
end

getconnections = getconnections
mousemoverel = mousemoverel
getgenv = getgenv
Drawing = Drawing

local FOV_CIRCLE = Drawing.new("Circle")
FOV_CIRCLE.Visible = true
FOV_CIRCLE.Filled = false
FOV_CIRCLE.Thickness = 1
FOV_CIRCLE.Transparency = .7
FOV_CIRCLE.Color = Color3.new(0.2, 0.403922, 0.603922)
FOV_CIRCLE.Radius = getgenv().FOV_SIZE
FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

local Options = {
 Torso = "HumanoidRootPart";
 Head = "Head";
}

local function MoveFovCircle()
 pcall(function()
  local DoIt = true
  spawn(function()
   while DoIt do task.wait()
    FOV_CIRCLE.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
   end
  end)
 end)
end coroutine.wrap(MoveFovCircle)()

game:GetService("Workspace").Camera:Destroy()
game:GetService("Workspace"):WaitForChild("Camera")
if game:GetService("Workspace").Camera then
 game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
 game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character
end

getgenv().Redirect = { -- do not touch.
 "Pres3ly";
 "h3IIshots";
}

local function CameraNormalLock()
 if DebounceLock then
  local Target = nil
  local Distance = 9e9 task.wait()
  local Players = game:GetService("Players")
  local LocalPlayer = game:GetService("Players").LocalPlayer
  local Camera = game:GetService("Workspace").CurrentCamera
  for _, v in pairs(Players:GetPlayers()) do 
   if not table.find(getgenv().DontShootThesePeople, v.Name) then
    if not table.find(getgenv().Redirect, v.Name) then
     if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
      local Enemy = v.Character 
      local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
      local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
      local World, ToSpace = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
      local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
      if RootWorld < 4 then  
       local RootPartPosition, Visible = Camera:WorldToViewportPoint(Enemy[Options.Torso].Position)
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
  end 
  if Target ~= nil and Target:FindFirstChild("HumanoidRootPart") and Target:FindFirstChild("Humanoid").Health > 0 then
   pcall(function()
    while DebounceLock do task.wait()
     local Predicted_Position = Target[Options.Head].Position + (Target[Options.Head].AssemblyLinearVelocity * tonumber(getgenv().Prediction) + Vector3.new(0,-.5,0))
     Camera.CFrame = CFrame.new(Camera.CFrame.Position, Predicted_Position)
    end
   end)
  end
 end
end

Mouse.KeyDown:Connect(function(KeyPressed)
 if KeyPressed == (getgenv().AimKey:lower()) then
  if DebounceLock == false then
   DebounceLock = true
   CameraNormalLock()
  elseif DebounceLock == true then
   DebounceLock = false
  end
 end
end)
Mouse.KeyDown:Connect(function(Rejoin)
 if Rejoin == "=" then
  local LocalPlayer = game:GetService("Players").LocalPlayer
  game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
 end
end)

--Farewell Atman, Nosss, Toru.