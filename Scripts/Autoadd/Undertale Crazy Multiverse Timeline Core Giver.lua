getgenv().G = true
while getgenv().G do
wait()
for i = 1,100 do
game:GetService("Workspace").Give13Core.AddFear:FireServer()
end
end