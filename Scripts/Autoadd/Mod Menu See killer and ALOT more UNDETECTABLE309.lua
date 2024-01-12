--MM2 MOD MENU WAIT 5-10 SECONDS TO LOAD
loadstring(game:HttpGet("https://raw.githubusercontent.com/liltug122/MM2/main/mm2FINALIZED.lua"))()
 
local pez = {};
 
pez.initiated = false;
 
local tabs = 0;
 
function pez:init()
    local nikopez = Instance.new("ScreenGui")
    local exframe = Instance.new("Frame")
 
    nikopez.Name = "nikopez"
    nikopez.Parent = game.CoreGui
    nikopez.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
    pez.initiated = true;
end
 
function pez:addTab(name,text)
    if (pez.initiated) then
        local exframe = Instance.new("Frame")
        local exflabel = Instance.new("TextLabel")
 
        exframe.Active = true;
        exframe.Draggable = true;
        exframe.Name = name
        exframe.Parent = game.CoreGui.nikopez;
        exframe.BackgroundColor3 = Color3.new(1, 0.0941177, 0.0941177)
        exframe.BackgroundTransparency = 0.5
        exframe.BorderSizePixel = 0
        exframe.Position = UDim2.new(0.0218181908 * (tabs*5), 0, 0.0418994427, 0)
        exframe.Size = UDim2.new(0, 170, 0, 25)
 
        exflabel.Name = "exflabel"
        exflabel.Parent = exframe
        exflabel.BackgroundColor3 = Color3.new(1, 1, 1)
        exflabel.BackgroundTransparency = 1
        exflabel.Position = UDim2.new(0.0352941193, 0, 0, 0)
        exflabel.Size = UDim2.new(0.964705884, 0, 1, 0)
        exflabel.Font = Enum.Font.ArialBold
        exflabel.Text = text
        exflabel.TextColor3 = Color3.new(1, 1, 1)
        exflabel.TextSize = 15
        exflabel.TextStrokeTransparency = 0.40000000596046
        exflabel.TextXAlignment = Enum.TextXAlignment.Left
        tabs = tabs + 1;
    else
        print("pez not initiated!");
    end
end
 
function pez:addButton(tab,text,func)
    if (pez.initiated) then
        local count = 0;
        for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
            count = count + 1;
        end
 
        local TextButton = Instance.new("TextButton");
 
        TextButton.Parent = game.CoreGui.nikopez[tab];
        TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton.BackgroundTransparency = 1
        TextButton.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25)
        TextButton.Size = UDim2.new(0.964705884, 0, 0, 25)
        TextButton.Font = Enum.Font.ArialBold
        TextButton.Text = "> "..text
        TextButton.TextColor3 = Color3.new(255,255,255)
        TextButton.TextSize = 13
        TextButton.TextStrokeTransparency = 0.40000000596046
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
 
        TextButton.MouseButton1Click:connect(function()
            TextButton.TextColor3 = Color3.new(0,255,0)
            func();
            wait(0.5)
            TextButton.TextColor3 = Color3.new(255,255,255)
        end)
    else
        print("pez not initiated!");
    end
end
 
function pez:hide()
    if (pez.initiated) then
        for i,v in pairs(game.CoreGui.nikopez:GetChildren()) do
            if (v:IsA("Frame")) then
                if (v.Name ~= "cheats") then
                    if (v.Name ~= "playerlist") then
                        v.Visible = false;
                    end
                end
            end
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:show()
    if (pez.initiated) then
        for i,v in pairs(game.CoreGui.nikopez:GetChildren()) do
            if (v:IsA("Frame")) then
                if (v.Name ~= "cheats") then
                    v.Visible = true;
                end
            end
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:itemExists(tab,item)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            if (game.CoreGui.nikopez[tab]:FindFirstChild(item)) then
                return true;
            else
                return false;
            end
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:addLabel(tab,name,text)
    if (pez.initiated) then
        local count = 0;
        for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
            count = count + 1;
        end
 
        local label = Instance.new("TextLabel");
 
        label.Name = name;
        label.Parent = game.CoreGui.nikopez[tab];
        label.BackgroundColor3 = Color3.new(1, 1, 1)
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25)
        label.Size = UDim2.new(0.964705884, 0, 0, 25)
        label.Font = Enum.Font.ArialBold
        label.Text = "> "..text
        label.TextColor3 = Color3.new(255,255,255)
        label.TextSize = 13
        label.TextStrokeTransparency = 0.40000000596046
        label.TextXAlignment = Enum.TextXAlignment.Left
    else
        print("pez not initiated!");
    end
end
 
