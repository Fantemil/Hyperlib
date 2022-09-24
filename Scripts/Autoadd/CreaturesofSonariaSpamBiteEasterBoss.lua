getgenv().bite2 = true

task.spawn(function()
   while getgenv().bite2 == true do
       task.wait(0.1)
local ohString1 = "Bite"
local ohTable2 = {
[game:GetService("Workspace").NPCs.EasterBoss] = game:GetService("Workspace").NPCs.EasterBoss,
}

game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(ohString1, ohTable2)
end
end)