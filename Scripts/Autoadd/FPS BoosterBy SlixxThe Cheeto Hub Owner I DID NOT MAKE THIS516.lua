getgenv().boostFPS = true -- // changing true to false will turn it off

local vim = game:GetService("VirtualInputManager")
setfpscap(5000)

game.DescendantAdded:Connect(function(d)
   if d.Name == "MainView" and d.Parent.Name == "DevConsoleUI" and boostFPS then
       task.wait()
       local screen = d.Parent.Parent.Parent
       screen.Enabled = false;
       d.Visible = false;
   end
end)

vim:SendKeyEvent(true, "F9", 0, game)    
wait()
vim:SendKeyEvent(false, "F9", 0, game)  

while true do
   task.wait()
   if not boostFPS then
       continue;
   end

   warn("")
end