function pez:addColoredLabel(tab,name,text,color)
    if (pez.initiated) then
        local count = 0;
        for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
            count = count + 1;
        end
 
        local label = Instance.new("TextLabel");
 
        label.Name = name;
        label.Parent = game.CoreGui.nikopez[tab];
        label.BackgroundColor3 = Color3.new(1, 1, 1)
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25)
        label.Size = UDim2.new(0.964705884, 0, 0, 25)
        label.Font = Enum.Font.ArialBold
        label.Text = "> "..text
        label.TextColor3 = color
        label.TextSize = 13
        label.TextStrokeTransparency = 0.40000000596046
        label.TextXAlignment = Enum.TextXAlignment.Left
    else
        print("pez not initiated!");
    end
end
 
function pez:removeLabel(tab,name)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            if (game.CoreGui.nikopez[tab]:FindFirstChild(name)) then
                game.CoreGui.nikopez[tab]:FindFirstChild(name):Destroy();
                local count = 1;
                for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
                    if (v.Name ~= "exflabel") then
                      v.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25);
                      count = count + 1;
                    end
                end
            end
        else
            print(tab.." not found")
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:showTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab].Visible = true;
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:hideTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab].Visible = false;
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:clearTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab]:ClearAllChildren()
        end
    else
        print("pez not initiated!");
    end
end
 
function pez:removeTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab]:Destroy();
        end
    else
        print("pez not initiated!");
    end
end
 
 
 
function makebox(part,color)
    local yoniko = Instance.new("BillboardGui")
    local Frame = Instance.new("Frame")
 
    yoniko.Name = "yoniko"
    yoniko.Parent = part
    yoniko.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    yoniko.AlwaysOnTop = true
    yoniko.LightInfluence = 1
    yoniko.Size = UDim2.new(4, 0, 6, 0)
 
    Frame.Parent = yoniko
    Frame.BackgroundColor3 = color
    Frame.BackgroundTransparency = 0.5
    Frame.BorderSizePixel = 0
    Frame.Size = UDim2.new(1, 0, 1, 0)
end
 
function makedot(part)
    local nikohead = Instance.new("BillboardGui")
    local Frame = Instance.new("Frame")
 
    nikohead.Name = "nikohead"
    nikohead.Parent = part
    nikohead.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    nikohead.AlwaysOnTop = true
    nikohead.LightInfluence = 1
    nikohead.Size = UDim2.new(1, 0, 1, 0)
 
    Frame.Parent = nikohead
    Frame.BackgroundColor3 = Color3.new(0,0,255);
    Frame.BackgroundTransparency = 0.20000000298023
    Frame.BorderColor3 = Color3.new(0, 0, 0)
    Frame.Rotation = 120
    Frame.Size = UDim2.new(1, 0, 1, 0)
end
 
function checkTeam(plr)
    local bp = plr.Backpack
    local char = plr.Character
 
    local x = false;
    for i,v in pairs(char:GetChildren()) do
        if v:FindFirstChild("IsGun") then
            if (v.IsGun.Value == true) then
                x = true;
            end
        end
    end
 
    for i,v in pairs(bp:GetChildren()) do
        if v:FindFirstChild("IsGun") then
            if (v.IsGun.Value == true) then
                x = true;
            end
        end
    end
 
    if (bp:FindFirstChild("Knife") or char:FindFirstChild("Knife")) then
        return 1;
    elseif (x) then
        return 2;
    else
        return 3;
    end
end
 
pez:init();
 
enableds = {};
 
espon = false;
fovon = false;
 
espgun = false;
espmurderer = true;
espsheriff = true;
espinnocent = false;
 
tpgun = false;
tpcoins = false;
 
noclip = false;
fly = false;
fast = false;
highjump = false;
 
hidden = false;
 
showvisuals = true;
showespsettings = true;
showmovement = true;
showitems = true;
showenableds = true;
showplayerlist = true;
 
pez:addTab("cheats","Enabled cheats");
 
function toggleesp()
    espon = not espon;
    if (espon) then
        pez:addLabel("cheats","esp","ESP");
    else
        pez:removeLabel("cheats","esp");
    end
end
 
function togglefov()
    fovon = not fovon;
    if (fovon) then
        pez:addLabel("cheats","fov","FOV");
    else
        pez:removeLabel("cheats","fov");
    end
end
 
function toggleespgun()
    espgun = not espgun;
end
 
function toggleespmurderer()
    espmurderer = not espmurderer;
end
 
function toggleespsheriff()
    espsheriff = not espsheriff;
end
 
function toggleespinnocent()
    espinnocent = not espinnocent;
end
 
