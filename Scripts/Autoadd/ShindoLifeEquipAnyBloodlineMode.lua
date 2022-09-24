local bloodlineNumber = 1 -- Which bloodline slot you want to equip the mode for

game:GetService("Players").LocalPlayer.startevent:FireServer("equipkg", game:GetService("Players").LocalPlayer.statz.main["kg"..tostring(bloodlineNumber)])