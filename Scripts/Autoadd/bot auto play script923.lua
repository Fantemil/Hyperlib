local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
local WalkSpeed = 20
local RunSpeed = 30

while true do
   local nearbyEnemies = game.WorkspaceEnemies:GetChildren()
   for i, enemy in ipairs(nearbyEnemies) do
      local enemyDistance = (enemy.Position - Player.Character.HumanoidRootPart.Position).magnitude
      if enemyDistance < 10 then
         FireServer("Attack", "small", "medium", "large")
         wait(1)
      end
   end

   local nearbyFood = game.WorkspaceFood:GetChildren()
   for i, food in ipairs(nearbyFood) do
      local foodDistance = (food.Position - Player.Character.HumanoidRootPart.Position).magnitude
      if foodDistance < 10 then
         FireServer("Eat", food.Name)
         wait(2)
      end
   end

   local nearbyParts = workspace.PartList:GetChildren()
   for i, part in ipairs(nearbyParts) do
      local partDistance = (part.Position - Player.Character.HumanoidRootPart.Position).magnitude
      if partDistance < 10 then
         FireServer("Kill", part.Name)
         wait(2)
      end
   end

   run()
end

function run()
   if Humanoid.Walking then
      Humanoid.WalkSpeed = WalkSpeed + 10
   else
      Humanoid.RunSpeed = RunSpeed + 10
   end

   if Humanoid.Walking then
      Humanoid.RootMotionEnabled = false
   else
      Humanoid.RootMotionEnabled = true
   end

end

