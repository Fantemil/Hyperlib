getgenv().delay = 5 -- delay between keys
getgenv().tool = "Pushup" -- the tool you want, for example: Squat

for i,v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren()) do
   if v.Name == getgenv().tool then
       v.Parent = game:GetService('Players').LocalPlayer.Character
       mouse1click()
       task.wait(1)
       mouse1click()
       task.wait(3)
       getgenv().autotool = true; -- change to false for stop
       while getgenv().autotool do task.wait()
           local Letter2 = game:GetService("Players").LocalPlayer.PlayerGui.EventKey.Button
           if Letter2.Text == "D" then
               game:GetService("VirtualInputManager"):SendKeyEvent(true, "D", false, game)
               task.wait(getgenv().delay)
           elseif
           Letter2.Text == "S" then
               game:GetService("VirtualInputManager"):SendKeyEvent(true, "S", false, game)
               task.wait(getgenv().delay)
           elseif
           Letter2.Text == "A" then
               game:GetService("VirtualInputManager"):SendKeyEvent(true, "A", false, game)
               task.wait(getgenv().delay)
           elseif
           Letter2.Text == "W" then
               game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
           end
       end
   end
end