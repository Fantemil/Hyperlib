getgenv().Enabled = true -- false to disable
-------------------------------------------
while getgenv().Enabled == true do
task.wait()
workspace.Events.AddClick:FireServer()
end