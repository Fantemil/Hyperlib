getgenv().lmao = not getgenv().lmao
task.spawn(function()
    while true do
        task.wait()
        if not getgenv().lmao then
            break
        end
        local args = {
            [1] = "Change Skintone",
            [2] = Color3.new(math.random(), math.random(), math.random())
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("Dress Up"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
end)