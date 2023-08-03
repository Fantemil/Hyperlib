getgenv().auto = true -- change to false if u want to stop
while task.wait(0.01) and auto do
local args = {
    [1] = "roll",
    [2] = false}
game:GetService("ReplicatedStorage").Remotes.DataChange_Online:FireServer(unpack(args))
local args = {
    [1] = "roll",
    [2] = true}
game:GetService("ReplicatedStorage").Remotes.DataChange_Online:FireServer(unpack(args))
end