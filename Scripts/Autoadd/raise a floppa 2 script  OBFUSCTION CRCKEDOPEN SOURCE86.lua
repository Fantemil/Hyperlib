 if game.PlaceId == 9772878203 or game.PlaceId == 9921522947 then

        --//UI Library\\--
        local UI = loadstring(game:HttpGet'https://raw.githubusercontent.com/matthewsaechao/yea-yea/main/yeah%20monkey')()

        --//Variables\\--
        getgenv().speed = nil
        getgenv().jump = nil
        getgenv().gravity = nil
        local db = false
        local previousPosition = nil
        local player = game.Players.LocalPlayer
        local head = player.Character.Head
        local touch = "TouchInterest"

        --//Title\\--
        UI.Title.Text = "raise a floppa 2" -- Title

        --//Tabs\\--
        UI.newTab("AutoFarm") -- Makes a new tab
        UI.newTab("Teleport")
        UI.newTab("LocalPlayer")
        UI.newTab("Misc")
        UI.newTab("Controls")
        UI.newTab("ChangeLog")
        UI.newTab("Credits")

        --//Check Boxes\\--
        UI.newCheckBox(UI["AutoFarm"],'Auto Pet Floppa',function(value) -- Makes a toggle box
                getgenv().auto = value;

                while getgenv().auto and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "ProximityPrompt" and v.Parent.Parent.Name == "Floppa"  then
                                                previousPosition = player.Character:FindFirstChild('HumanoidRootPart').CFrame;
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Parent.CFrame
                                                v.HoldDuration = 0
                                                wait(0.25)
                                                fireproximityprompt(v, 0)
                                                wait(5.125)
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = previousPosition
                                                wait(0.15)
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Click Floppa',function(value1) -- Makes a toggle box
                getgenv().auto1 = value1;

                while getgenv().auto1 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "ClickDetector" and v.Parent.Name == "Floppa" then
                                                fireclickdetector(v, 0)
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Click Baby Floppa',function(value11) -- Makes a toggle box
                getgenv().auto11 = value11;

                while getgenv().auto11 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "ClickDetector" and v.Parent.Name == "Baby Floppa" then
                                                fireclickdetector(v, 0)
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Collect Money',function(value2) -- Makes a toggle box
                getgenv().auto2 = value2;

                while getgenv().auto2 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == touch and v.Parent.Name == "Money" or v.Parent.Name == "Money Bag" then
                                                firetouchinterest(v.Parent, player.Character.Head, 0)
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Clean Poop',function(value3) -- Makes a toggle box
                getgenv().auto3 = value3;

                while getgenv().auto3 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "ProximityPrompt" and v.Parent.Name == "Poop" then
                                                previousPosition = player.Character:FindFirstChild('HumanoidRootPart').CFrame;
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Parent.PoopPart.CFrame
                                                v.HoldDuration = 0
                                                wait(0.25)
                                                fireproximityprompt(v, 0)
                                                wait(0.25)
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = previousPosition
                                                wait()
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Refill Bowl',function(value4) -- Makes a toggle box
                getgenv().auto4 = value4;

                while getgenv().auto4 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "Part" and v.Transparency == 1 and v.Parent.Name == "Bowl" then
                                                previousPosition = player.Character:FindFirstChild('HumanoidRootPart').CFrame;
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = v.CFrame
                                                game:GetService("ReplicatedStorage").Events.Unlock:FireServer("Floppa Food", "the_interwebs")
                                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                        if v.ClassName == "Tool" and v.Name == "Floppa Food" then
                                                                v.Parent = game.Players.LocalPlayer.Character
                                                        end
                                                end
                                                wait(0.25)
                                                fireproximityprompt(game:GetService("Workspace")["Key Parts"].Bowl.Part.ProximityPrompt, 0)
                                                wait(0.25)
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = previousPosition
                                                wait()
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Refill Baby Bowl',function(value5) -- Makes a toggle box
                getgenv().auto5 = value5;

                while getgenv().auto5 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "Part" and v.Transparency == 1 and v.Parent.Name == "Baby Bowl" then
                                                previousPosition = player.Character:FindFirstChild('HumanoidRootPart').CFrame;
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = v.CFrame
                                                game:GetService("ReplicatedStorage").Events.Unlock:FireServer("Floppa Food", "the_interwebs")
                                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                        if v.ClassName == "Tool" and v.Name == "Floppa Food" then
                                                                v.Parent = game.Players.LocalPlayer.Character
                                                        end
                                                end
                                                wait(0.25)
                                                fireproximityprompt(game:GetService("Workspace").Unlocks["Baby Bowl"].Part.ProximityPrompt, 0)
                                                wait(0.25)
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = previousPosition
                                                wait()
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Collect Seed',function(value6) -- Makes a toggle box
                getgenv().auto6 = value6;

                while getgenv().auto6 and wait() do
                        pcall(function()
                                for i,v in pairs(workspace:GetDescendants()) do
                                        if v.Name == "ProximityPrompt" and v.Parent.Name == "Seed" then
                                                previousPosition = player.Character:FindFirstChild('HumanoidRootPart').CFrame;
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Parent.CFrame
                                                wait(0.25)
                                                fireproximityprompt(v, 0)
                                                wait(0.25)
                                                player.Character:FindFirstChild('HumanoidRootPart').CFrame = previousPosition
                                                wait()
                                        end
                                end
                        end)
                end
        end)

        UI.newCheckBox(UI["AutoFarm"],'Auto Save Game',function(value10) -- Makes a toggle box
                getgenv().auto10 = value10;

                while getgenv().auto10 and wait(0.1) do
                        pcall(function()
                                game:GetService("ReplicatedStorage").Events.Save:FireServer()
                        end)
                end
        end)

        --//Text Box\\--
        UI.newTextBox(UI["LocalPlayer"],'WalkSpeed Here','EX: 100',function(value7) --  Makes a drop down ui
                getgenv().speed = value7
        end)

        --//Buttons\\--
        UI.newButton(UI["Teleport"],'Teleport To The House',function()
                player.Character:SetPrimaryPartCFrame(CFrame.new(-61.2766342, 73.4749908, -45.5349274, 1, 0, 0, 0, 1, 0, 0, 0, 1))
        end)

        UI.newButton(UI["Teleport"],'Teleport To The Basement',function()
                player.Character:SetPrimaryPartCFrame(CFrame.new(-61.2766342, 55.4000092, -45.5349274, 1, 0, 0, 0, 1, 0, 0, 0, 1))
        end)

        UI.newButton(UI["Teleport"],'Teleport To The 2nd Floor',function()
                player.Character:SetPrimaryPartCFrame(CFrame.new(-61.2769814, 91.4000015, -45.5656471, 0.999943316, 1.08184253e-07, 0.0106457798, -1.08477465e-07, 1, 2.69653402e-08, -0.0106457798, -2.81186399e-08, 0.999943316))
        end)

        UI.newButton(UI["Teleport"],'Teleport Outside',function()
                player.Character:SetPrimaryPartCFrame(CFrame.new(-25.556757, 68.5935745, -52.7689552, 0.0135790808, 4.44510206e-08, -0.999907792, 3.90526615e-08, 1, 4.4985466e-08, 0.999907792, -3.96599233e-08, 0.0135790808))
        end)

        UI.newButton(UI["Teleport"],'Teleport To The Town',function()
                player.Character:SetPrimaryPartCFrame(CFrame.new(25.0254192, 68.6998291, -107.668022, 0.758785963, -8.80618742e-08, -0.651340067, 3.57894834e-08, 1, -9.35077082e-08, 0.651340067, 4.76412154e-08, 0.758785963))
        end)

        UI.newButton(UI["Teleport"],'Teleport To The Backrooms',function()
                player.Character:SetPrimaryPartCFrame(CFrame.new(-156.285934, -1216.10034, -37.3406448, -0.999998569, -1.07626576e-07, -0.0016847339, -1.07619584e-07, 1, -4.2425885e-09, 0.0016847339, -4.06127221e-09, -0.999998569))
        end)

        UI.newButton(UI["LocalPlayer"],'Set WalkSpeed',function()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().speed
        end)

        UI.newButton(UI["Misc"],'Anti AFK',function()
                loadstring(game:HttpGet'https://raw.githubusercontent.com/matthewsaechao/antiafk/main/yeah%20anti%20afk')()
        end)

        UI.newButton(UI["Misc"],'Go On PC',function()
                fireproximityprompt(game:GetService("Workspace")["Key Parts"].PC.ProximityPrompt, 0)
        end)

        --//Labels\\--
        UI.newLabel(UI["Controls"],'Right-Ctrl | This Toggles The GUI',function()
        end)

        UI.newLabel(UI["ChangeLog"],'≡ƒôô ChangeLog ≡ƒôô',function()
        end)

        UI.newLabel(UI["ChangeLog"],'V1.2.2',function()
        end)

        UI.newLabel(UI["ChangeLog"],'- Added Auto Click Baby Floppa',function()
        end)

        UI.newLabel(UI["Credits"],'Made By Psygen#4817',function()
        end)

        UI.newLabel(UI["Credits"],'This UI Library was NOT made by me!',function()
        end)

        UI.newLabel(UI["Credits"],'Credits to the original owner(s) that created this UI Library.',function()
        end)

        --//Text Box\\--
        UI.newTextBox(UI["LocalPlayer"],'JumpPower Here','EX: 250',function(value8) --  Makes a drop down ui
                getgenv().jump = value8
        end)

        --//Buttons\\--
        UI.newButton(UI["LocalPlayer"],'Set JumpPower',function()
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = getgenv().jump
        end)

        --//Text Box\\--
        UI.newTextBox(UI["LocalPlayer"],'Gravity Here','EX: 12',function(value9) --  Makes a drop down ui
                getgenv().gravity = value9
        end)

        --//Buttons\\--
        UI.newButton(UI["LocalPlayer"],'Set Gravity',function()
                workspace.Gravity = getgenv().gravity
        end)
else
        game.Players.LocalPlayer:Kick("Wrong game! The game is called raise a floppa 2")
end
