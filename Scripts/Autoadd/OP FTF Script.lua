if game.PlaceId == 893973440 or game.PlaceId == 1738581510 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/bedra45/Random-games-xd/main/bedraFtfFinalGUI"))()
else
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Note!",
Text = "Please Join Flee the facility first."
})
end