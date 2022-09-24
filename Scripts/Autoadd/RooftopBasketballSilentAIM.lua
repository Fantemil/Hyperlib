local Camera = workspace.CurrentCamera
Holding = false
function findGoals()
   for i,v in pairs(game.workspace:GetDescendants()) do
       if v.Name == "Net" then
               local aa = "Lock"
               v.Parent = game.Workspace
               v.Name = aa
           end
       end
   end
local function findClosestPart(position)
   local closestPart, closestPartMagnitude
   local tmpMagnitude
   for i, v in pairs(workspace:GetChildren()) do
       if v.Name == 'Lock' then
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
findGoals()
local UIS = game:GetService('UserInputService')
UIS.InputBegan:connect(function(Input, GPE)
   if not GPE and Input.KeyCode == Enum.KeyCode.X then
       local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
       Holding = true
       repeat
           wait(0.01)
       local argument1 = "shoot"
       local argument2 = lookthat.Position + Vector3.new(0, 70, 0)
       local s = nil
local a = 70


game.workspace[game.Players.LocalPlayer.Name].Ball.CSC:FireServer(argument1,argument2)
       local magnitudee = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - lookthat.Position).Magnitude
       print(magnitudee)
       until Holding == false
   end
end)

UIS.InputEnded:connect(function(Input, GPE)
   if not GPE and Input.KeyCode == Enum.KeyCode.X then
       Holding = false
   end
end)
I=0