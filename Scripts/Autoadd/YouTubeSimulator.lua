  getgenv().farmer = true -- change to false to disable

while wait(0.1) do
    if getgenv().farmer == true then
        game:GetService("ReplicatedStorage").VideoMade:FireServer()
    end
end