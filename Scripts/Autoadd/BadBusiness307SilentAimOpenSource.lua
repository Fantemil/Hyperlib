local input = game:GetService('UserInputService')
local replicated = game:GetService('ReplicatedStorage')
local players = game:GetService('Players')
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera

local tortoise = require(game:GetService('ReplicatedStorage').TS)
local reticle = tortoise.Input.Reticle
local characters = tortoise.Characters
local team = tortoise.Teams
local projectiles = tortoise.Projectiles

local weaponInfo = {}
for c,k in next, replicated.Items.Base:GetChildren() do
   local config = k:FindFirstChild('Config', true)
   if config then weaponInfo[k.Name] = require(config) end
end

local bulletInfo = getupvalue(projectiles.InitProjectile, 1)

local function getBulletData()
   local me = characters:GetCharacter(localPlayer)
   local backPack = me and me:FindFirstChild('Backpack')
   if not backPack then return end

   local equipped = backPack:FindFirstChild('Equipped')
   if not equipped then return end

   local projectile = weaponInfo[tostring(equipped.Value)]
   if not projectile or not projectile.Projectile then return end

   return bulletInfo[projectile.Projectile.Template]
end

local function predict(part : Instance)
   local distance = (part.Position - camera.CFrame.p).magnitude
   local bulletData = getBulletData()
   if not bulletData then return end

   local timeToHit = distance / bulletData.Speed
   local velocity = part.Velocity + Vector3.new(0, bulletData.Gravity * (timeToHit/2), 0)
   local hitPosition = part.Position + (velocity * timeToHit)

   return hitPosition
end

local function nearestTarget(bone : string)
   local info = {
       distance = math.huge,
       player = nil,
       character = nil,
       bone = nil
   }

   for _, player in next, players:GetPlayers() do
       if player == localPlayer then continue end
       local areFriendly = team:ArePlayersFriendly(player, localPlayer)
       local character = characters:GetCharacter(player)

       local body = (character and character:FindFirstChild('Body'))
       local bone = (body) and (body:FindFirstChild(bone))
       if areFriendly or not bone then continue end

       local screenPoint, onScreen = camera:WorldToScreenPoint(bone.Position)
       if not onScreen then continue end
       local mousePosition = input:GetMouseLocation()
       local distance = (Vector2.new(screenPoint.x, screenPoint.y) - mousePosition).magnitude
       if distance > info.distance then continue end
     
       info = {
           distance = distance,
           player = player,
           character = character,
           bone = bone
       }
   
   end

   return info
end

local reticleLookVector = reticle.LookVector
reticle.LookVector = function(...)
   local nearest = nearestTarget('Head')
   if nearest.player then
       local prediction = predict(nearest.bone)
       
       if prediction then
           print('yeah')
           return CFrame.new(camera.CFrame.p, prediction).lookVector
       end
   end

   return reticleLookVector(...)
end

-- Function check bypass
setupvalue(reticle.GetPosition, 1, reticle.LookVector)