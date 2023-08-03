game only script


--Remove  "idhere" and replace it with the game id


if game.PlaceId == "idhere" then



Tp script

--remove "cords here" with your position  Add end) at the end if you dont have an end with your script

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new("cords here", "cords here", "cords here"))


Loop script


--Put your Number inside ()  0.1 is the fastest Remove end if you have an end already!


wait(0.1)

end



Welcome player.name script (kavo ui)



local player = game.Players.LocalPlayer

if player then

Section = Tab:NewSection ("Welcome, "..player.Name.."!")
	end