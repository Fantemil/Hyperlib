local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "â ï¸RustWareâ ï¸",
   LoadingTitle = "â ï¸RustWareâ ï¸",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "RustWare"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local AimbotTab = Window:CreateTab("Aimbot/ESP", 4483362458) -- Title, Image
local AimbotSection = AimbotTab:CreateSection("Aimbot/ESP")

Rayfield:Notify({
   Title = "Successfuly Injected â ï¸RUSTWAREâ ï¸",
   Content = "RustWare Was Injected",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Excited AF",
         Callback = function()
         print("The user tapped Excited AF")
      end
   },
},
})
                        --Aimbot Part
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
                AimbotTab:CreateToggle({
                    Name = toggleName,
                    CurrentValue = false,
                    Flag = flag,
                    Callback = function(Value)
                        local teamCheck = false
                        local fov = 80
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
            createAimAssist("Aimbot (FOV Circle)", "Toggle1", true)

local Toggle = AimbotTab:CreateToggle({
   Name = "ESP (CAN NOT TURN OFF)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
            end,
})

                local MiscTab = Window:CreateTab("ð²Misc", nil) -- Title, Image
                local MiscSection = MiscTab:CreateSection("ð²Misc")

        local Slider = MiscTab:CreateSlider({
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
            -- Speed boost related functions and variables
            local Slider = MiscTab:CreateSlider({
               Name = "WalkSpeed (DO NOT RUN IT WILL STOP THE SPEEDHACK)",
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
        local Slider = MiscTab:CreateSlider({
           Name = "JumpPower (Currently Not Working",
           Range = {1, 350},
           Increment = 1,
           Suffix = "Speed",
           CurrentValue = 16,
           Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
           Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
           end,
        })

                local InfoTab = Window:CreateTab("ð£ï¸Info", nil) -- Title, Image
                local InfoSection = InfoTab:CreateSection("ð£ï¸Info")

               local Button = InfoTab:CreateButton({
                Name = "If You Need Help Add Me On Discord",
                Callback = function()
                    print("Shrek")
                end,
            })
        
            local Button = InfoTab:CreateButton({
                Name = "Discord : thegoatedtee",
                Callback = function()
                    print("shrek")
                end,
            })
            
            local Button = InfoTab:CreateButton({
                Name = "This Is My First Ever Script So I Hope You Like It LOL",
                Callback = function()
                    print("shrek")
                end,
            })
