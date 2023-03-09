game:GetService('RunService').RenderStepped:connect(function()
wait()
game:GetService("ReplicatedStorage").Remotes.Functions.Spin:InvokeServer()
end)