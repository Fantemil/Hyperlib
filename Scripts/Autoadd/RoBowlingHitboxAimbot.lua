local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")

local remote = game:GetService("ReplicatedStorage").ServerRemote

function getPinPos()
   for i,v in pairs(workspace.FunctionalAssets.BowlingLanes:GetDescendants()) do
       if v:IsA("StringValue") and v.Value == plr.Name then
           return v.Parent.PinPositions.Pin1.Position
       else
           local dist, pos = 9e9
           for i,v in pairs(workspace.FunctionalAssets.BowlingLanes:GetDescendants()) do
               if v.Name ~= "PinController" and string.find(v.Name:lower(), "pin") and v:IsA("BasePart") then
                   print(v.Name)
                   local mag = (plr.Character.Head.Position - v.Position).Magnitude
                   if dist > mag then
                       dist = mag
                       pos = v.Position
                   end
               end
           end
           return pos
       end
   end
end

function throwBall()
   if plr.Character:FindFirstChild("BowlingBallPractise") then
       local ball = plr.Character:FindFirstChild("BowlingBallPractise")
       local pos = getPinPos()
       
       if pos and ball then
           local arguments = {
               [1] = "ThrowBall",
               [2] = {
                   ["Velocity"] = 150,
                   ["MouseData"] = {
                       ["Position"] = pos
                   }
               }
           }
           ball.HitBox.CanCollide = false
           ball.HitBox.Size = Vector3.new(10, 10, 10)
           remote:InvokeServer(unpack(arguments))
       end
   elseif plr.Character:FindFirstChild("BowlingBall") then
       local ball = plr.Character:FindFirstChild("BowlingBall")
       local pos = getPinPos()
       
       if pos and ball then
           local arguments = {
               [1] = "ThrowBall",
               [2] = {
                   ["Velocity"] = 150,
                   ["MouseData"] = {
                       ["Position"] = pos
                   }
               }
           }
           ball.HitBox.CanCollide = false
           ball.HitBox.Size = Vector3.new(6, 6, 6)
           remote:InvokeServer(unpack(arguments))
       end
   end
end

function keyPress(key, gpe)
   if not gpe and key.KeyCode == Enum.KeyCode.X then
       throwBall()
   end
end

uis.InputBegan:Connect(keyPress)