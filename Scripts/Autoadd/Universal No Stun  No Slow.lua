-- Settings

-- DISCLAIMER: THIS CAN EASILY GET YOU BANNED IF THE GAME DETECTS IT
-- NOTE: MAY WONT WORK ON SOME GAMES

_G.Hold = false
_G.Tp = false -- Keep false if hold is true
_G.TpDistance = CFrame.new(0, 0, 2) -- |2 = behind  |-2 = front| less = less distance
_G.Key = "G"
_G.ManualSpeedSetupKey = "L"
_G.Speed = 25 -- Too high will make people know ur exploiting
_G.NoStun = 0.5 -- For this ammount of time you will have no stun
_G.autoSetNormalSpeed = true
_G.manuallySetNormalSpeed = false -- Press L to set it will copy ur current speed
_G.normalSpeed = 18 -- Set manually from the script

-- Scripts

local plr = game:GetService("Players").LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local Holding = false

if _G.autoSetNormalSpeed == true then

_G.normalSpeed = hum.WalkSpeed

end

game:GetService("UserInputService").InputBegan:Connect(function(input, typing)
   
if typing then

return

else
   
   if input.KeyCode == Enum.KeyCode[_G.Key] then
     
      if _G.Tp == false then
       hum.WalkSpeed = _G.Speed
       task.wait(_G.NoStun)
       hum.WalkSpeed = _G.normalSpeed
       Holding = true
       print("Hehe")
      else
   
   char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * _G.TpDistance
       
      end
   elseif input.KeyCode == Enum.KeyCode[_G.ManualSpeedSetupKey] then
        if _G.ManualSpeedSetupKey == true then
        normalSpeed = hum.WalkSpeed
        end
       end
   end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input, typing)
   
if typing then

return

else
   
   if input.KeyCode == Enum.KeyCode[_G.Key] then
     
       Holding = false
       
      end
   end
end)


while task.wait() do
 
  if _G.Hold == true and Holding == true then
     
              hum.WalkSpeed = _G.Speed
             
  elseif Holding == false and _G.Hold == true then
             
       hum.WalkSpeed = _G.normalSpeed
     
   end
end