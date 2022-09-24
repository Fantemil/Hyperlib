getgenv().collectOrbsToggle = true
getgenv().collectRingsToggle = true
getgenv().autoRebirth = true
getgenv().autoPurple = true
getgenv().autoRed = true
getgenv().autoBlue = true
getgenv().autoYellow = true
getgenv().autoLight = true
getgenv().autoSnow = true
getgenv().autoInferno = true
getgenv().autoLava = true
getgenv().autoElectro = true
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local remotePath = game:GetService("ReplicatedStorage").rEvents

local w = library:CreateWindow("Legends Of Speed")
local d = w:CreateFolder("Auto Grab Orbs")
local f = w:CreateFolder("Auto Rings")
local a = w:CreateFolder("Auto Rebirth")
local q = w:CreateFolder("Auto Crystal")
local s = w:CreateFolder("Teleports")
local i = w:CreateFolder("Info")
local b = w:CreateFolder("Credits")
local c = w:CreateFolder("Destroy GUI")

function aOrbs()
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
                while wait() do
                    if not getgenv().collectOrbsToggle then break end
                    for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait()
                    firetouchinterest(playerHead, v.Parent,0)
                    break
                end
            end
        end
    end)
end





function aRings()
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
                while wait() do
                    if not getgenv().collectRingsToggle then break end
                    for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait()
                    firetouchinterest(playerHead, v.Parent,0)
                    break
                end
            end
        end
    end)
end


function aRebirth()
    spawn(function()
        while getgenv().autoRebirth == true do
            local args = {[1] = "rebirthRequest"}
            remotePath.rebirthEvent:FireServer(unpack(args))
            wait()
        end
    end)
end


function aPurple()
    spawn(function()
        while getgenv().autoPurple == true do
            local args = {[1] = "openCrystal",[2] = "Purple Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aRed()
    spawn(function()
        while getgenv().autoRed == true do
            local args = {[1] = "openCrystal",[2] = "Red Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aBlue()
    spawn(function()
        while getgenv().autoBlue == true do
            local args = {[1] = "openCrystal",[2] = "Blue Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aYellow()
    spawn(function()
        while getgenv().autoYellow == true do
            local args = {[1] = "openCrystal",[2] = "Yellow Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aLight()
    spawn(function()
        while getgenv().autoLight == true do
            local args = {[1] = "openCrystal",[2] = "Lightning Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function aSnow()
    spawn(function()
        while getgenv().autoSnow == true do
            local args = {[1] = "openCrystal",[2] = "Snow Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aInferno()
    spawn(function()
        while getgenv().autoInferno == true do
            local args = {[1] = "openCrystal",[2] = "Inferno Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aLava()
    spawn(function()
        while getgenv().autoLava == true do
            local args = {[1] = "openCrystal",[2] = "Lava Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


function aElectro()
    spawn(function()
        while getgenv().autoElectro == true do
            local args = {[1] = "openCrystal",[2] = "Electro Legends Crystal"}
            remotePath.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end


q:Label("Theres no egg animations",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
   
})


d:Toggle("Auto Grab Orbs", function (bool)
        getgenv().collectOrbsToggle = bool
        print('Auto Orb is: ', bool);
        if bool then
        aOrbs()
    end
end)


f:Toggle("Auto Rings(slow)", function (bool)
        getgenv().collectRingsToggle = bool
        print('Auto Orb is: ', bool);
        if bool then
        aRings()
    end
end)


a:Toggle("Auto Rebirth", function (bool)
        getgenv().autoRebirth = bool
        print('Auto Orb is: ', bool);
        if bool then
        aRebirth()
    end
end)



q:Toggle("Red Crystal", function (bool)
        getgenv().autoRed = bool
        print('Auto crystal is: ', bool);
        if bool then
        aRed()
    end
end)

q:Toggle("Blue Crystal", function (bool)
        getgenv().autoBlue = bool
        print('Auto crystal is: ', bool);
        if bool then
        aBlue()
    end
end)

q:Toggle("Purple Crystal", function (bool)
        getgenv().autoPurple = bool
        print('Auto crystal is: ', bool);
        if bool then
        aPurple()
    end
end)


q:Toggle("Yellow Crystal", function (bool)
        getgenv().autoYellow = bool
        print('Auto crystal is: ', bool);
        if bool then
        aYellow()
    end
end)

q:Toggle("Lightning Crystal", function (bool)
        getgenv().autoLight = bool
        print('Auto crystal is: ', bool);
        if bool then
        aLight()
    end
end)

q:Toggle("Snow Crystal", function (bool)
        getgenv().autoSnow = bool
        print('Auto crystal is: ', bool);
        if bool then
        aSnow()
    end
end)

q:Toggle("Inferno Crystal", function (bool)
        getgenv().autoInferno = bool
        print('Auto crystal is: ', bool);
        if bool then
        aInferno()
    end
end)

q:Toggle("Lava Crystal", function (bool)
        getgenv().autoLava = bool
        print('Auto crystal is: ', bool);
        if bool then
        aLava()
    end
end)

q:Toggle("Electro Legends Crystal", function (bool)
        getgenv().autoElectro = bool
        print('Auto crystal is: ', bool);
        if bool then
        aElectro()
    end
end)


i:Label("UI key is Right CTRL",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
   
})



c:DestroyGui()

print('made by toolzy#9999')




b:Button("toolzy#9999",function()
    setclipboard("toolzy#9999")
    toclipboard("toolzy#9999")
end)  


s:Button("Golden Chest", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-681.012146, 70.367691, -274.911133, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)  
end)
s:Button("Enchanted Chest", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-593.039673, 78.3677063, 2130.06738, 0.996191859, 0, 0.0871884301, 0, 1, 0, -0.0871884301, 0, 0.996191859)  
end)
s:Button("Magma Chest", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2494.19556, 74.367691, 3981.54175, 0.642763317, -0, -0.766064942, 0, 1, -0, 0.766064942, 0, 0.642763317)  
end)
s:Button("Reward Cest 1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1624.53259, 28.202322, -497.825592, 0.258864343, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, 0.258864343)  
end)
s:Button("Reward Cest 2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2497.65869, 26.2436581, -2133.52759, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)  
end)
s:Button("Reward Cest 3", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2235.75903, 321.167633, 1003.06476, 0.996191859, 0, 0.0871884301, 0, 1, 0, -0.0871884301, 0, 0.996191859)  
end)
s:Button("Reward Cest 4", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1561.51636, 108.683212, 5680.7373, -0.173636436, 0.00328794168, -0.984804392, 0.0182685666, 0.999833107, 0.000117084011, 0.984640479, -0.0179706328, -0.173667431)  
end)
s:Button("Group Chest", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-479.203979, 14.665555, 402.61377, 0.0871419907, 2.0634383e-05, -0.996196032, -0.0868328214, 0.996194124, -0.00757506117, 0.992404461, 0.087162599, 0.0868121386)  
end)