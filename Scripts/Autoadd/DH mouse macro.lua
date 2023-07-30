local Player = game:GetService("Players").LocalPlayer
            local Mouse = Player:GetMouse()
            local SpeedGlitch = false
            Mouse.KeyDown:Connect(function(Key)
                if Key == "q" then
                    SpeedGlitch = not SpeedGlitch
                    if SpeedGlitch == true then
                        repeat game:GetService("RunService").Heartbeat:wait()
                               game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", true, game)
                                    game:GetService("RunService").Heartbeat:wait()
                                    game:GetService("VirtualInputManager"):SendMouseWheelEvent("0", "0", false, game)
                                    game:GetService("RunService").Heartbeat:wait()
                        until SpeedGlitch == false
                    end
                end
            end)