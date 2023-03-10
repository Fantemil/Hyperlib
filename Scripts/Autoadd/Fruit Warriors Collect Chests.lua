while true do task.wait()
task.wait()
for i,v in pairs(game:GetService("ReplicatedStorage").Chests:GetChildren()) do
local args = {[1] = v.Name}game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChestsPick"):FireServer(unpack(args))
end
end