 --Vars

        LocalPlayer = game:GetService("Players").LocalPlayer

        Camera = workspace.CurrentCamera

        VirtualUser = game:GetService("VirtualUser")

        MarketplaceService = game:GetService("MarketplaceService")

        

        --Get Current Vehicle

        function GetCurrentVehicle()

            return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent

        end

        

        --Regular TP

        function TP(cframe)

            GetCurrentVehicle():SetPrimaryPartCFrame(cframe)

        end

        

        --Velocity TP

        function VelocityTP(cframe)

            TeleportSpeed = math.random(600, 600)

            Car = GetCurrentVehicle()

            local BodyGyro = Instance.new("BodyGyro", Car.PrimaryPart)

            BodyGyro.P = 5000

            BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)

            BodyGyro.CFrame = Car.PrimaryPart.CFrame

            local BodyVelocity = Instance.new("BodyVelocity", Car.PrimaryPart)

            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)

            BodyVelocity.Velocity = CFrame.new(Car.PrimaryPart.Position, cframe.p).LookVector * TeleportSpeed

            wait((Car.PrimaryPart.Position - cframe.p).Magnitude / TeleportSpeed)

            BodyVelocity.Velocity = Vector3.new()

            wait(0.1)

            BodyVelocity:Destroy()

            BodyGyro:Destroy()

        end

        

        --Auto Farm

        StartPosition = CFrame.new(Vector3.new(4940.19775, 66.0195084, -1933.99927, 0.343969434, -0.00796990748, -0.938947022, 0.00281227613, 0.999968231, -0.00745762791, 0.938976645, -7.53822824e-05, 0.343980938), Vector3.new())

        EndPosition = CFrame.new(Vector3.new(1827.3407, 66.0150146, -658.946655, -0.366112858, 0.00818905979, 0.930534422, 0.00240773871, 0.999966264, -0.00785277691, -0.930567324, -0.000634518801, -0.366120219), Vector3.new())

        AutoFarmFunc = coroutine.create(function()

            while wait() do

                if not AutoFarm then

                    AutoFarmRunning = false

                    coroutine.yield()

                end

                AutoFarmRunning = true

                pcall(function()

                    if not GetCurrentVehicle() and tick() - (LastNotif or 0) > 5 then

                        LastNotif = tick()

                    else

                        TP(StartPosition + (TouchTheRoad and Vector3.new(0,0,0) or Vector3.new(0, 0, 0)))

                        VelocityTP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 0, 0)))

                        TP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 0, 0)))

                        VelocityTP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 0, 0)))

                    end

                end)

            end

        end)

        

        --Anti AFK

        AntiAFK = true

        LocalPlayer.Idled:Connect(function()

            VirtualUser:CaptureController()

            VirtualUser:ClickButton2(Vector2.new(), Camera.CFrame)

        end)

        

        local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Simak90/pfsetcetc/main/fluxed.lua"))() -- UI Library

                local win = lib:Window("MaxHub", "Signed By JMaxeyy", Color3.fromRGB(255, 0, 0), _G.closeBind) -- done mess with

            

                ---------Spins--------------------------------

                local Visual = win:Tab("Farm Section", "http://www.roblox.com/asset/?id=6023426915")

                Visual:Label("Farms")

                Visual:Line()

                

                Visual:Toggle("Auto Farm", "Activates farm. Get in car to start",false, function(value)

                    AutoFarm = value

                        if value and not AutoFarmRunning then

                            coroutine.resume(AutoFarmFunc)

                        end

                end)

                Visual:Toggle("TouchTheRoad", "doesnt work for some cars",false, function(value)

                    TouchTheRoad = value

                end)

                Visual:Toggle("AntiAFK", "simulates keypressing",false, function(value)

                    AntiAFK = value

                end)