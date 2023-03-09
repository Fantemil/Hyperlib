getgenv().money = true
while getgenv().money do task.wait()
for i = 1,8 do
game:GetService("ReplicatedStorage").RemoteEvent.Deposit:FireServer(0.5)
end
end