getgenv().autoclick = true
while getgenv().autoclick == true do
workspace.Events.AddClick:FireServer()
task.wait()
end