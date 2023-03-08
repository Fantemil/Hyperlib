-- Speed

--Create a local variable to store the speed
local speed = 50
 
--Create a function to set the character's speed
function SetSpeed(newSpeed)
    speed = newSpeed
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = newSpeed
end
 
--Call the SetSpeed function to set the speed to 50
SetSpeed(50)
 
--Create a loop to permanently change the speed
while true do
    SetSpeed(speed)
    wait(0.1)
end


-- Noclip 
local player = game.Players.LocalPlayer
local character = player.Character
local torso = character:WaitForChild("Head")

local function onTouched(part)
 if part:IsA("BasePart") then
  part.CanCollide = false
  wait(5)
  part.CanCollide = true
 end
end

torso.Touched:Connect(onTouched)