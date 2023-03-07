local player = game.Players.LocalPlayer
local root = player.Character:FindFirstChild("HumanoidRootPart")

function getBall()
   local dist = 10000
   local closest
   for i,v in pairs(game:GetService("Workspace").ClientBalls:GetChildren()) do
       if (root.Position - v.Position).Magnitude < dist then
           closest = v
           dist = (root.Position - v.Position).Magnitude
       end
   end
   return closest
end

function shoot(power)
   root = player.Character:WaitForChild("HumanoidRootPart")
   local rootpos = root.Position

   local ohCFrame3
   if player.UniformShirtId.Value == 11967283138 then
       ohCFrame3 = CFrame.lookAt(rootpos, game:GetService("Workspace").BigArena.Goal1.CFrame.Position + Vector3.new(0,0,math.random(-10,10)))
   elseif player.UniformShirtId.Value == 11988090225 then
       ohCFrame3 = CFrame.lookAt(rootpos, game:GetService("Workspace").BigArena.Goal2.CFrame.Position + Vector3.new(0,0,math.random(-10,10)))
   end
   game:GetService("ReplicatedStorage").UpdateHumanoidRootPart:FireServer(ohCFrame3)
   
   local ohNumber1 = power
   local ohCFrame2 = game:GetService("Workspace").Camera.CFrame
   local ohString3 = "Back"

   game:GetService("ReplicatedStorage").Kick:FireServer(ohNumber1, ohCFrame2, ohString3)
end

while task.wait() do
   root.CFrame = CFrame.new(getBall().CFrame.Position)
   shoot(-3)
end