 local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Bee Sim")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local WN = "Meadows"
--Toggle
b:Toggle("FullAutoFarm",function(bool)
    shared.toggle = bool
    FullAutoFarm = bool
end)

b:Dropdown("World",{"Meadows","Mountains","Oasis","Atlantis","Underworld","Swamp","Candy","Fairytale"},true,function(worldname)
    WN = worldname
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

while true do
    wait()
    if FullAutoFarm == true then
        local flower = game:GetService("Workspace").Worlds[WN].Flowers:GetChildren()
        for i,v in pairs(flower) do
            local flowerpart = v:GetChildren()
            for i,v1 in pairs(flowerpart) do
                if v:FindFirstChild(v1.Name) then
                    if v1.ClassName == "Part" then
                        if v1.Transparency == 1 then
                            if FullAutoFarm == true then
                                if WN == "Meadows" then
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Meadows.Part.CFrame.Position + Vector3.new(0,-10,-7)
                                end
                                
                                if WN == "Mountains" then
                                    local namber = 1
                                    for i=1 , 2 do
                                        if game:GetService("Workspace").Worlds.Mountains:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Mountains.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Mountains.Ring2["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,-12)
                                end
                                
                                if WN == "Oasis" then
                                    local namber = 1
                                    for i=1 , 4 do
                                        if game:GetService("Workspace").Worlds.Oasis:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Oasis.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Oasis.Ring4["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,12)
                                end
                                
                                if WN == "Atlantis" then
                                    local namber = 1
                                    for i=1 , 4 do
                                        if game:GetService("Workspace").Worlds.Oasis:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Oasis.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Oasis.Ring3["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,-12)
                                end
                                
                                if WN == "Underworld" then
                                    local namber = 1
                                    for i=1 , 2 do
                                        if game:GetService("Workspace").Worlds.Underworld:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Underworld.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Underworld.Ring2["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,-12)
                                end
                                
                                if WN == "Swamp" then
                                    local namber = 1
                                    for i=1 , 2 do
                                        if game:GetService("Workspace").Worlds.Swamp:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Swamp.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Swamp.Ring2["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,-12)
                                end
                                
                                if WN == "Candy" then
                                    local namber = 1
                                    for i=1 , 2 do
                                        if game:GetService("Workspace").Worlds.Candy:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Candy.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Candy.Ring2["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,-12)
                                end
                                
                                if WN == "Fairytale" then
                                    local namber = 1
                                    for i=1 , 1 do
                                        if game:GetService("Workspace").Worlds.Fairytale:FindFirstChild("Ring") then
                                            game:GetService("Workspace").Worlds.Fairytale.Ring.Name = "Ring"..namber
                                        end
                                        namber = namber + 1
                                    end
                                    WorldToAutoFarm = game:GetService("Workspace").Worlds.Fairytale.Ring1["Meshes/Bee Simulator Assets2_Torus.001"].CFrame.Position + Vector3.new(0,1,-12)
                                end
                                
                                --autoflower
                                local tweenInfo = TweenInfo.new(
                                1
                                )
                                local t = game.TweenService:Create(game:GetService("Workspace").Players[game.Players.LocalPlayer.Name].Root, tweenInfo, {CFrame = CFrame.new(
                                v1.CFrame.Position + Vector3.new(0,0,0)
                                )})
                                t:Play()
                                wait(1)
                                game:GetService("ReplicatedStorage").Events.Game.Flower:FireServer(v.INTERACT)
                                --sell
                                local tweenInfo1 = TweenInfo.new(
                                1
                                )
                                local t1 = game.TweenService:Create(game:GetService("Workspace").Players[game.Players.LocalPlayer.Name].Root, tweenInfo1, {CFrame = CFrame.new(
                                WorldToAutoFarm
                                )})
                                t1:Play()
                                wait(1)
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