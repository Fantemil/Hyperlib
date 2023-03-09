local Player = game.Players.LocalPlayer
local Camera = workspace.CurrentCamera
Holding = false
e = false
isdoing = false
function findGoals()
for i, v in pairs(workspace:GetDescendants()) do
if v.Name == 'Goal' then
v.Parent = workspace
end
end
end
local function findClosestPart(position)
   local closestPart, closestPartMagnitude
   local tmpMagnitude
   for i, v in pairs(workspace:GetChildren()) do
       if v.Name == 'Goal' then
           if closestPart then
               tmpMagnitude = (position - v.Position).magnitude
               if tmpMagnitude < closestPartMagnitude then
                   closestPart = v
                   closestPartMagnitude = tmpMagnitude
               end
           else
               closestPart = v
               closestPartMagnitude = (position - v.Position).magnitude
           end
       end
   end
   return closestPart
end
--//vb
local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera
local character = player.Character
local head = character.Head
local torso = character.Torso
findGoals()
local function cam()
   while wait() do
       if isdoing == true then
         local pos = head.Position
     local partyGoal = findClosestPart(head.Position)
     local lookAt = partyGoal.Position + Vector3.new(0,90,0)
     local mag = (character.PrimaryPart.Position - partyGoal.Position).magnitude
     local cameraCFrame = CFrame.new(pos, lookAt)
     Camera.CFrame = cameraCFrame
     else
         return nil
     end
   end
   end

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child)
local pv = game.Players.LocalPlayer.Character.Basketball
local UIS = game:GetService('UserInputService')

game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jumping:Connect(function()
    isdoing = true
    if game.Players.LocalPlayer.Character.Basketball then
           local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
       local pvm = (lookthat.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
       if pvm >= 30  then
           if pvm <=44 then
               pv.PowerValue.Value = 75
              cam()
         end
       end
           local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
       local pvm = (lookthat.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
       if pvm >= 45  then
           if pvm <=53 then
               pv.PowerValue.Value = 80
              cam()
         end
       end
local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
       local pvm = (lookthat.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
       if pvm >= 54  then
           if pvm <=66 then
                pv.PowerValue.Value = 85
              cam()
       
         end
       end
           local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
       local pvm = (lookthat.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
       if pvm >= 67  then
           if pvm <=76 then
pv.PowerValue.Value = 90
              cam()
                 
       
         end
end
           local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
       local pvm = (lookthat.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
       if pvm >= 77  then
           if pvm <=84 then
               pv.PowerValue.Value = 95
              cam()
           
end
end
local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
local pvm = (lookthat.Position - game.Players.LocalPlayer.Character.Torso.Position).magnitude
if pvm >= 85  then
if pvm <=91 then
pv.PowerValue.Value = 100
cam()
               
       
end
end
end
end)
end)

local UIS = game:service('UserInputService')
UIS.InputBegan:connect(function(l)
if l.UserInputType == Enum.UserInputType.MouseButton1 then
isdoing = false
end
end)