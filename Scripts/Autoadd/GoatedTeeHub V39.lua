                -- Load Rayfield library
            local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    
            -- Create the main window
            local Window = Rayfield:CreateWindow({
                Name = "ðGoatedTeeHubð",
                LoadingTitle = "Loading ðGoatedTeeHubð",
                LoadingSubtitle = "By TheGoatedTee",
                ConfigurationSaving = {
                    Enabled = true,
                    FolderName = nil,
                    FileName = "GoatedTeeHub"
                },
                Discord = {
                    Enabled = false,
                    Invite = "noinvitelink",
                    RememberJoins = true
                },
                KeySystem = true,
                KeySettings = {
                    Title = "ðGoatedTeeHubð KEY | Key is below",
                    Subtitle = "TheGoatedTee",
                    Note = "Look At The Title And Read It",
                    FileName = "Key",
                    SaveKey = true,
                    GrabKeyFromSite = false,
                    Key = {"TheGoatedTee"}
                }
            })
            
            -- Create the main tab
            local MainTab = Window:CreateTab("Main/MostUseful", 4483362458)
            
            -- Notification upon script load
            Rayfield:Notify({
                Title = "Notification ð",
                Content = "Execution Successful",
                Duration = 6.5,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "kys",
                        Callback = function()
                            print("The user tapped kys")
                        end
                    }
                },
            })
            
            -- Aim assist related functions and variables
            local aimAssistLoop
            local FOVring
            
            local function removeAimAssist()
                if aimAssistLoop then
                    aimAssistLoop:Disconnect()
                    aimAssistLoop = nil
                end
                if FOVring then
                    FOVring:Remove()
                    FOVring = nil
                end
                print("Aim assist removed")
            end
            
            local function createAimAssist(toggleName, flag, withRedCircle)
                MainTab:CreateToggle({
                    Name = toggleName,
                    CurrentValue = false,
                    Flag = flag,
                    Callback = function(Value)
                        local teamCheck = false
                        local fov = 150
                        local smoothing = 1
            
                        local RunService = game:GetService("RunService")
                        local UserInputService = game:GetService("UserInputService")
            
                        if withRedCircle and not FOVring then
                            FOVring = Drawing.new("Circle")
                            FOVring.Visible = true
                            FOVring.Thickness = 1.5
                            FOVring.Radius = fov
                            FOVring.Transparency = 1
                            FOVring.Color = Color3.fromRGB(255, 128, 128)
                            FOVring.Position = workspace.CurrentCamera.ViewportSize / 2
                        end
            
                        local function getClosest(cframe)
                            local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
                            local target = nil
                            local mag = math.huge
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or not teamCheck) then
                                    local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
                                    if magBuf < mag then
                                        mag = magBuf
                                        target = v
                                    end
                                end
                            end
                            return target
                        end
            
                        if Value then
                            aimAssistLoop = RunService.RenderStepped:Connect(function()
                                local pressed = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
                                local localPlay = game.Players.LocalPlayer.Character
                                local cam = workspace.CurrentCamera
                                local zz = workspace.CurrentCamera.ViewportSize / 2
            
                                if pressed then
                                    local curTar = getClosest(cam.CFrame)
                                    if curTar then
                                        local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
                                        ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
                                        if (ssHeadPoint - zz).Magnitude < fov then
                                            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
                                        end
                                    end
                                end
            
                                if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
                                    removeAimAssist()
                                end
                            end)
                        else
                            removeAimAssist()
                        end
                    end
                })
            end
            
            -- Create aim assist toggles
            createAimAssist("Aimbot With FOV Circle", "Toggle1", true)
            createAimAssist("Aimbot Without FOV Circle", "Toggle2", false)
            
            -- Speed boost related functions and variables
            local Slider = MainTab:CreateSlider({
               Name = "WalkSpeed",
               Range = {1, 350},
               Increment = 1,
               Suffix = "Speed",
               CurrentValue = 16,
               Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
               Callback = function(Value)
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
               end,
            })
            -- JumpPower and yes i do type allof these -- things and type them all cause im improving everyday!
        local Slider = MainTab:CreateSlider({
           Name = "JumpPower",
           Range = {1, 350},
           Increment = 1,
           Suffix = "Speed",
           CurrentValue = 16,
           Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
           Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
           end,
        })
    
            -- Debug message to confirm script execution
            print("Script loaded successfully")

        local Slider = MainTab:CreateSlider({
           Name = "Spinbot",
           Range = {1, 50},
           Increment = 1,
           Suffix = "Speed",
           CurrentValue = 5,
           Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
           Callback = function(Value)
               local speed = 50

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
           end,
        })

                local Button = MainTab:CreateButton({
                Name = "ESP",
                Callback = function()
                    print("Shrek") 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
                end,
            })

                local Button = MainTab:CreateButton({
                Name = "TriggerBot",
                Callback = function()
                    print("Shrek")
             loadstring(game:HttpGet("https://raw.githubusercontent.com/UselessManS90/TriggerBot/main/TriggBot"))()
                end,
            })

                local Button = MainTab:CreateButton({
                Name = "If You Need Help Add Me On Discord",
                Callback = function()
                    print("Shrek")
                end,
            })
        
            local Button = MainTab:CreateButton({
                Name = "Discord : thegoatedtee",
                Callback = function()
                    print("shrek")
                end,
            })
            
            local Button = MainTab:CreateButton({
                Name = "This Is My First Ever Script So I Hope You Like It LOL",
                Callback = function()
                    print("shrek")
                end,
            })
