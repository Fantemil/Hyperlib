getgenv().Spawn = false;
getgenv().Speed = false;
getgenv().Slow = false;
getgenv().Light = false;
getgenv().Stop = false;
getgenv().Move = false;
getgenv().Explode = false;
getgenv().Cannon = false;
getgenv().Wheel = false;
getgenv().Jump = false;
getgenv().Rocket = false;
getgenv().Gate = false;
getgenv().Pass = false;
getgenv().BombSpawn = false;
getgenv().Coins = false;
getgenv().Scorch = false;
getgenv().Crash = false;


local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("private openings")

local serv = win:Server("Faven.lua", "")


local tgls = serv:Channel("Carts")



tgls:Label("<Cart Toggles>")

tgls:Toggle("Spawn Carts",false, function(bool)
    getgenv().Spawn = bool
    print('Spawn Carts is: ', bool);
    if bool then
        doSpawn();
    end
end)

tgls:Seperator()

tgls:Toggle("Speed Carts",false, function(bool)
    getgenv().Speed = bool
    print('Speed Carts is: ', bool);
    if bool then
        doSpeed();
    end
end)

tgls:Seperator()

tgls:Toggle("Slow Carts",false, function(bool)
    getgenv().Slow = bool
    print('Slow Carts is: ', bool);
    if bool then
        doSlow();
    end
end)

tgls:Seperator()

tgls:Toggle("Stop Carts",false, function(bool)
    getgenv().Stop = bool
    print('Stop Carts is: ', bool);
    if bool then
        doStop();
    end
end)

tgls:Seperator()

tgls:Toggle("Light Carts",false, function(bool)
    getgenv().Light = bool
    print('Light Carts is: ', bool);
    if bool then
        doLight();
    end
end)

tgls:Seperator()

tgls:Toggle("Fire Cannon",false, function(bool)
    getgenv().Cannon = bool
    print('Fire Cannon is: ', bool);
    if bool then
        doCannon();
    end
end)

tgls:Seperator()

tgls:Toggle("Wheel Carts",false, function(bool)
    getgenv().Wheel = bool
    print('Wheel Carts is: ', bool);
    if bool then
        doWheel();
    end
end)

tgls:Seperator()

tgls:Toggle("Jump Morbius Carts",false, function(bool)
    getgenv().Jump = bool
    print('Jump Carts is: ', bool);
    if bool then
        doJump();
    end
end)

tgls:Seperator()

tgls:Toggle("Rocket Carts",false, function(bool)
    getgenv().Rocket = bool
    print('Rocket Carts is: ', bool);
    if bool then
        doRocket();
    end
end)

tgls:Seperator()

local g = serv:Channel("Bomb Carts")

g:Label("<Bomb Cart Toggles>")

g:Toggle("Spawn Bomb Carts",false, function(bool)
    getgenv().BombSpawn = bool
    print('Spawn Bomb Carts is: ', bool);
    if bool then
        doBombSpawn();
    end
end)

g:Seperator()

g:Toggle("Move Bomb Carts",false, function(bool)
    getgenv().Move = bool
    print('Move Carts is: ', bool);
    if bool then
        doMove();
    end
end)

g:Seperator()

g:Toggle("Explode Bomb Carts",false, function(bool)
    getgenv().Explode = bool
    print('Explode Carts is: ', bool);
    if bool then
        doExplode();
    end
end)

g:Seperator()

local t = serv:Channel("Gates")

t:Label("<100+ Social Credit!>")

t:Button("Use Gate", function()
     for i,v in pairs(workspace:GetChildren()) do
  if v.Name == "crossing" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Button, 1)
   wait(.1)
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Button, 0)
  end
 end
end)

t:Seperator()

t:Toggle("Spam Gate",false, function(bool)
    getgenv().Gate = bool
    print('Spam Gate is: ', bool);
    if bool then
        doGate();
    end
end)

local cry = serv:Channel("Tools")

cry:Label("<If you get sent back to the spawner your ping is high>")

cry:Button("Get Tools", function()
         for i,v in pairs(workspace:GetChildren()) do
  if v.Name == "vending machine" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Hander, 1)
   wait(.1)
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Hander, 0)
  end
         end
         wait(0.5)
       local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)
end)

cry:Seperator()

cry:Button("Scorched Camera", function()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(205, 3, -63)
        wait(0.3)
               local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)
        
end)

cry:Seperator()

cry:Button("Rocket Launcher", function()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(199, 3, -63)
        wait(0.3)
               local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)
        
end)

cry:Seperator()

cry:Button("Buddy Buggy", function()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(193, 3, -63)
        wait(0.3)
               local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)
    
end)

cry:Seperator()

cry:Button("Crowbar", function()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(187, 3, -63)
        wait(0.3)
               local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)
    
end)

cry:Seperator()

cry:Button("Passport", function()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(206, 1, -55)
        wait(0.3)
       local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)
       
end)

cry:Seperator()

cry:Button("Downing Rod", function()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(206, 1, -55)
        wait(0.3)
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(-498, 155, 597)
        wait(0.3)
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
  a.CFrame = CFrame.new(-14, 3, 16)
  DiscordLib:Notification("Notification", "You need to hold out and/or need a passport", "Okay!")
        
end)

