while true do
   local arts = {
       [1] = 5000
    }
    game:GetService ("ReplicatedStorage").UpdateFPS:FireServer(unpack(args))
wait(0.01) 
end