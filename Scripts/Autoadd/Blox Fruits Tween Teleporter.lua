function TP2(P1)
                    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if Distance < 150 then
                        Speed = 20000
                    elseif Distance < 200 then
                        Speed = 5000
                    elseif Distance < 300 then
                        Speed = 1030
                    elseif Distance < 500 then
                        Speed = 725
                    elseif Distance < 1000 then
                        Speed = 365
                    elseif Distance >= 1000 then
                        Speed = 365
                    end
                    game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                        {CFrame = P1}
                    ):Play()
                    if _G.Stop_Tween==true then
                        game:GetService("TweenService"):Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                            {CFrame = P1}
                        ):Cancel()
                    end
                    _G.Clip = true
                    wait(Distance/Speed)
                    _G.Clip = false
                end
                    

                
                    local DiscordLib = loadstring(game:HttpGet"https://gist.githubusercontent.com/TheBeautiFullBeach/406a6956595916f2abaaeef8478c0164/raw/ae1362d7ea85fe289d627790521dca16fc3c8d55/PattayaBeach")()

                    local win = DiscordLib:Window("Lazium Blox Fruit")
            
                    local serv = win:Server("Main","")
            
                    local Island_Tab = serv:Channel("Teleport", "http://www.roblox.com/asset/?id=7040387707")


                    function TP_World1()
                        _G.TP_Ser = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                    end
                    function TP_World2()
                        _G.TP_Ser = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa") 
                    end
                    function TP_World3()
                        _G.TP_Ser = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    end
                    local placeId = game.PlaceId
if placeId == 2753915549 then
    Old_World = true
elseif placeId == 4442272183 then
    New_World = true
elseif placeId == 7449423635 then
    Three_World = true
end 
                    
                    Island_Tab:Label("World")
                    Island_Tab:Button("Teleport to World 1", function()
                      
                        TP_World1()
                    end)
                    Island_Tab:Button("Teleport to World 2", function()
                      
                        TP_World2()
                    end)
                    
                    Island_Tab:Button("Teleport to World 3", function()
                      
                        TP_World3()
                    end)
                    
                    Island_Tab:Label("Map")
                    if Old_World then
                    Island_Tab:Button("Wild Mill", function()
                        TP2(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
                    end)
                
                    Island_Tab:Button("Marine 1st", function()
                        TP2(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
                    end)
                
                    Island_Tab:Button("Marine 2nd", function()
                        TP2(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
                    end)
                
                    Island_Tab:Button("Midle Town", function()
                        TP2(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
                    end)
                
                    Island_Tab:Button("Jungle", function()
                        TP2(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
                    end)
                
                    Island_Tab:Button("Pirate Village", function()
                        TP2(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
                    end)
                
                    Island_Tab:Button("Desert", function()
                        TP2(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
                    end)
                
                    Island_Tab:Button("Frozen Village", function()
                        TP2(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
                    end)
                
                    Island_Tab:Button("Colosseum", function()
                        TP2(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
                    end)
                
                    Island_Tab:Button("Prison", function()
                        TP2(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
                    end)
                
                    Island_Tab:Button("Mob Leader", function()
                        TP2(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
                    end)
                
                    Island_Tab:Button("Magma Village", function()
                        TP2(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
                    end)
                
                    Island_Tab:Button("UnderWater Gate", function()
                        TP2(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
                    end)
                
                    Island_Tab:Button("UnderWater City", function()
                        TP2(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
                    end)
                
                    Island_Tab:Button("Fountain City", function()
                        TP2(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
                    end)
                
                    Island_Tab:Button("Sky 1st", function()
                        TP2(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
                    end)
                
                    Island_Tab:Button("Sky 2nd", function()
                        TP2(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
                    end)
                
                    Island_Tab:Button("Sky 3rd", function()
                        TP2(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
                    end)
                
                elseif New_World then

                    Island_Tab:Button("Dock", function()
                        TP2(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
                    end)
                
                    Island_Tab:Button("Mansion", function()
                        TP2(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
                    end)
                
                    Island_Tab:Button("Kingdom Of Rose", function()
                        TP2(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
                    end)
                
                    Island_Tab:Button("Cafe", function()
                        TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                    end)
                
                    Island_Tab:Button("Sunflower Field", function()
                        TP2(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
                    end)
                
                    Island_Tab:Button("Jeramy Mountain", function()
                        TP2(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
                    end)
                
                    Island_Tab:Button("Colossuem", function()
                        TP2(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
                    end)
                
                    Island_Tab:Button("Factory", function()
                        TP2(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
                    end)
                
                    Island_Tab:Button("The Bridge", function()
                        TP2(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
                    end)
                
                    Island_Tab:Button("Green Bit", function()
                        TP2(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
                    end)
                
                    Island_Tab:Button("Graveyard", function()
                        TP2(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
                    end)
                
                    Island_Tab:Button("Dark Area", function()
                        TP2(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
                    end)
                
                    Island_Tab:Button("Snow Mountain", function()
                        TP2(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
                    end)
                
                    Island_Tab:Button("Hot Island", function()
                        TP2(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
                    end)
                
                    Island_Tab:Button("Cold Island", function()
                        TP2(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
                    end)
                
                    Island_Tab:Button("Ice Castle", function()
                        TP2(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
                    end)
                
                    Island_Tab:Button("Usopp's Island", function()
                        TP2(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
                    end)
                
                    Island_Tab:Button("inscription Island", function()
                        TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
                    end)
                
                    Island_Tab:Button("Forgotten Island", function()
                        TP2(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
                    end)
                
                    Island_Tab:Button("Ghost Ship", function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end)
                
                    Island_Tab:Button("Mini Sky", function()
                        TP2(CFrame.new(-262.11901855469, 49325.69140625, -35272.49609375))
                    end)
                
                elseif Three_World  then
                    Island_Tab:Button("Port Town", function()
                        TP2(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
                    end)
                
                    Island_Tab:Button("Hydra Island", function()
                        TP2(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
                    end)
                    
                    Island_Tab:Button("Gaint Tree", function()
                        TP2(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
                    end)
                    
                    Island_Tab:Button("Zou Island", function()
                        TP2(CFrame.new(-10034.40234375, 331.78845214844, -8319.6923828125))
                    end)
                    
                    Island_Tab:Button("PineApple Village", function()
                        TP2(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))
                    end)
                    
                    Island_Tab:Button("Mansion", function()
                        TP2(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))
                    end)
                
                    Island_Tab:Button("Castle on the Sea", function()
                        TP2(CFrame.new(-5498.0458984375, 313.79473876953, -2860.6022949219))
                    end)
                
                    Island_Tab:Button("Graveyard Island", function()
                        TP2(CFrame.new(-9515.07324, 142.130615, 5537.58398))
                    end)
                    Island_Tab:Button("Haunted Castle",function()
                        TP2(CFrame.new(-8932.86, 143.258, 6063.31))
                    end)
                    Island_Tab:Button("Raid Lab", function()
                        TP2(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                    end)
                
                    Island_Tab:Button("Mini Sky", function()
                        TP2(CFrame.new(-263.66668701172, 49325.49609375, -35260))
                    end)
                    Island_Tab:Button("Ice Cream Island",function()
                        TP2(CFrame.new(-691.829, 371.943, -11106.4))
                    end)
                    Island_Tab:Button("Soa of Cake",function()
                        TP2(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))
                    end)
                    Island_Tab:Button("Cake Loaf",function()
                        TP2(CFrame.new(-2099.33, 66.9971, -12128.6))
                    end)
                end