getgenv().settings = {
    ["enabled"] = true,
    ["boostGems"] = true,
    ["collectGems"] = true,
    ["boostMachines"] = true,
    ["upgradeFactory"] = true,
    ["upgradeFactoryDelay"] = 1.5,
    ["upgradeMachines"] = true,
    ["upgradeMachinesDelay"] = 1.5,
    ["buyMachines"] = true,
    ["buyMachinesDelay"] = 1.5,
    ["autoMine"] = true, 
    
}

local store = settings.enabled
getgenv().settings.enabled = false
wait(.5)
getgenv().settings.enabled = store

local player = game.Players.LocalPlayer

for _,idled in next, getconnections(player.Idled) do 
    idled:Disable()
end


task.spawn(function()
    while settings.enabled do
        wait()
        if settings.boostGems then 
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BoostGem"):FireServer()
        end 
        if settings.boostMachines then 
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GenerateFaster"):FireServer()
        end
        if settings.collectGems then 
            for _,v in next, game:GetService("Workspace").Factory.Gems:GetChildren() do 
                fireclickdetector(v.ClickDetector)
            end
        end
    end
end)

local factoryUpgradeLimits = {
    [1] = 20,
    [2] = 18,
    [3] = math.huge,
    [4] = 9
}

task.spawn(function()
    while settings.enabled do 
        task.wait()
        if settings.upgradeFactory then 
            for i = 1 , 4 , 1 do 
                if player.Stats["FactoryUpgrade"..tostring(i)].Value < factoryUpgradeLimits[i] then
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FactoryUpgrade"):FireServer(unpack({i,false}))
                end
            end
            wait(settings.upgradeFactoryDelay)
        else 
            break
        end 
    end 
end)

task.spawn(function()
    while settings.enabled do 
        wait(.2)
        if settings.upgradeMachines then 
            for i = 1 , 10 ,1 do 
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpgradeMachine"):FireServer(unpack({i,2,true}))
            end 
        else 
            break 
        end 
    end 
end)

task.spawn(function()
    while settings.enabled do 
        task.wait()
        if settings.buyMachines then 
            for i = 1 , 10 , 1 do 
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyMachine"):FireServer(unpack({i,true}))
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyMoreMachines"):FireServer(unpack({i,1,true}))
            end
            wait(settings.buyMachinesDelay)
        else 
            break 
        end 
    end 
end) 

task.spawn(function()
    while settings.enabled do 
        task.wait() 
        if settings.autoMine then 
            for _,ore in next, game:GetService("Workspace").Ores:GetChildren() do 
                local speed = player.Character.Humanoid.WalkSpeed
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MineOre"):FireServer(unpack({tonumber(ore.Name)}))
                repeat task.wait() player.Character.Humanoid.WalkSpeed = speed until not settings.enabled or ore.Parent ~= workspace.Ores
            end
        else 
            break
        end 
    end
end)  

warn("executed")