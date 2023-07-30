local Player = game:GetService("Players").LocalPlayer
            local Mouse = Player:GetMouse()
            local SpeedGlitch = false
            Mouse.KeyDown:Connect(function(Key)
                if Key == "x" then
                    SpeedGlitch = not SpeedGlitch
                    if SpeedGlitch == true then
                        repeat game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
                                    wait(0.000001)
                                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
                                    wait(0.000001)
                        until SpeedGlitch == false
                    end
                end
            end)