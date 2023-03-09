local players = game:GetService('Players')
local input = game:GetService('UserInputService')
local replicated = game:GetService("ReplicatedStorage")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()

local function nearestTarget(bone : string)
   local info = {
       distance = math.huge,
       player = nil,
       character = nil,
       bone = nil
   }

   for _, player in next, players.GetPlayers(players) do
       if player == localPlayer then continue end
       local areFriendly = player.Team == localPlayer.Team
       local character = player.Character

       local bone = character and character.FindFirstChild(character, bone)
       local humanoid = character and character.FindFirstChild(character, 'Humanoid')
       if areFriendly or not bone or not humanoid or humanoid.Health <= 0 then continue end

       local screenPoint, onScreen = camera.WorldToScreenPoint(camera, bone.Position)
       if not onScreen then continue end
       local mousePosition = input.GetMouseLocation(input)
       local distance = (Vector2.new(screenPoint.x, screenPoint.y) - mousePosition).magnitude
       if distance > info.distance then continue end
     
       info = {
           distance = distance,
           player = player,
           character = character,
           point = screenPoint,
           bone = bone
       }
   
   end

   return info
end

local index
index = hookmetamethod(game, '__index', function(self, key)
   if self == mouse and key == 'X' or key == 'Y' then
       local nearest = nearestTarget('Head')
       if nearest.point then
           return nearest.point[key]
       end    
   end
   return index(self, key)
end)

for i, v in next, replicated.Remote.Weapon:GetChildren() do
   v.Changed:Connect(function()
       v.Name = i
   end)
end


local namecall
namecall = hookmetamethod(game, '__namecall', function(self, ...)
   local args = {...}
   local method = getnamecallmethod()
   local name = self.Name
   
   if name == 'ReportDeployed' then
       return
   end

   if name == 'Render' then
       --table.insert(args[3], workspace.Map)
       local nearest = nearestTarget('Head')
       if nearest.bone then
           replicated.Remote.Weapon['9']:FireServer(nearest.player, workspace.Camera.CFrame.p, nearest.bone.Position) -- dunno if its even doing anything but yeah
       end  
   end
   
   return namecall(self, table.unpack(args))
end)