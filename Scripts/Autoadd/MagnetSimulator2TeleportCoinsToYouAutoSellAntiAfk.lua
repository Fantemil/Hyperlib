local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Soggy Hub V2 | sunken#0001 | Last Update 13/02/22")

local serv = win:Server("Magnet Simulator 2", "")

local btns = serv:Channel("Autofarm")

local hum = game.Players.LocalPlayer.Character.HumanoidRootPart

btns:Seperator()

btns:Toggle("Teleport Coins To You",false, function(bool)
    getgenv().tpcoins = bool 

    while tpcoins do wait()

        for i,v in pairs(game:GetService("Workspace").Coins:GetDescendants()) do 
            if v.Name == "Base" then 
                v.CFrame = hum.CFrame
            end
        end
    end
end)

btns:Seperator()

btns:Label("Teleport Coins To You And Then Just Stand Still Near Them.")

btns:Seperator()

btns:Toggle("Auto Sell",false, function(bool)
    getgenv().autosell = bool 

    while autosell do wait()
        for i,v in pairs(game:GetService("Workspace").Rings.Sellx45:GetDescendants()) do 
            if v.Name == "TouchInterest" and v.Parent then
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            end
        end
    end
end)

btns:Seperator()

btns:Button("Anti - AFK", function()
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)
end)

local btns = serv:Channel("Rewards")

btns:Seperator()

btns:Toggle("Auto Collect Chests",false, function(bool)
    getgenv().autocollectchests = bool 

    while autocollectchests do wait()
        for i,v in pairs(game:GetService("Workspace")["_Dailys"]:GetDescendants()) do 
        wait()
        if v.Name == "TouchInterest" and v.Parent then 
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            end
        end
    end
end)

btns:Seperator()

btns:Button("Complete All Achievements", function()
    for i,v in pairs(game:GetService("ReplicatedStorage").ReplicatedData:GetDescendants()) do 
        wait()
  if v.Name == "Progress" then 
    v.Value = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
        end
    end
end)

btns:Seperator()

btns:Label("Takes a second to complete them all.")

btns:Seperator()

local btns = serv:Channel("Gamepasses")

btns:Seperator()

btns:Button("Unlock All Gamepasses", function()
    wait()
    game:GetService("Players").Qoucx.AutoAttack.Value = true
    for i, v in pairs(game:GetService("Players").LocalPlayer.Gamepasses:GetChildren()) do
        v.Value = true
        wait()
    end
end)

local btns = serv:Channel("Areas")

btns:Button("Unlock All Areas", function()
    game:GetService("Workspace")["_Gates"]:Destroy()
end)

btns:Button("Best World", function()
    hum.CFrame = CFrame.new(5449.22998046875, 2.453197717666626, 132.26145935058594)
end)

local btns = serv:Channel("Magnet")

btns:Seperator()

btns:Button("Modify Magnet", function()
    wait()
    for i,v in pairs(game:GetService("ReplicatedStorage").ReplicatedData[game.Players.LocalPlayer.Name].Magnets:GetDescendants()) do 
        if v.ClassName == "StringValue" then 
            v.Value = 100
        end
    end
end)

btns:Seperator()

btns:Toggle("Auto Buy Magnets",false, function(bool)
    getgenv().magnetbuy = bool 

    while magnetbuy do wait()
        for i, v in pairs(game:GetService("Workspace").MagnetShop.Magnets:GetChildren()) do
            ReplicatedStorage.Events.GameEvents.BuyMagnet:FireServer(v.Name) wait(.5)
        end
    end
end)


local btns = serv:Channel("Eggs + Pets")

btns:Seperator()

btns:Toggle("Auto Open Egg Near You",false, function(bool)
    getgenv().autoEgg = bool 

    while autoEgg do wait()
        keypress(0x45)
        keyrelease(0x45)
        keypress(0x45)
        keyrelease(0x45)
        wait(3)
    end
end)

btns:Seperator()

btns:Toggle("Auto Equip Best Pets",false, function(bool)
    getgenv().autoequip = bool 
    
    while autoequip do wait(5)
    game:GetService("ReplicatedStorage").Events.PetEvents.EquipBest:FireServer()
    end
end)

btns:Seperator()

local btns = serv:Channel("Upgrades")

btns:Seperator()

btns:Toggle("Auto Upgrade Speed",false, function(bool)
    getgenv().ugdspd = bool 

    while ugdspd do wait()
        game:GetService("ReplicatedStorage").Events.GameEvents.UpgradeSpeed:FireServer()
    end
end)

btns:Seperator()

btns:Toggle("Auto Upgrade Backpack",false, function(bool)
    getgenv().ugdbpk = bool 

    while ugdbpk do wait()
        game:GetService("ReplicatedStorage").Events.GameEvents.UpgradeStorage:FireServer()
    end
end)

local btns = serv:Channel("Player")

btns:Seperator()

local sldr = btns:Slider("Walkspeed!", 20, 200, 0, function(t)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

btns:Seperator()

local sldr = btns:Slider("JumpPower!", 20, 500, 0, function(t)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)

btns:Seperator()

btns:Toggle("GodMode",false, function(bool)
 if bool then wait()
     local Cam = workspace.CurrentCamera
     local Pos, Char = Cam.CFrame, speaker.Character
     local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
     local nHuman = Human.Clone(Human)
     nHuman.Parent, speaker.Character = Char, nil
     nHuman.SetStateEnabled(nHuman, 15, false)
     nHuman.SetStateEnabled(nHuman, 1, false)
     nHuman.SetStateEnabled(nHuman, 0, false)
     nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
     speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
     nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
     local Script = Char.FindFirstChild(Char, "Animate")
     if Script then
      Script.Disabled = true
      wait()
      Script.Disabled = false
     end
     nHuman.Health = nHuman.MaxHealth
 end
end)

local btns = serv:Channel("Updates!")

btns:Seperator()

btns:Label("User Interface Revamp.")

btns:Seperator()

btns:Label("Way more features!")

btns:Seperator()

btns:Label("Faster and better Auto Farm.")

btns:Seperator()

btns:Label("Added a Safe AutoFarm.")

btns:Seperator()


btns:Button("Discord Server", function()
    DiscordLib:Notification("Notification", "You will be prompted a discord invite.", "Okay!")
         local http = game:GetService('HttpService') 
 if toClipboard then
  toClipboard('https://discord.gg/DMTKwpEWnR')
 else
 end
 local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
 if req then
  req({
   Url = 'http://127.0.0.1:6463/rpc?v=1',
   Method = 'POST',
   Headers = {
    ['Content-Type'] = 'application/json',
    Origin = 'https://discord.com'
   },
   Body = http:JSONEncode({
    cmd = 'INVITE_BROWSER',
    nonce = http:GenerateGUID(false),
    args = {code = 'GYrTQEryum'}
   })
  })
 end
end)

btns:Seperator()

btns:Button("Owner + Scripter", function()
    if setclipboard then 
        setclipboard("sunken#0001")
    elseif toClipboard then 
        toClipboard("sunken#0001")
    end
end)