getgenv().a = false

while getgenv().a == true do
    game:GetService("Workspace").Give15point.AddFear:FireServer()
    task.wait()
end
-- Open source to see how retarded the developer is. Peak stupidity.