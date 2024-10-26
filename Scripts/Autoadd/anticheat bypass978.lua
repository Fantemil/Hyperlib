for _, con in next, getconnections(workspace.CurrentCamera.Changed) do
Â  task.wait()
Â  Â  con:Disable()
end
for _, con in next, getconnections(workspace.CurrentCamera:GetPropertyChangedSignal("CFrame")) do
Â  Â task.wait()
Â  Â  con:Disable()
end
