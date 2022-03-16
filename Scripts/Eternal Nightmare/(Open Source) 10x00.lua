repeat wait() until game:IsLoaded()

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Eternal Nightmare - 10x",
    Style = 2,
    SizeX = 500,
    SizeY = 350,
    Theme = "Dark",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(60,60,60)
    }
})

for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
end;

game:GetService("RunService").Stepped:Connect(function()
    if shared.autoFarm or shared.autoBandit then
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            end;
        end;
    end;
end);

if isfile("Eternal Nightmare.txt") and isfile("WhatWeaponBro.txt") and isfile("Difficulty.txt") then
    print("It's there")
else
    writefile("Eternal Nightmare.txt","")
    writefile("WhatWeaponBro.txt","")
    writefile("Difficulty.txt","")
end;

local weaponList = {};
local npcList = {};
local getMouse = game.Players.LocalPlayer:GetMouse();
local readWeapon = readfile("WhatWeaponBro.txt")
shared.mobDistance = 6.3
shared.weapon = readWeapon
shared.resetAt = 40

for i,v in pairs(game:GetService("ReplicatedStorage").ClientSidedActions:GetChildren()) do
    if string.find(v.Name, "Basic") and not string.find(v.Name, "Old") then
        table.insert(weaponList, v.Name)
    end;
end;

for i,v in pairs(game:GetService("Workspace").Interactions:GetChildren()) do
    if v.Data.Type.Value == "Dialog" then
        table.insert(npcList, v.Name)
    end;
end;


--//Tab One Start\\--




local Y = X.New({
    Title = "Main"
})



