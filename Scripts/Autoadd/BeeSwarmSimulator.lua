 local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() 
           local w = library:CreateWindow("Bee Swarm Sim")

           local b = w:CreateFolder("Main Functions")


           b:Label("Credits: V3RMillion-Banckielol03, Discord-mario1234#6807",Color3.fromRGB(38,38,38),Color3.fromRGB(100, 149, 237))


           b:Button("Royal Yelly esp",function()
               for i,v in pairs(game.Workspace.Collectibles:GetChildren()) do
                   if v:IsA("Part") then
                       print(v.Name)
                       local BillboardGui = Instance.new('BillboardGui')
                       local TextLabel = Instance.new('TextLabel')
                       
                       BillboardGui.Parent = v
                       BillboardGui.AlwaysOnTop = true
                       BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                       BillboardGui.StudsOffset = Vector3.new(0,2,0)
                       
                       TextLabel.Parent = BillboardGui
                       TextLabel.BackgroundColor3 = Color3.new(1,1,1)
                       TextLabel.BackgroundTransparency = 1
                       TextLabel.Size = UDim2.new(1, 0, 1, 0)
                       TextLabel.Text = "Royal Jelly"
                       TextLabel.TextColor3 = Color3.new(0, 0, 128)
                       TextLabel.TextScaled = true
                   end
               end
           end)

           b:Button("AntChallenge",function()
           local args = {
               [1] = "Ant Challenge"
           }              
           game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args))
           end)

           --[[b:Dropdown("SetHiveFromLeftToRight",{"1","2","3","4","5","6"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
           local hivelocation
               if mob == "1" then
                   hivelocation = "-18.0081329, 1.1846807, 330.952393, 2.37226486e-05, -0.0107664764, -0.999942064, -1, -2.37226486e-05, -2.348423e-05, -2.348423e-05, 0.999942064, -0.0107665062"
                   print(hivelocation)
               else
                   if mob == "2" then
                       hivelocation = "-51.4376984, 1.1846807, 330.950134, 2.37226486e-05, -0.0107664764, -0.999942064, -1, -2.37226486e-05, -2.348423e-05, -2.348423e-05, 0.999942064, -0.0107665062"
                       print(hivelocation)
                   else
                       if mob == "3" then
                           hivelocation = "-84.6782761, 1.1846807, 330.947845, 2.37226486e-05, -0.0107664764, -0.999942064, -1, -2.37226486e-05, -2.348423e-05, -2.348423e-05, 0.999942064, -0.0107665062"
                           print(hivelocation)
                       else
                           if mob == "4" then
                               hivelocation = "-118.183502, 1.1846807, 330.945526, 2.37226486e-05, -0.0107664764, -0.999942064, -1, -2.37226486e-05, -2.348423e-05, -2.348423e-05, 0.999942064, -0.0107665062"
                               print(hivelocation)
                           else
                               if mob == "5" then
                                   hivelocation = "-151.658691, 1.1846807, 330.943115, 2.37226486e-05, -0.0107664764, -0.999942064, -1, -2.37226486e-05, -2.348423e-05, -2.348423e-05, 0.999942064, -0.0107665062"
                                   print(hivelocation)
                               else
                                   if mob == "6" then
                                       hivelocation = "-184.949341, 1.1846807, 330.940887, 2.37226486e-05, -0.0107664764, -0.999942064, -1, -2.37226486e-05, -2.348423e-05, -2.348423e-05, 0.999942064, -0.0107665062"
                                       print(hivelocation)
                                   end
                               end
                           end
                       end
                   end
               end
           end)--]]


           b:Toggle("Collect all tokens",function(bool1)
               if bool1 then
                   getgenv().collect = true
               else
                   getgenv().collect = false
               end
           end)

           b:Toggle("AutoFarm",function(bool)
               if bool then
                   getgenv().autofarm = true
               else
                   getgenv().autofarm = false
               end
           end)

           b:Toggle("InstantConvertor",function(bool2)
               if bool2 then
                   getgenv().instantcon = true
               else
                   getgenv().instantcon = false
               end
           end)    

           b:Toggle("EggBossFarm",function(bool3)
               if bool3 then
                   getgenv().eggfarm = true
               else
                   getgenv().eggfarm = false
               end
           end)  

           b:Toggle("MonsterFarm",function(bool4)
               if bool4 then
                   getgenv().Commandochick = true
               else
                   print("no")
                   getgenv().Commandochick = false
               end
           end)  

           --b:Toggle("AutoSprout",function(bool4)
               --if bool4 then
                   --getgenv().autosprout = true
               --else
                   --getgenv().autosprout = false
               --end
           --end)  
           
           
           --b:Toggle("CollectAllRoyalJellys",function(bool4)
               --if bool4 then
                   --getgenv().royalje = true
               --else
                   --getgenv().royalje = false  
               --end
           --end)  

           b:DestroyGUI()

           b:GuiSettings()  

   while wait() do
           if getgenv().Commandochick == true then
               while wait() do
                   if getgenv().Commandochick == true then
                   for i,v in pairs(game.Workspace.Monsters:GetChildren()) do
                       for i,v in pairs(v:GetChildren()) do
                           print(v.Name)
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 35, 0)
                       end
                   end
               end
               end
               
           end
               if getgenv().eggfarm == true then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Monsters["Mondo Chick (Lvl 8)"].HumanoidRootPart.CFrame * CFrame.new(0, 35, 0)
               end
               if getgenv().autofarm == true then
                   if game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value == game:GetService("Players").LocalPlayer.CoreStats.Capacity.Value then
                       if getgenv().instantcon == true  then
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.074753, 182.571198, -216.329956)
                           local args = {
                               [1] = "Instant Converter C"
                           }
                           game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args))

                       else
                   mouse1release()
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-85.6702118, 4.7365818, 331.119934)
                   local args = {
                       [1] = "ToggleHoneyMaking"
                   }
                   game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(unpack(args))
                   getgenv().honeyplacing = true
                   while wait() do
                       if getgenv().honeyplacing == true then
                           print("HoneyConferting")
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-84.5307541, 4.7365818, 332.832977)
                       else
                           return beginning
                       end
                   end
               end
               else
                   getgenv().honeyplacing = false
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83.4030762, 176.474335, -168.025574)
                   mouse1press()
                   keypress(0x44)
                   wait(1.5)
                   keyrelease(0x44)
                   wait()
                   keypress(0x41)
                   wait(3)
                   keyrelease(0x41)
               end
               end
               if getgenv().collect == true then
                   for i,v in pairs(game.Workspace.Collectibles:GetChildren()) do
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                   end
               end
           end