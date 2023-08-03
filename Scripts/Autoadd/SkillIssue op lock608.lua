            game.StarterGui:SetCore("SendNotification", {
                Title = "SkillIssue.CC";
                Text = "BEAM SKIDS";
            
            })
                    local CC = game:GetService"Workspace".CurrentCamera
                local Plr
                local enabled = false
                local accomidationfactor = 0.12241
                local mouse = game.Players.LocalPlayer:GetMouse()
                local placemarker = Instance.new("Part", game.Workspace)
                local guimain = Instance.new("Folder", game.CoreGui)
            
                function makemarker(Parent, Adornee, Color, Size)
                    local e = Instance.new("BillboardGui", Parent)
                    e.Name = "PP"
                    e.Adornee = Adornee
                    e.Size = UDim2.new(Size, Size2, Size, Size2)
                    e.AlwaysOnTop = true
                    local a = Instance.new("Frame", e)
                    a.Size = UDim2.new(4, 0, 4, 0)
                    a.BackgroundTransparency = 0.4
                    a.BackgroundColor3 = Color
                    local g = Instance.new("UICorner", a)
                    g.CornerRadius = UDim.new(0, 0)
                    return(e)
                end
            
                local data = game.Players:GetPlayers()
                function noob(player)
                    local character
                    repeat wait() until player.Character
                    local handler = makemarker(guimain, player.Character:WaitForChild("HumanoidRootPart"), Color3.fromRGB(0), 0.0, 0)
                    handler.Name = player.Name
                    player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("HumanoidRootPart") end)
            
                    local TextLabel = Instance.new("TextLabel", handler)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Position = UDim2.new(0, 0, 0, -50)
                    TextLabel.Size = UDim2.new(0, 0, 0, 0)
                    TextLabel.Font = Enum.Font.SourceSansSemibold
                    TextLabel.TextSize = 14
                    TextLabel.TextColor3 = Color3.new(1, 1, 1)
                    TextLabel.TextStrokeTransparency = 0
                    TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                    TextLabel.Text = "Name: "..player.Name
                    TextLabel.ZIndex = 10
            
                    spawn(function()
                        while wait() do
                            if player.Character then
                                TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                            end
                        end
                    end)
                end
            
                for i = 1, #data do
                    if data[i] ~= game.Players.LocalPlayer then
                        noob(data[i])
                    end
                end
            
                game.Players.PlayerAdded:connect(function(Player)
                    noob(Player)
                end)
            
                spawn(function()
                    placemarker.Anchored = true
                    placemarker.CanCollide = false
                    placemarker.Size = Vector3.new(.08,.08,.08)
                    placemarker.Transparency = 0
                    makemarker(placemarker, placemarker, Color3.fromRGB(255, 0, 0), .16, 0)
                end)    
                
                mouse.KeyDown:Connect(function(k)
                    if k ~= "q" then return end
                    if enabled then
                        enabled = false
                        game.StarterGui:SetCore("SendNotification", {
                Title = "SkillIssue.CC";
                Text = "Unlocked";
            })
                    else
                        enabled = true 
                        Plr = getClosestPlayerToCursor()
                        game.StarterGui:SetCore("SendNotification", {
                Title = "SkillIssue.CC";
                Text = "LockedOnTo: "..tostring(Plr.DisplayName);
            
            })
                        
                    end
                end)
            
                    
                        function getClosestPlayerToCursor()
                            local closestPlayer
                            local shortestDistance = math.huge
                    
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                                    if magnitude < shortestDistance then
                                        closestPlayer = v
                                        shortestDistance = magnitude
                                    end
                                end
                            end
                            return closestPlayer
                        end
            
                game:GetService"RunService".Stepped:connect(function()
                    if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                        placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
                    else
                        placemarker.CFrame = CFrame.new(0, 9999, 0)
                    end
                end)
            
                local mt = getrawmetatable(game)
                local old = mt.__namecall
                setreadonly(mt, false)
                mt.__namecall = newcclosure(function(...)
                    local args = {...}
                    if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                        return old(unpack(args))
                    end
                    return old(...)
                end)
