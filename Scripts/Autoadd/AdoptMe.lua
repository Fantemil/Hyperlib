 --[[
--=(Adopt Me AutoFarm)=--

Before You Executing That Script:
--> Join To Babies Team 
--> Unequip All Your Pets
--> Change The Settings

]]


local stuff1 = {}
dirty        = {"StylishShower"}--you must have
dirtynumber  = 1

local stuff2 = {}
sleepy = {"BasicCrib"}--you must have
sleepynumber = 1

local stuff3 = {}
hungry = {"PizzaDough"}--you must have
hungrynumber = 1

local stuff4 = {}
thirsty = {"WaterCooler"}--you must have
thirstynumber = 1


local bb = game:service "VirtualUser"
game:service "Players".LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
end)


game:GetService("RunService").RenderStepped:Connect(function()

    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.AilmentsMonitorApp.Ailments:GetChildren()) do

        if v.Name == "dirty" then
            local workspace = workspace:GetDescendants()
            for i = 1, #workspace do
                local v = workspace[i]
                if v.Name == dirty[dirtynumber] then
                    table.insert(stuff1, v)
                end
            end
            for i = 1, #stuff1 do
                local v2 = stuff1[i]
                for i, v1 in pairs(v2:GetChildren()) do
                    if v.Name == "dirty" then
                        if v1.ClassName == "Part" or v1.ClassName == "MeshPart" then
                            if game:GetService("Workspace"):FindFirstChild(game.Players.LocalPlayer.Name) then
                                if game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
                                    local tweenInfo = TweenInfo.new(
                                    0.1
                                    )
                                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                                    v1.CFrame.Position + Vector3.new(0,-1,0)
                                    )})
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                    t:Play() 
                                    wait(0.1)
                                    t.Completed:Connect(function() 
                                        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                    end)
                                    keypress(0x45)
                                    wait()
                                    keyrelease(0x45)
                                    wait(.1)
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                end
                            end
                        end
                    end
                end
            end
        end
        

        if v.Name == "sleepy" then
            local workspace = workspace:GetDescendants()
            for i = 1, #workspace do
                local v = workspace[i]
                if v.Name == sleepy[sleepynumber] then
                    table.insert(stuff2, v)
                end
            end
            for i = 1, #stuff2 do
                local v2 = stuff2[i]
                for i, v1 in pairs(v2:GetChildren()) do
                    if v.Name == "sleepy" then
                        if v1.ClassName == "Part" or v1.ClassName == "MeshPart" then
                            if game:GetService("Workspace"):FindFirstChild(game.Players.LocalPlayer.Name) then
                                if game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
                                    local tweenInfo = TweenInfo.new(
                                    0.1
                                    )
                                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                                    v1.CFrame.Position + Vector3.new(0,0,0)
                                    )})
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                    t:Play() 
                                    wait(0.1)
                                    t.Completed:Connect(function() 
                                        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                    end)
                                    keypress(0x45)
                                    wait()
                                    keyrelease(0x45)
                                    wait(.1)
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                end
                            end
                        end
                    end
                end
            end
        end
        

        if v.Name == "hungry" then
            local workspace = workspace:GetDescendants()
            for i = 1, #workspace do
                local v = workspace[i]
                if v.Name == hungry[hungrynumber] then
                    table.insert(stuff3, v)
                end
            end
            for i = 1, #stuff3 do
                local v2 = stuff3[i]
                for i, v1 in pairs(v2:GetChildren()) do
                    if v.Name == "hungry" then
                        if v1.ClassName == "Part" or v1.ClassName == "MeshPart" then
                            if game:GetService("Workspace"):FindFirstChild(game.Players.LocalPlayer.Name) then
                                if game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
                                    local tweenInfo = TweenInfo.new(
                                    0.1
                                    )
                                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                                    v1.CFrame.Position + Vector3.new(0,0,0)
                                    )})
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                    t:Play() 
                                    wait(0.1)
                                    t.Completed:Connect(function() 
                                        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                    end)
                                    keypress(0x45)
                                    wait()
                                    keyrelease(0x45)
                                    game:service "VirtualUser":ClickButton1(Vector2.new())
                                    wait(.1)
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                end
                            end
                        end
                    end
                end
            end
        end
        

        if v.Name == "thirsty" then
            local workspace = workspace:GetDescendants()
            for i = 1, #workspace do
                local v = workspace[i]
                if v.Name == thirsty[thirstynumber] then
                    table.insert(stuff4, v)
                end
            end
            for i = 1, #stuff4 do
                local v2 = stuff4[i]
                for i, v1 in pairs(v2:GetChildren()) do
                    if v.Name == "thirsty" then
                        if v1.ClassName == "Part" or v1.ClassName == "MeshPart" then
                            if game:GetService("Workspace"):FindFirstChild(game.Players.LocalPlayer.Name) then
                                if game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
                                    local tweenInfo = TweenInfo.new(
                                    0.1
                                    )
                                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                                    v1.CFrame.Position + Vector3.new(0,-1,0)
                                    )})
                                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                                    t:Play() 
                                    wait(0.1)
                                    t.Completed:Connect(function() 
                                        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                                    end)
                                    keypress(0x45)
                                    wait()
                                    keyrelease(0x45)
                                    game:service "VirtualUser":ClickButton1(Vector2.new())
                                    wait(.1)
                                    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 0
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title    = "Terni#2346";
    Text     = "discord.gg/EPTHrbcvH2";
    Duration = 5
})