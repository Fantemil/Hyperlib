local Toggle_Key = "q"

local Rejoin_Key = "="

local Prediction = .175 -- DO NOT ask for me for HELP for this shit I HATE when people do that. Figure it out on your own you have brain cells.

local Y_Axis_Aim_Height = -1

local Smoothness = 4 -- Don't go lower.

local FOV_Radius = 250

local FOV_Visible = false


--[[

 
 DO NOT edit anything below this point.


--]]


Drawing = Drawing
mousemoverel = mousemoverel


local Settings = {
 Head = "Head";
 Humanoid = "Humanoid";
 NeckOffSet = Vector3.new(0,tonumber(Y_Axis_Aim_Height),0);
};


local Locking = false
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()


local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = game:GetService("Workspace").CurrentCamera


local FOV_CIRCLE = Drawing.new("Circle")
FOV_CIRCLE.Filled = false
FOV_CIRCLE.Color = Color3.fromRGB(170, 255, 255)
FOV_CIRCLE.Radius = FOV_Radius
FOV_CIRCLE.Thickness = 1
FOV_CIRCLE.Visible = FOV_Visible
FOV_CIRCLE.Transparency = .35
FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)


local Move_Circle = nil
Move_Circle = RunService.RenderStepped:Connect(function()
 FOV_CIRCLE.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
end)


function InRadius()
 local Target = nil
 local Distance = 9e9
 local Camera = game:GetService("Workspace").CurrentCamera
 for _, v in pairs(Players:GetPlayers()) do 
  if v ~= LocalPlayer and v.Character and v.Character[Settings.Head] and v.Character[Settings.Humanoid] and v.Character[Settings.Humanoid].Health > 0 then
   local Enemy = v.Character 
   local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Settings.Head].CFrame.Position) * CFrame.new(0, 0, -4)
   local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
   local World, ToSpace = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character[Settings.Head]});
   local RootWorld = (Enemy[Settings.Head].CFrame.Position - ToSpace).magnitude
   if RootWorld < 4 then  
    local RootPartPosition, Visible = Camera:WorldToViewportPoint(Enemy[Settings.Head].Position)
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
 return Target
end


local Render_Lock = nil
function Aimbot()
 pcall(function()
  if Locking then
   local Enemy = InRadius()
   local Camera = game:GetService("Workspace").CurrentCamera
   local Predicted_Position = nil
   local GetPositionsFromVector3 = nil
   if Enemy ~= nil and Enemy[Settings.Humanoid] and Enemy[Settings.Humanoid].Health > 0 then  
    Render_Lock = RunService.Stepped:Connect(function()
     pcall(function() 
      if Locking and Enemy ~= nil and Enemy[Settings.Humanoid] and Enemy[Settings.Humanoid].Health > 0 then

       Predicted_Position = Enemy[Settings.Head].Position + (Enemy[Settings.Head].AssemblyLinearVelocity * Prediction + Settings.NeckOffSet)
       GetPositionsFromVector3 = Camera:WorldToScreenPoint(Predicted_Position)
       mousemoverel((GetPositionsFromVector3.X - Mouse.X) / Smoothness, (GetPositionsFromVector3.Y - Mouse.Y) / Smoothness)

      elseif Locking == false then
       Enemy = nil
      elseif Enemy == nil then
       Locking = false
      end
     end)
    end)
   end 
  end
 end)
end


Mouse.KeyDown:Connect(function(KeyPressed)
 if KeyPressed == string.lower(Toggle_Key) then
  pcall(function()
   if Locking == false then
    Locking = true
    Aimbot()
   elseif Locking == true then
    Locking = false
    Render_Lock:Disconnect()
   end
  end)
 end
end)


Mouse.KeyDown:Connect(function(Rejoin)
 if Rejoin == string.lower(Rejoin_Key) then
  game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer) task.wait()
 end
end);