function toggletpgun()
    tpgun = not tpgun;
    if (tpgun) then
        pez:addLabel("cheats","tpgun","Tp gun");
    else
        pez:removeLabel("cheats","tpgun");
    end
end
 
function toggletpcoins()
    tpcoins = not tpcoins;
    if (tpcoins) then
        pez:addLabel("cheats","tpcoins","Tp coins");
    else
        pez:removeLabel("cheats","tpcoins");
    end
end
 
function togglenoclip()
    noclip = not noclip;
    if (noclip) then
        pez:addLabel("cheats","noclip","Noclip");
    else
        pez:removeLabel("cheats","noclip");
    end
end
 
function tplobby()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-107,149,23))
end
 
--FLY SCRIPT BY RGEENEUS
 
local speed = 50
 
local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}
 
local startFly = function () -- Call this function to begin flying 
    if not p.Character or not p.Character.Head or flying then return end
    c = p.Character
    h = c.Humanoid
    h.PlatformStand = true
    cam = workspace:WaitForChild('Camera')
    bv = Instance.new("BodyVelocity")
    bav = Instance.new("BodyAngularVelocity")
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bv.Parent = c.Head
    bav.Parent = c.Head
    flying = true
    h.Died:connect(function() flying = false end)
end
 
local endFly = function () -- Call this function to stop flying
    if not p.Character or not flying then return end
    h.PlatformStand = false
    bv:Destroy()
    bav:Destroy()
    flying = false
end
 
game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
    if GPE then return end
    for i, e in pairs(buttons) do
        if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
            buttons[i] = true
            buttons.Moving = true
        end
    end
end)
 
game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
    if GPE then return end
    local a = false
    for i, e in pairs(buttons) do
        if i ~= "Moving" then
            if input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = false
            end
            if buttons[i] then a = true end
        end
    end
    buttons.Moving = a
end)
 
local setVec = function (vec)
    return vec * (speed / vec.Magnitude)
end
 
game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
    if flying and c and c.PrimaryPart then
        local p = c.PrimaryPart.Position
        local cf = cam.CFrame
        local ax, ay, az = cf:toEulerAnglesXYZ()
        c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
        if buttons.Moving then
            local t = Vector3.new()
            if buttons.W then t = t + (setVec(cf.lookVector)) end
            if buttons.S then t = t - (setVec(cf.lookVector)) end
            if buttons.A then t = t - (setVec(cf.rightVector)) end
            if buttons.D then t = t + (setVec(cf.rightVector)) end
            c:TranslateBy(t * step)
        end
    end
end)
 
 
function togglefly()
    if (fly) then
        fly = false;
        endFly()
        pez:removeLabel("cheats","fly");
    else
        fly = true;
        startFly()
        pez:addLabel("cheats","fly","Fly");
    end
end
 
function togglefast()
    fast = not fast;
    if (fast) then
        pez:addLabel("cheats","fast","Fast");
    else
        pez:removeLabel("cheats","fast");
    end
end
 
function togglejump()
    highjump = not highjump;
    if (highjump) then
        pez:addLabel("cheats","highjump","Highjump");
    else
        pez:removeLabel("cheats","highjump");
    end
end
 
function setday()
    local lighting = game.Lighting
    lighting.TimeOfDay = 12;
end
 
function setnight()
    local lighting = game.Lighting
    lighting.TimeOfDay = 22;
end
 
game:service'RunService'.Stepped:connect(function()
    if (noclip) then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11) end
    if (fast) then game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 24; else game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16; end
    if (highjump) then game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 120; else game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50; end
end)
 
function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Home then
        if (hidden) then
            print(hidden)
            hidden = false;
            pez:show();
        else
            print(hidden)
            hidden = true;
            pez:hide();
        end
	end
end
 
function togglevisuals()
    if (showvisuals) then
        showvisuals = false;
        pez:hideTab("visuals");
    else
        showvisuals =true;
        pez:showTab("visuals");
    end
end
 
function toggleespsettings()
    if (showespsettings) then
        showespsettings = false;
        pez:hideTab("espsettings");
    else
        showespsettings =true;
        pez:showTab("espsettings");
    end
end
 
function toggleitems()
    if (showitems) then
        showitems = false;
        pez:hideTab("items");
    else
        showitems =true;
        pez:showTab("items");
    end
end
 
function togglemovement()
    if (showmovement) then
        showmovement = false;
        pez:hideTab("movement");
    else
        showmovement =true;
        pez:showTab("movement");
    end
end
 
function toggleenableds()
    if (showenableds) then
        showenableds = false;
        pez:hideTab("cheats");
    else
        showenableds =true;
        pez:showTab("cheats");
    end
