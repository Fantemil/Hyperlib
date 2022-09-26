getgenv().on = true -- change to false to turn off
coroutine.wrap(function()
    while getgenv().on do 
        game:GetService("Workspace").Vehicles[game.Players.LocalPlayer.Name].VehicleSeat.CFrame = CFrame.new(math.random(1,100),2000,math.random(1,100))
        wait(6)
    end
end)()
while getgenv().on do 
    game:GetService("RunService").Heartbeat:wait()
    game:GetService("Workspace").Vehicles[game.Players.LocalPlayer.Name].VehicleSeat.Velocity = Vector3.new(600,1,math.random(200,300))
end