local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Pet Store Tycoon")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
--Toggle
b:Toggle("AutoFillWater (R)",function(bool)
    shared.toggle = bool
    AutoFillWaterR = bool
end)

b:Toggle("AutoFillWater (L)",function(bool)
    shared.toggle = bool
    AutoFillWaterL = bool
end)

b:Toggle("AutoFillFood",function(bool)
    shared.toggle = bool
    AutoFillFood = bool
end)

b:Toggle("NpcTalk",function(bool)
    shared.toggle = bool
    NpcTalk = bool
end)

b:Toggle("WalkPet",function(bool)
    shared.toggle = bool
    WalkPet = bool
end)

f:Toggle("AutoCollectButtons",function(bool)
    shared.toggle = bool
    AutoCollectButtons = bool
end)

f:Toggle("PayForElec",function(bool)
    shared.toggle = bool
    PayForElec = bool
end)

f:Toggle("Food",function(bool)
    shared.toggle = bool
    AutoBuyFood = bool
end)

f:Toggle("Dental Sticks",function(bool)
    shared.toggle = bool
    AutoBuyDentalSticks = bool
end)

e:Toggle("EscPets",function(bool)
    shared.toggle = bool
    EscPets = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end) 
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if AutoCollectButtons == true then
        if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
            game:GetService("CoreGui").PurchasePromptApp:Destroy()
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.MainUI:FindFirstChild("BuyMoneyUI") then
            game:GetService("Players").LocalPlayer.PlayerGui.MainUI.BuyMoneyUI:Destroy()
        end
        for i,v in pairs(game.workspace:GetDescendants()) do
            if v.ClassName == "StringValue" then
                if v.Value == game.Players.LocalPlayer.Name then
                    for i,v1 in pairs(v.Parent.BuyObjects:GetChildren()) do
                        v1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
                        wait()
                        v1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                        wait()
                    end
                end
            end
        end
    end

    if NpcTalk == true then
        for i,v in pairs(game.workspace:GetDescendants()) do
            if v.ClassName == "ClickDetector" then
                if v.Parent.Name == "MobileTalk" then
                    fireclickdetector(v, 0) 
                end
            end
        end
        wait(1)
    end
    
    if AutoFillWaterR == true then
        for i, v in pairs(game.workspace:GetDescendants()) do
            if v.ClassName == "StringValue" then
                if v.Value == game.Players.LocalPlayer.Name then
                    for i, v1 in pairs(v.Parent.ScriptableObjects:GetDescendants()) do
                        if v1.ClassName == "ClickDetector" then
                            for number = 1, 6 do
                                if AutoFillWaterR == true then
                                    if v1.Parent.Parent.Name == number .. "_Drink" then
                                        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                        fireclickdetector(v1, 0)
                                        fireclickdetector(v1, 1)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.ScriptableObjects.SinkButton.ParticlePart.CFrame.Position + Vector3.new(5, 0, 2))
                                        wait(1)
                                        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v.Parent.Building.Sink.Box.Position)
                                        for i = 1, 5 do
                                            mouse1press()
                                            mouse1release()
                                        end
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Events.PutDownBowl:FireServer(v1.Parent.Parent)
                                        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
                                        wait(1)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if AutoFillWaterL == true then
        for i, v in pairs(game.workspace:GetDescendants()) do
            if v.ClassName == "StringValue" then
                if v.Value == game.Players.LocalPlayer.Name then
                    for i, v1 in pairs(v.Parent.ScriptableObjects:GetDescendants()) do
                        if v1.ClassName == "ClickDetector" then
                            for number = 1, 6 do
                                if AutoFillWaterL == true then
                                    if v1.Parent.Parent.Name == number .. "_Drink" then
                                        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                        fireclickdetector(v1, 0)
                                        fireclickdetector(v1, 1)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.ScriptableObjects.SinkButton.ParticlePart.CFrame.Position + Vector3.new(-5, 0, -2))
                                        wait(1)
                                        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v.Parent.Building.Sink.Box.Position)
                                        for i = 1, 5 do
                                            mouse1press()
                                            mouse1release()
                                        end
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Events.PutDownBowl:FireServer(v1.Parent.Parent)
                                        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
                                        wait(1)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if AutoFillFood == true then
        for i,v in pairs(game.workspace:GetDescendants()) do
            if v.ClassName == "StringValue" then
                if v.Value == game.Players.LocalPlayer.Name then
                    for i=1,6 do
                        if v.Parent.ScriptableObjects[i.."_Food"].Food.Transparency == 1 then
                            game:GetService("ReplicatedStorage").Events.FillFood:FireServer(v.Parent.ScriptableObjects[i.."_Food"],"DefaultDogFood")
                        end
                    end
                end
            end
        end
    end
    
    if PayForElec == true then
        game:GetService("ReplicatedStorage").Events.PayBill:FireServer()
    end
    
    if AutoBuyFood == true then
        game:GetService("ReplicatedStorage").Events.Purchase:FireServer(1,"DefaultDogFood")
    end
    
    if AutoBuyDentalSticks == true then
        game:GetService("ReplicatedStorage").Events.Purchase:FireServer(1,"DentalSticks")
    end
    
    if EscPets == true then
        for i,v in pairs(game:GetService("Workspace").EscapedDogSpawns:GetChildren()) do
            game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position + Vector3.new(-3, 0, 0))
            wait(1)
            game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,v.Position)
            for i = 1, 5 do
                mouse1press()
                mouse1release()
            end
            game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
        end
    end
    
    if WalkPet == true then
        for i,v in pairs(game.workspace:GetDescendants()) do
            if v.ClassName == "StringValue" then
                if v.Value == game.Players.LocalPlayer.Name then
                    for i,v1 in pairs(v.Parent.Animals:GetChildren()) do
                        game:GetService("ReplicatedStorage").Events.RequestDogWalk:FireServer(v1)
                    end
                end
            end
        end
    end

    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end