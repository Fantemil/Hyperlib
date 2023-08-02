local EnemiesFolder = workspace.enemies
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local HitTI = TweenInfo.new(.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

local GetClosestToCursor = function()
   local closestDistance = math.huge
   local closestEnemy = nil

   for _, enemy in pairs(EnemiesFolder:GetChildren()) do
       if not enemy:FindFirstChild("Head") then continue end
       if not enemy:FindFirstChildOfClass("Humanoid") then continue end
       if enemy.Humanoid.Health <= 0 then continue end
       local screenPos, visible = workspace.CurrentCamera:WorldToViewportPoint(enemy.Head.Position)

       if not visible then continue end

       local distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
       if distance < closestDistance then
           closestEnemy = enemy
           closestDistance = distance
       end
   end

   return closestEnemy
end

local ClosestEnemy = GetClosestToCursor()
RunService.Stepped:Connect(function(time, deltaTime)
   ClosestEnemy = GetClosestToCursor()
end)

local Highlight = function(ClosestEnemy)
   local hl = Instance.new("Highlight")
   hl.Adornee = ClosestEnemy
   hl.FillColor = Color3.fromRGB(255, 0, 0)
   hl.FillTransparency = .2
   hl.OutlineColor = Color3.fromRGB(200, 0, 0)
   hl.OutlineTransparency = .2
   hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
   hl.Parent = ClosestEnemy
   local t = TweenService:Create(hl, HitTI, {FillTransparency = 1, OutlineTransparency= .8})
   t.Completed:Connect(function()
       hl:Destroy()
   end)
   t:Play()
end

local old; old = hookmetamethod(game, "__index", function(this, index)
   if not checkcaller() and this == Mouse and index == "Hit" then
       if ClosestEnemy then
           task.spawn(Highlight, ClosestEnemy)
           return ClosestEnemy.Head.CFrame
       end
   end

   return old(this, index)
end)