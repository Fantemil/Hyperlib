game:GetService('VirtualInputManager'):SendKeyEvent(true,'J',false,fool)
wait(1)
getgenv().Loop = true -- change this to false to disable

while Loop == true do

if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'A' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'A',false,fool)
end
if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'T' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'T',false,fool)
end
if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'Z' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'Z',false,fool)
end
if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'S' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'S',false,fool)
end
if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'W' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'W',false,fool)
end
if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'D' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'D',false,fool)
end
if game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text == 'Q' then
   game:GetService('VirtualInputManager'):SendKeyEvent(true,'Q',false,fool)
end
wait()
end