local plr = game.Players.LocalPlayer

while task.wait() do
   if plr.PlayerGui:WaitForChild("Core_UI"):WaitForChild("Power_F"):WaitForChild("Percentage_Label").Text == "100%" then
       keyrelease(0x51)
   end
end