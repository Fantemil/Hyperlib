game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent) --Teleport to End = P
    if inputObject.KeyCode == Enum.KeyCode.P then
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(626, 4, -985039)
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(0.1)
        pl.CFrame = location
       
    end
end)

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)--Max speed = K
    if inputObject.KeyCode == Enum.KeyCode.K then
        getgenv().WalkSpeedValue = 99999999999;
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end
end)

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)--Click Teleport press O to activate press e while hovering with your mouse over the area you want to be teleported to
    if inputObject.KeyCode == Enum.KeyCode.O then

        plr = game.Players.LocalPlayer
        hum = plr.Character.HumanoidRootPart
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)

        if key == "e" then
       
            if mouse.Target then
       
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
       
            end
       
        end
       
    end)
       
    end
end)