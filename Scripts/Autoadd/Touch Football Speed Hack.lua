-- Speed

--Create a local variable to store the speed
local speed = 30
 
--Create a function to set the character's speed
function SetSpeed(newSpeed)
    speed = newSpeed
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = newSpeed
end
 
--Call the SetSpeed function to set the speed to 50
SetSpeed(30)
 
--Create a loop to permanently change the speed
while true do
    SetSpeed(speed)
    wait(0.0)
end