local loser = serv:Channel("Crash")

loser:Label("<You'll Need Many Coins For This>")

loser:Toggle("Get Cams",false, function(bool)
    getgenv().Scorch = bool
    print('Get cams is: ', bool);
    if bool then
        doScorch();
    end
end)

loser:Seperator()

loser:Label("<USE CAMS IS CURRENTLY INACTIVE>")

loser:Seperator()

loser:Toggle("Use Cams",false, function(bool)
    getgenv().Crash = bool
    print('Use cams is: ', bool);
    if bool then
        doCrash();
    end
        DiscordLib:Notification("Notification", "Spam Click.", "Okay!")
end)

local misc = serv:Channel("Coins")

misc:Label("<Get A Downing Rod For This.>")

misc:Toggle("Auto Coins",false, function(bool)
    getgenv().Coins = bool
    print('Auto Coins is: ', bool);
    if bool then
        doCoins();
    end
end)
 
misc:Seperator()
 
misc:Button("Get Civic Duty", function()
    
            local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(206, 1, -55)
wait(0.3)
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-498, 155, 597)
wait(0.3)
       local a = game.Players.LocalPlayer.Character.HumanoidRootPart
       a.CFrame = CFrame.new(-14, 3, 16)

 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").secretportal.CFrame

end)

misc:Seperator()

misc:Button("Get Downing Rod", function()
    
            local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(206, 1, -55)
wait(1.1)
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        a.CFrame = CFrame.new(-498, 155, 597)
wait(1.1)
end)

misc:Seperator()

misc:Button("Collect Coins", function()
    pcall(function(Lol)
  yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.tricoins["Tri-PlayCoin"].Handle.CFrame
  wait(1)
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.easycoins.PlayCoin.Handle.CFrame
  wait(1)
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.mediumcoins.PlayCoin.Handle.CFrame
  wait(1)
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.hardcoins.PlayCoin.Handle.CFrame
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
  for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
 v.Parent = game.Players.LocalPlayer.Character
 v:Activate()
  end
end)

DiscordLib:Notification("Notification", "Wait 60 seconds until executing again ( If It Doesn't Work A Coin Is Missing )", "Okay!")
end)

misc:Seperator()

misc:Button("Tri-Coin", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.tricoins["Tri-PlayCoin"].Handle.CFrame
         wait(0.60)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
end)

misc:Seperator()

misc:Button("Hard-Coin", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.hardcoins.PlayCoin.Handle.CFrame
        wait(0.60)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
end)

misc:Seperator()

misc:Button("Medium-Coin", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.mediumcoins.PlayCoin.Handle.CFrame
        wait(0.60)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
end)

misc:Seperator()

misc:Button("Easy-Coin", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.easycoins.PlayCoin.Handle.CFrame
        wait(0.60)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
end)

misc:Seperator()

local tree = serv:Channel("Teleports")

tree:Label("<saudi arabia gang - hviqz>")

tree:Button("Spawn", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-14, 3, 16)

end)

tree:Seperator()

tree:Button("Pitstop", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-46, 75, 940)

end)

tree:Seperator()

tree:Button("Gate", function()
   
   local a = game.Players.LocalPlayer.Character.HumanoidRootPart
   
   a.CFrame = CFrame.new(-115, 18, 434)
    
end)

tree:Seperator()

tree:Button("Gate 2", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-495, 179, 591)

end)

tree:Seperator()

tree:Button("Winner's Platform", function()

        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SpawnLocation.CFrame
end)

tree:Seperator()

tree:Button("Get Tools", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-618, 159, 700)

end)

tree:Seperator()

tree:Button("House", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(191, 2, -40)

end)

tree:Seperator()

tree:Button("Secret Cart Track", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(692, 120, -332)

end)

tree:Seperator()

tree:Button("Secret Portal", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").secretportal.CFrame

end)

tree:Seperator()

tree:Button("Civic Duty Platform", function()
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-3320, 3, -982)
end)

tree:Seperator()

tree:Button("Pendulum (Unsafe)", function()
    
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(21, 88, 1094)

end)

tree:Seperator()

tree:Button("Pendulum 2 (Unsafe)", function()
    
    
    local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(369, 193, 942)
end)

tree:Seperator()

tree:Button("Pendulum 3 (Safe)", function()
    
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-380, 216, 621)

end)

tree:Seperator()

tree:Button("Spring Gun (Unsafe)", function()
    
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart

a.CFrame = CFrame.new(-388, 184, 647.5)
end)

tree:Seperator()

local z = serv:Channel("Misc")

z:Label("<Misconfigurations If You Want>")
 
z:Button("Low Graphics", function()
   
   local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
end)
 
z:Seperator()

z:Button("Infinite Jump", function()
    
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
 if InfiniteJumpEnabled then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end)
    
end)

z:Seperator()

z:Button("Fire Touch Interest", function()
               for _, v in pairs(game.Workspace:GetDescendants()) do
                 if v:IsA("TouchTransmitter") then
                     firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart or game.Players.LocalPlayer.Character.Torso, v:FindFirstAncestorWhichIsA("Part"),0)
                 end
               end
