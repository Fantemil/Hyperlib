function LOL()
    while true do wait()
        local args = {
            [1] = Vector3.new(-424.33880615234375, 75.30953979492188, -409.3331604003906)
        }   

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("CoinEvent"):FireServer(unpack(args))
    end
end
while true do wait()
    task.spawn(LOL)
end