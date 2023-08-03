          
          wait(7)
          -- Unfocused roblox
          local UserInputService = game:GetService("UserInputService")
          local RunService = game:GetService("RunService")          
              local WindowFocusReleasedFunction = function()
                  RunService:Set3dRenderingEnabled(false)
                  setfpscap(10)
                  return
              end
              local WindowFocusedFunction = function()
                  RunService:Set3dRenderingEnabled(true)
                  setfpscap(360)
                  return
              end
              local Initialize = function()
                  UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
                  UserInputService.WindowFocused:Connect(WindowFocusedFunction)
                  return
              end
              Initialize()
              -- instant skip room: https://raw.githubusercontent.com/scriptpastebin/raw/main/InstantSkipRoom
              wait(28)
               getgenv().ezwin = true
    
                local AutoNextDoor = true
                local CanSkipRoom_50 = true
                local CanAutoUnlockDoors = true
                local CanPullTheLevers = true
                local cooldown = true
                local cooldownwait = 0.5
              
                spawn(function()
                    while ezwin == true do
                        
    
                        local args = {[1] = {}}
                        game:GetService("ReplicatedStorage").Bricks.PreRunShop:FireServer(unpack(args))
    
                        local CF = CFrame.new
                        local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
                           
                        if AutoNextDoor == true then
                            if not cooldown then return end
                            pcall(function()
                                cooldown = false
                                local key = false
                                local lever = false
                                local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
                                for _,object in ipairs(CurrentDoor.Parent:GetDescendants()) do
                                    if object.Name == "KeyObtain" then
                                        key = object
                                    end
                                end
                                for _,object in ipairs(CurrentDoor.Parent:GetDescendants()) do
                                    if object.Name == "LeverForGate" then
                                        lever = object
                                    end
                                end
                                if LatestRoom.Value == 50 and CanSkipRoom_50 == true then
                                    wait()
                                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom.Value + 1)]:WaitForChild("Door")
                                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                                    wait()
                                else
                                    if key and CanAutoUnlockDoors == true then
                                        game.Players.LocalPlayer.Character:PivotTo(CF(key.Hitbox.Position))
                                        task.wait(.3)
                                        fireproximityprompt(key.ModulePrompt)
                                        task.wait(.3)
                                        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                                        task.wait(.3)
                                        fireproximityprompt(CurrentDoor.Lock.UnlockPrompt)
                                    end
                                    if lever and CanPullTheLevers == true then
                                        game.Players.LocalPlayer.Character:PivotTo(CF(lever.Main.Position))
                                        task.wait(.3)
                                        fireproximityprompt(lever.ActivateEventPrompt)
                                        task.wait(.3)
                                        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                                    end
                                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                                end
                                task.wait(.45)
                                CurrentDoor.ClientOpen:FireServer()
                                task.wait(cooldownwait)
                                cooldown = true
                            end)
                        end
                
                 wait()
                end
            end)
    
    -- Play Again after X seconds
            spawn(function()
                while ezwin == true do
                    print(">:(")
                    wait(125)
                    game:GetService("ReplicatedStorage").Bricks.Statistics:FireServer()
                    wait(.42)
                    game:GetService("ReplicatedStorage").Bricks.PlayAgain:FireServer()
                end
            end)
    