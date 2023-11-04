local LPlayer = game:GetService("Players").LocalPlayer

local remote = game:GetService("ReplicatedStorage").BulletFireSystem.FireBullet
local LMouse = LPlayer:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local fovAmount = 200
local teamCheck = false

local fovCircle = Drawing.new("Circle")
fovCircle.Radius = fovAmount
fovCircle.Visible = true
fovCircle.Color = Color3.fromRGB(212, 34, 255)
fovCircle.Thickness = 1
fovCircle.NumSides = 12
fovCircle.Position = Vector2.new(0, 0)

local function UpdateFovCircle()
   local mousePos = Camera.WorldToViewportPoint(Camera, LMouse.Hit.Position)
   fovCircle.Radius = fovAmount
   fovCircle.Position = Vector2.new(mousePos.X, mousePos.Y)
end

local function IsInFov(position)
   local mousePos = Vector2.new(LMouse.X, LMouse.Y)
   local screenPosition, isVisible = Camera:WorldToViewportPoint(position)
   local distanceToMouse = (mousePos - Vector2.new(screenPosition.X, screenPosition.Y)).Magnitude
   return isVisible and distanceToMouse <= fovAmount
end

local function GetClosestPlayer()
   local ClosestDistance, ClosestPlayer = math.huge, nil

   for _, Player in game:GetService("Players"):GetPlayers() do
       if Player ~= LPlayer then
           local Character = Player.Character
           if Character and Character:FindFirstChild("Humanoid") and Character.Humanoid.Health > 0 then
               local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
               if
                   HumanoidRootPart
                   and IsInFov(HumanoidRootPart.Position)
                   and (not teamCheck or Player.Team ~= LPlayer.Team)
               then
                   local screenPosition, isVisible = Camera:WorldToViewportPoint(HumanoidRootPart.Position)
                   if isVisible then
                       local distanceToMouse = (LMouse.X - screenPosition.X) ^ 2
                           + (LMouse.Y - screenPosition.Y) ^ 2
                       if distanceToMouse < ClosestDistance then
                           ClosestPlayer = Player
                           ClosestDistance = distanceToMouse
                       end
                   end
               end
           end
       end
   end

   return ClosestPlayer
end
game:GetService("RunService").RenderStepped:Connect(UpdateFovCircle)

local oldNamecall

oldNamecall = hookmetamethod(remote, "__namecall", newcclosure(function(self, ...)
   if typeof(self) == "Instance" then
       local method = getnamecallmethod()
       if method and (method == "FireServer" and self == remote) then
           local target = GetClosestPlayer()
           local targetchar = target and target.Character or nil
           local targetHumanoidRootPart = targetchar and targetchar:FindFirstChild("HumanoidRootPart") or nil
           local targetHead = targetchar and targetchar:FindFirstChild("Head") or nil
           if targetHumanoidRootPart and targetHead then
               local remArgs = {...}
               remArgs[2] = targetHead
               remArgs[3] = targetHead.Position
               setnamecallmethod(method)
               return oldNamecall(self, unpack(remArgs))
           else
               setnamecallmethod(method)
           end
       end
   end
   return oldNamecall(self, ...)
end))