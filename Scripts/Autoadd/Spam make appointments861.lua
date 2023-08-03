while task.wait() do
plrs = game.Players:GetChildren()
for i = 1,#plrs do
local v = plrs[i]
task.wait()
game:GetService("ReplicatedStorage").Remotes.CreateAppointment:InvokeServer(v.Name,"Dental Assistant","Cleaning","the employees dont brush")
end
end