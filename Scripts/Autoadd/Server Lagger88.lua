getgenv().Boom = true
while getgenv().Boom == true do task.wait()
    if getgenv().Boom == true then
        for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
            if v.Body:FindFirstChild("glass") then
                game:GetService("ReplicatedStorage").Events.DCar:FireServer(v.Body.glass,"1")
            elseif v.Name == "Dune Buggy" then
                game:GetService("ReplicatedStorage").Events.DCar:FireServer(v.Body.exhaust,"1")
            else
                game:GetService("ReplicatedStorage").Events.DCar:FireServer(v.Body.body,"1")
            end
        end
    end
end