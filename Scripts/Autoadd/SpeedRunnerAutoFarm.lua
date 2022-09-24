--NVM ig ppl need to wait again 

wait(2)

if game.PlaceId == 6452292184 


then

while true do

wait(2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(67.470932, -3, 10783.3018, -1, 0, 0, 0, 1, 0, 0, 0, -1)

wait(4)

print("teleporting!") -- 

wait(5) -- lower = more chance to crash 
game.TeleportService:Teleport(6452292184)

end
end