end)


z:Seperator()

z:Button("Remove Void", function()
    
workspace.FallenPartsDestroyHeight = 0 / 0
    
end)

z:Seperator()

local lbls = serv:Channel("Credits")

lbls:Label("hviqz#4825 made this script!")
lbls:Seperator()

lbls:Label("UI by dawid#7205")
lbls:Seperator()

lbls:Label("Testers: Kham#0001")


function doSpawn()
    spawn(function()
        while getgenv().Spawn == true do
                wait(0.040)
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("respawner") then
    if not includeGamePass and (v.Name == "superiorrespawner" or v.Name == "DREAMrespawner") then return end
    if v:FindFirstChild("respawn") then
     firetouchinterest(Players.LocalPlayer.Character.PrimaryPart, v.respawn, 1)
     firetouchinterest(Players.LocalPlayer.Character.PrimaryPart, v.respawn, 0)
    end
   end
  end)
 end
end
end)
end


function doSpeed()
    spawn(function()
        while getgenv().Speed == true do
                wait(0.040)
                
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("forward") then fireclickdetector(v.forward.ClickDetector) end
   end
  end)
 end
end
end)
end

function doSlow()
    spawn(function()
        while getgenv().Slow == true do
                wait(0.040)
                
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("backward") then fireclickdetector(v.backward.ClickDetector) end
   end
  end)
 end
end
end)
end

function doStop()
    spawn(function()
        while getgenv().Stop == true do
                wait(0.040)
                
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match ("Cart") then
    if v:FindFirstChild("stop") then fireclickdetector(v.stop.ClickDetector) end
   end
  end)
 end
end
end)
end

function doLight()
    spawn(function()
        while getgenv().Light == true do
                wait(0.040)
                
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("lightbutton") then fireclickdetector(v.lightbutton.ClickDetector) end
   end
  end)
 end
end
end)
end

function doMove()
    spawn(function()
        while getgenv().Move == true do
                wait(0.040)
 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    local move = v:FindFirstChild("move")
    if move then fireclickdetector(move.ClickDetector) end
   end
  end)
 end
end
end)
end

function doExplode()
    spawn(function()
        while getgenv().Explode == true do
                wait(0.040)
                    for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("explode") then fireclickdetector(v.explode.ClickDetector) end
   end
  end)
 end
end
end)
end

function doCannon()
    spawn(function()
        while getgenv().Cannon == true do
                wait(0.040)
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("firebutton") then fireclickdetector(v.firebutton.ClickDetector) end
   end
  end)
 end
end
end)
end

function doWheel()
    spawn(function()
        while getgenv().Wheel == true do
                wait(0.040)
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("wheelbutton") then fireclickdetector(v.wheelbutton.ClickDetector) end
   end
  end)
 end
end
end)
end

function doJump()
    spawn(function()
        while getgenv().Jump == true do
                wait(0.040)
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("jumpbutton") then fireclickdetector(v.jumpbutton.ClickDetector) end
   end
  end)
 end
end
end)
end

function doRocket()
    spawn(function()
        while getgenv().Rocket == true do
                wait(0.040)
                 for i, v in pairs(workspace:GetChildren()) do
  pcall(function()
   if v.Name:match("Cart") then
    if v:FindFirstChild("rocketbutton") then fireclickdetector(v.rocketbutton.ClickDetector) end
   end
  end)
 end
end
end)
end

function doSpawn()
    spawn(function()
        while getgenv().Spawn == true do
                wait(0.040)
                 for i,v in pairs(workspace:GetChildren()) do
  if v.Name == "rustyrespawner" or v.Name == "respawner" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.respawn, 1)
   wait(.1)
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.respawn, 0)
  end
 end
end
end)
end

function doBombSpawn()
    spawn(function()
        while getgenv().BombSpawn == true do
                wait(0.040)
                 for i,v in pairs(workspace:GetChildren()) do
  if v.Name == "bombrespawnerply" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.respawn, 1)
   wait(.1)
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.respawn, 0)
  end
 end
end
end)
end

function doGate()
    spawn(function()
        while getgenv().Gate == true do
                wait(0.04)
                 for i,v in pairs(workspace:GetChildren()) do
  if v.Name == "crossing" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Button, 1)
   wait(.1)
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Button, 0)
  end
 end
end
end)
end

function doCoins()
    spawn(function()
        while getgenv().Coins == true do
                wait(0.04)
                 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").secretportal.CFrame
                 wait(.5)
        end
    end)
end

function doScorch()
    spawn(function()
        while getgenv().Scorch == true do
                wait(0.04)
                     local a = game.Players.LocalPlayer.Character.HumanoidRootPart
                     a.CFrame = CFrame.new(205, 3, -63)
                     wait(.9)
        end
    end)
end
         
function doCrash()
    spawn(function()
        while getgenv().Crash == true do
                wait(0.04)
                game.Players.LocalPlayer.Backpack["Scorched camera"].Parent=game.Players.LocalPlayer.Character
        end
    end)
end