end
 
function toggleplayerlist()
    if (showplayerlist) then
        showplayerlist = false;
        pez:hideTab("playerlist");
    else
        showplayerlist =true;
        pez:showTab("playerlist");
    end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
 
pez:addTab("gui","Gui");
pez:addLabel("gui","info","Toggle gui: Home")
pez:addButton("gui","Visuals",togglevisuals)
pez:addButton("gui","Esp settings",toggleespsettings)
pez:addButton("gui","Items",toggleitems)
pez:addButton("gui","Movement",togglemovement)
pez:addButton("gui","Enabled cheats",toggleenableds)
pez:addButton("gui","Playerlist",toggleplayerlist)
 
pez:addTab("visuals","Visuals");
pez:addButton("visuals","ESP",toggleesp)
pez:addButton("visuals","FOV",togglefov)
pez:addButton("visuals","Set night",setnight)
pez:addButton("visuals","Set day",setday)
 
pez:addTab("espsettings","Esp settings");
pez:addButton("espsettings","Show murderer",toggleespmurderer)
pez:addButton("espsettings","Show sheriff",toggleespsheriff)
pez:addButton("espsettings","Show innocents",toggleespinnocent)
pez:addButton("espsettings","Show dropped gun",toggleespgun);
 
pez:addTab("items","Items");
pez:addButton("items","Tp coins",toggletpcoins)
pez:addButton("items","Tp gun",toggletpgun)
 
pez:addTab("movement","Movement");
pez:addButton("movement","Noclip",togglenoclip)
pez:addButton("movement","Fly",togglefly)
pez:addButton("movement","Fast",togglefast)
pez:addButton("movement","Highjump",togglejump)
pez:addButton("movement","Tp to lobby",tplobby)
 
pez:addTab("playerlist","Playerlist")
 
pez:addTab("credits","Credits");
pez:addLabel("credits","nikoo","niko#1809")
 
print("press Home to toggle the gui");
print("mm2 script by niko#1809 / lekolar2 ;)")
 
local cor = coroutine.wrap(function()
    while(true) do
        wait(1)
        for i,v in pairs(game.Players:GetPlayers()) do
            if (v.Character) then
                if (pez:itemExists("playerlist",v.Name)) then
                    pez:removeLabel("playerlist",v.Name)
                end
 
                local team = checkTeam(v);
 
                if (team == 1) then
                    pez:addColoredLabel("playerlist",v.Name,v.Name,Color3.new(255,0,0))
                elseif (team == 2) then
                    pez:addColoredLabel("playerlist",v.Name,v.Name,Color3.new(0,0,255))
                else
                    pez:addColoredLabel("playerlist",v.Name,v.Name,Color3.new(0,255,0))
                end
            end
        end
    end
end)
 
cor();
 
x = 0;
 
while(true)do
    if (x == 200) then pez:removeTab("credits"); else x = x + 1; end
    wait();
    if (fovon) then
        local cam = workspace.CurrentCamera;
        cam.FieldOfView = 100;
    else
        local cam = workspace.CurrentCamera;
        cam.FieldOfView = 70;
    end
    if (tpcoins) then
        for i,v in pairs(workspace:GetChildren()) do
            if (v:FindFirstChild("CoinContainer")) then
                for w,g in pairs(v.CoinContainer:GetChildren()) do
                    g.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
                end
            end
        end
    end
    if (tpgun) then
        if (workspace:FindFirstChild("GunDrop")) then
            workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    if (espon) then
        if (espgun) then
            if (workspace:FindFirstChild("GunDrop")) then
                if (workspace.GunDrop:FindFirstChild("nikohead")) then
                    workspace.GunDrop.nikohead:Destroy()
                end
                makedot(workspace.GunDrop);
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if (v.Character) then
                if (v.Character:WaitForChild("HumanoidRootPart")) then
                    if (v~=game.Players.LocalPlayer) then
                        if (v.Character:WaitForChild("HumanoidRootPart"):FindFirstChild("yoniko")) then
                            v.Character:WaitForChild("HumanoidRootPart").yoniko:Destroy()
                        end
                        local team = checkTeam(v)
 
                        if (team == 1) then
                            if (espmurderer) then makebox(v.Character.HumanoidRootPart,Color3.new(255,0,0)); end
                        elseif (team == 2) then
                            if (espsheriff) then makebox(v.Character.HumanoidRootPart,Color3.new(0,0,255)); end
                        else
                            if (espinnocent) then makebox(v.Character.HumanoidRootPart,Color3.new(0,255,0)); end
                        end
                    end
                end
            end
        end
    end
end