Y.Toggle({Text = "Autofarm",Callback = function(value)
shared.autoFarm = value
    
while shared.autoFarm and wait() do
pcall(function()
    for i,v in pairs(game:GetService("Workspace").Entity:GetChildren()) do
        if game.Players.LocalPlayer.Character and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and not v:FindFirstChild("LookDirection") then
            if v.Humanoid.Health > 0 then
                repeat wait() 
                    game:GetService("ReplicatedStorage").Requests.UseSkill:FireServer(shared.weapon,1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - Vector3.new(0,shared.mobDistance,0)
                    until v.Humanoid.Health <= 0 or not shared.autoFarm
                    end;
                end;
            end;
        end);
    end;
end});

Y.Dropdown({Text = "Weapon", Options = weaponList, Callback = function(value)
    shared.weapon = value 
    writefile("WhatWeaponBro.txt",value) 
end});

Y.Slider({Text = "Distance",Min = -10,Max = 10,Def = 6.5,Callback = function(value)
    shared.mobDistance = value
end});





--//Tab Two Start\\--





local Y2 = X.New({
    Title = "Options"
})

local IF = Y2.Toggle({Text = "Infinite Lives",Callback = function(value)
shared.godMode = value

pcall(function()
if shared.godMode then
            local a=game.Players.LocalPlayer;if a.Character then if a.Character:FindFirstChild("Humanoid")then a.Character.Humanoid.Name="1"end;local b=a.Character["1"]:Clone()b.Parent=a.Character;b.Name="Humanoid"wait(0.1)a.Character["1"]:Destroy()workspace.CurrentCamera.CameraSubject=a.Character.Humanoid;a.Character.Animate.Disabled=true;wait(0.1)a.Character.Animate.Disabled=false end
        end;
    end);
end});

Y2.TextField({Text = "Keybind (Lowecase)", Callback = function(value)
    shared.godKey = value
end});

Y2.Toggle({Text = "Reset Lives Keybind",Callback = function(value)
    shared.resetlivesBind = value

    getMouse.KeyDown:Connect(function(key)
        if key == shared.godKey and shared.resetlivesBind then
            local a=game.Players.LocalPlayer;if a.Character then if a.Character:FindFirstChild("Humanoid")then a.Character.Humanoid.Name="1"end;local b=a.Character["1"]:Clone()b.Parent=a.Character;b.Name="Humanoid"wait(0.1)a.Character["1"]:Destroy()workspace.CurrentCamera.CameraSubject=a.Character.Humanoid;a.Character.Animate.Disabled=true;wait(0.1)a.Character.Animate.Disabled=false end
        end;
    end);
end});

Y2.Toggle({Text = "Kill Aura",Callback = function(value)
    shared.killAura = value

    while shared.killAura and wait(.3) do
        game:GetService("ReplicatedStorage").Requests.UseSkill:FireServer(shared.weapon,1)
    end;
end});


Y2.Button({Text = "Discord",Callback = function()
    setclipboard("https://discord.gg/FZdxeYc8WC")
end});



--//Tab 3\\--

local Y3 = X.New({
    Title = "Local Player"
})

Y3.Toggle({Text = "No Cooldown",Callback = function(value)
    shared.noCooldown = value

    game.Players.LocalPlayer.Character.Cooldowns.ChildAdded:Connect(function(nopeLol1)
    if shared.noCooldown then
            nopeLol1.Name = "spencerlikesmenlol";
        end;
    end);
    
    game.Players.LocalPlayer.Character.Cooldowns.DescendantAdded:Connect(function(nopeLol2)
    if shared.noCooldown then
            nopeLol2.Name = "sowdlikesboyslol"
        end;
    end);
end});

Y3.Toggle({Text = "WalkSpeed",Callback = function(value)
    shared.speedTrue = value

    while shared.speedTrue and wait() do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = shared.speedValue
    if not shared.speedValue then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end;
    end;
end});

Y3.Slider({Text = "Speed",Min = 0,Max = 500,Def = 16,Callback = function(value)
    shared.speedValue = value
end});

Y3.Dropdown({Text = "NPC", Options = npcList, Callback = function(value)
    shared.npcTP = value
end});

Y3.Button({Text = "Teleport",Callback = function()
    for SowdHomo,v in pairs(game:GetService("Workspace").Interactions:GetChildren()) do
        if v.Name == shared.npcTP then  
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame            
        end;
    end;
end});



--//Tab 4\\--

local Y4 = X.New({
    Title = "Bandit/Ascension"
})




Y4.Button({Text = "Warp Bandit Camp",Callback = function()
    local a={[1]=workspace.Interactions.BanditCamps.Data.ID,[2]={[1]="Let's go !"}}game:GetService("ReplicatedStorage").Requests.GetDialog:InvokeServer(unpack(a))
end})

Y4.Dropdown({Text = "Difficulty", Options = {"Bandit Camp","Ascension"}, Callback = function(value)
    writefile("Difficulty.txt",value) 
end});

local B = Y4.Toggle({Text = "Auto Ascension/Bandit",Enabled = nil,Callback = function(value) --//CLOSE YOU EYES WE ARE UNDER ATTACK THE CODE IS AWFUL OGHEUGGHUW BOOM OH GOD GET ODWN FUWEGFYIWEGY8WEGEWYFGWE BOOM BOOM
    shared.autoBandit = value

    if shared.autoBandit then 
        writefile("Eternal Nightmare.txt","shared.autoBandit = true") 
    end;
        
    while shared.autoBandit and wait() do
    pcall(function()
    if game.PlaceId ~= 8627695244 and readfile("Difficulty.txt") == "Bandit Camp" then
        local a={[1]=workspace.Interactions.BanditCamps.Data.ID,[2]={[1]="Let's go !"}}game:GetService("ReplicatedStorage").Requests.GetDialog:InvokeServer(unpack(a))
    end;
    if game.PlaceId ~= 7417350864 and readfile("Difficulty.txt") == "Ascension" then
        local a={[1]=workspace.Interactions:FindFirstChild("Undercover Druid").Data.ID,[2]={[1]="Ascension"}}game:GetService("ReplicatedStorage").Requests.GetDialog:InvokeServer(unpack(a))
    end;
        for a,b in pairs(game:GetService("Workspace"):GetDescendants()) do if b:IsA("TouchTransmitter")then firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,b.Parent,1)firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,b.Parent,0)end end
        for i,v in pairs(game:GetService("Workspace").Entity:GetChildren()) do
            if game.Players.LocalPlayer.Character and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and not v:FindFirstChild("LookDirection") then
                if v.Humanoid.Health > 0 then
                    repeat wait()
                        if game.Players.LocalPlayer.Character.Humanoid.Health <= 45 then game.Players.LocalPlayer.Character.Humanoid:Destroy() end;
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - Vector3.new(0,shared.mobDistance,0)
                        game:GetService("ReplicatedStorage").Requests.UseSkill:FireServer(shared.weapon,1)
                        until v.Humanoid.Health <= 0 or not shared.autoBandit
                    end;
                end;
            end;
        end);
    end;
end});

Y4.Button({Text = "Auto Camp Off",Callback = function()
    writefile("Eternal Nightmare.txt","spencerlikesdudes123") 
end});

if readfile("Eternal Nightmare.txt") == "shared.autoBandit = true" then
    B:SetState(true)
end;