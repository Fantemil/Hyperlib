 local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Mall Tycoon")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

--Toggle
b:Toggle("AutoCollectButtons",function(bool)
    shared.toggle = bool
    AutoBuy = bool
end)

b:Toggle("AutoSelectStore",function(bool)
    shared.toggle = bool
    AutoSelectStore = bool
end)

b:Toggle("AutoRebirth",function(bool)
    shared.toggle = bool
    AutoRebirth = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("This script found ChipyxaOOFicial",function()
    setclipboard("This script found ChipyxaOOFicial")
end)
 
u:Button("RbxScripts https://discord.gg/mtrapaA6B2",function()
    setclipboard("RbxScripts https://discord.gg/mtrapaA6B2")
end)

while true do
    wait()
    if AutoSelectStore == true then
        local Store = game.Players.LocalPlayer.PlayerGui.Interface.PickStore.PickStore.Background.RoundedBackground:GetChildren()
        for i,v in pairs(Store) do
            if v.ClassName == "ImageButton" then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptPurchaseStore",v.StoreTitle.Text)
            end
        end
    end
    
    if AutoRebirth == true then
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("RequestRebirth")
    end
    
    if AutoBuy == true then
       if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
            game:GetService("CoreGui").PurchasePromptApp:Destroy()
        end
    
        local tycoon = game.Workspace:GetChildren()
        for i,v in pairs(tycoon) do
            if v.Name == ("Tycoon"..game.Players.LocalPlayer.Name) then
                local tycoon1 = v:GetChildren()
                for i,v1 in pairs(tycoon1) do
                    local button = v1:GetChildren()
                    for i,v2 in pairs(button) do
                        local button1 = v2:GetChildren()
                        for i,v3 in pairs(button1) do
                            if v3.Name == "Button" then
                                if v3.ClassName == "MeshPart" then
                                    v3.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                    v3.CanCollide = false
                                end
                            end
                            local button2 = v3:GetChildren()
                            for i,v4 in pairs(button2) do
                                if v4.Name == "Button" then
                                    if v4.ClassName == "MeshPart" then
                                        v4.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                        v4.CanCollide = false
                                    end
                                end
                                local button3 = v4:GetChildren()
                                for i,v5 in pairs(button3) do
                                    if v5.Name == "Button" then
                                        if v5.ClassName == "MeshPart" then
                                            v5.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                            v5.CanCollide = false
                                        end
                                    end
                                    local button4 = v5:GetChildren()
                                    for i,v6 in pairs(button4) do
                                        if v6.Name == "Button" then
                                            if v6.ClassName == "MeshPart" then
                                                v6.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                                v6.CanCollide = false
                                            end
                                        end
                                        local button5 = v6:GetChildren()
                                        for i,v7 in pairs(button5) do
                                            if v7.Name == "Button" then
                                                if v7.ClassName == "MeshPart" then
                                                    v7.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                                    v7.CanCollide = false
                                                end
                                            end
                                            local button6 = v7:GetChildren()
                                            for i,v8 in pairs(button6) do
                                                if v8.Name == "Button" then
                                                    if v8.ClassName == "MeshPart" then
                                                        v8.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                                        v8.CanCollide = false
                                                    end
                                                end
                                                local button7 = v8:GetChildren()
                                                for i,v9 in pairs(button7) do
                                                    if v9.Name == "Button" then
                                                        if v9.ClassName == "MeshPart" then
                                                            v9.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                                            v9.CanCollide = false
                                                        end
                                                    end
                                                    local button8 = v9:GetChildren()
                                                    for i,v10 in pairs(button8) do
                                                        if v10.Name == "Button" then
                                                            if v10.ClassName == "MeshPart" then
                                                                v10.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
                                                                v10.CanCollide = false
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end)
    end
end