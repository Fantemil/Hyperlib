-- Variables
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Main")
local main3 = window:NewTab("Auto Farm")
local main1 = window:NewTab("Teleports")
local main4 = window:NewTab("Combat")
local main2 = window:NewTab("Misc")
local section = main:NewSection("Main")
local section1 = main1:NewSection("Area TP")
local section2 = main1:NewSection("SCP TP")
local section3 = main1:NewSection("Spawn TP")
local section4 = main2:NewSection("LocalPlayer")
local section5 = main3:NewSection("Auto Farm")
local section6 = main4:NewSection("Combat")
local section7 = main4:NewSection("ESP")
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local camera = game.Workspace.CurrentCamera
local uis = game:GetService("UserInputService")
local userInput = game:GetService("UserInputService")
local ticket = 0
local timeHeld = 0
local isHolding = false
local RunService = game:GetService("RunService")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Functions
local function GetClosestPlayer()
   local target = nil
   local distance = math.huge
   for i,v in next, game.Players:GetPlayers() do
       if v and v ~= plr and v.Character and v.Character:FindFirstChildOfClass('Humanoid') and v.Character:FindFirstChildOfClass('Humanoid').RootPart and v.Team ~= plr.Team then
           local plrdist = plr:DistanceFromCharacter(v.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame.p)
           if plrdist < distance then
               target = v
               distance = plrdist
           end
       end
   end
   return target
end

local function ClosestPlayerToMouse()
    local target = nil
    local dist = math.huge
    for _, v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= plr.Name then
            if v.Team ~= plr.Team 
                and v.Character
                and v.Character:FindFirstChild("Humanoid")
                and v.Character.Humanoid.Health ~= 0
                and v.Character:FindFirstChild("HumanoidRootPart")
            then
                local screenpoint = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local check = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(screenpoint.X, screenpoint.Y)).magnitude
                if check < dist then
                    target = v
                    dist = check
                end
            end
        end
    end
    return target
end

-- Holding MB2 Check (kalas)

function rightMouseButtonHeld()
    isHolding = true
end

function rightMouseButtonReleased()
    if not isHolding then
        return
    end
    isHolding = false
end

userInput.InputBegan:connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        ticket = ticket + 1
        local currentTicket = ticket

        if timeHeld > 0 then
            task.delay(timeHeld, function()
                if ticket == currentTicket then
                    rightMouseButtonHeld()
                end
            end)
        else
            rightMouseButtonHeld()
        end
    end
end)

userInput.InputEnded:connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        ticket = ticket + 1
        rightMouseButtonReleased()
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Tables
local spawns = {} 

for i,v in ipairs(game.Workspace.Spawns:GetChildren()) do 
    if not table.find(spawns, v.Name) then 
        table.insert(spawns, v.Name)
    end 
end

local playerss = {} 

for i,v in ipairs(game.Players:GetChildren()) do 
    if not table.find(playerss, v.Name) then 
        table.insert(playerss, v.Name)
    end 
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- New Instances 

local part = Instance.new("Part")
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(10000, 10000, 10000)
part.Parent = game.Workspace

local part = Instance.new("Part")
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(-11, 33, -173)
part.Parent = game.Workspace

local part = Instance.new("Part")
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = game.Workspace.Spawns:FindFirstChild("Chaos Insurgency").CFrame
part.Parent = game.Workspace

local part = Instance.new("Part")
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(233, 13, 511)
part.Parent = game.Workspace

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Main

section:NewButton("TP To Nuke Bunker (Hidden)", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(233, 15, 511)
end)
end)

section:NewButton("Breach 008", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(233, 17, 511)
wait(1)
fireproximityprompt(game:GetService("Workspace")["Sector 3"].ModelCI008["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt)
end)
end)

section:NewButton("Breach 096", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(708.509, 40.35, -159.07)
wait(12)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-171.968, 40.35, 503.986)
end)
end)


section:NewButton("Sabotage Transformer", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-102, 34, -176)
wait(1)
fireproximityprompt(game.Workspace["Sector 2"].SectionB:FindFirstChild("TransformerC4").ClickPart.ProximityPrompt)
end)
end)

section:NewButton("Hack Control Room", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(83, 37, 192)
wait(1)
fireproximityprompt(game:GetService("Workspace")["Sector 2"].SectionA.ModelCI["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt)
end)
end)

section:NewButton("Escape As CD", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(7.023, 36.498, -170.876)
wait(5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-52.511, 87.748, 236.672)
end)
end)

section:NewButton("Authorize Nearby Players (Equip It)", "", function()
pcall(function()
for i,v in pairs(game:GetService("Players"):GetChildren()) do 
game:GetService("ReplicatedStorage").Remotes.Authorise:FireServer(v)
end 
end) 
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Teleports
section1:NewButton("Tp To Selected Area", "", function()
pcall(function()
if d == "Sector 3" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(491, 42, 150)
elseif d == "Bunker" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(228, 42, 438)
elseif d == "Class D Viewing" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(21, 62, 467)
elseif d == "Class D Containment" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(26, 45, 519)
elseif d == "Control Room" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(67, 42, 217)
elseif d == "Sector 1" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-358, 42, 56)
elseif d == "Shooting Range" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-433, 32, 3)
elseif d == "Heli Pad" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-573, 52, 436)
elseif d == "Transformer" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-95, 42, -148)
elseif d == "Sector 2-1" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-313, 42, 57)
elseif d == "Sector 2-2" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(290, 42, 151)
end
end)
end)

section1:NewDropdown("Select Area", "", {"Sector 1", "Sector 2-1", "Sector 2-2", "Sector 3", "Bunker", "Control Room", "Transformer", "Class D Containment", "Class D Viewing", "Heli Pad", "Shooting Range"}, function(c)
d = c 
end)

section2:NewButton("Tp To SCP Containment", "", function()
pcall(function()
if r == "008" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(538, 40, 388)
elseif r == "008 Deconstructor" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(498, 40, 298)
elseif r == "049" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(605, 40, 53)
elseif r == "966" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(653, 40, 48)
elseif r == "457" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(607, 40, -43)
elseif r == "096" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(662, 40, -121)
elseif r == "173" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(204, 54, 158)
elseif r == "002" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-82, 40, 143)
elseif r == "2950" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-213, 40, 190)
elseif r == "131" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-213, 40, 301)
elseif r == "066" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-215, 40, -39)
elseif r == "999" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-282, 40, 27)
elseif r == "409" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-87, 40, -65)
elseif r == "1299" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(141, 40, -67)
elseif r == "1025" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(256, 40, -52)
elseif r == "023" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(258, 40, 248)
end 
end)
end)

section2:NewDropdown("Select SCP Containment", "", {"008", "096", "049", "173", "966", "457", "999", "023", "008 Deconstructor", "002", "2950", "131", "066", "409", "1299", "1025"}, function(l)
r = l
end)

section3:NewButton("Tp To Selected Spawn", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns:FindFirstChild(b).CFrame + Vector3.new(0, 10, 0)
end)
end)

section3:NewDropdown("Select Spawn", "", spawns, function(a)
b = a 
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Local Player 

section4:NewToggle("Toggle Walkspeed", "", function(irut)
ortm = irut 
while ortm and task.wait() do
pcall(function()
plr.Character.Humanoid.WalkSpeed = pro 
end) 
end 
end)

section4:NewToggle("Toggle JumpPower", "", function(ooga)
booga = ooga
while booga and task.wait() do
pcall(function()
plr.Character.Humanoid.JumpPower = prop 
end) 
end 
end)

section4:NewToggle("NoClip", "", function(gfrt)
lotp = gfrt
while lotp and task.wait() do 
pcall(function()
for i,v in pairs(plr.Character:GetDescendants()) do 
    if v:IsA("BasePart") and v.CanCollide ~= false then
        v.CanCollide = false
    end 
end 
end)
end 
end)

section4:NewTextBox("WalkSpeed", "", function(no)
local h = game.Players.LocalPlayer.Character.Humanoid
local mt = getrawmetatable(game)
setreadonly(mt, false)
local scp = mt.__index
mt.__index = newcclosure(function(r, p)
if r == h and p == "WalkSpeed" then
return 16
end
return scp(r, p)
end)
setreadonly(mt, true)
pro = no
end)

section4:NewTextBox("JumpPower", "", function(fr)
local h = game.Players.LocalPlayer.Character.Humanoid
local mt = getrawmetatable(game)
setreadonly(mt, false)
local scp = mt.__index
mt.__index = newcclosure(function(r, p)
if r == h and p == "JumpPower" then
return 50
end
return scp(r, p)
end)
setreadonly(mt, true)
prop = fr
end)

section4:NewButton("Clip", "", function()
pcall(function()
for i,v in pairs(plr.Character:GetDescendants()) do 
    if v.Name == "HumanoidRootPart" and v.CanCollide == false then 
        v.CanCollide = true
    end 
end
end)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Auto Farm 
section5:NewToggle("Auto Farm Card Levels", "", function(lpr)
lpc = lpr 
while lpc and task.wait() do 
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(10000, 10003.497, 10000)
wait(.1)
game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear), {CFrame = CFrame.new(10010, 10003.497, 10010)}):Play()
wait(5)
end) 
end 
end)

section5:NewToggle("Auto Breach 008", "", function(ir)
it = ir 
while it and task.wait(1) do 
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(530, 41, 388)
wait(1)
fireproximityprompt(game:GetService("Workspace")["Sector 3"].ModelCI008["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt)
end) 
end 
end)

section5:NewToggle("Auto Farm Escapes", "", function(prt)
poit = prt 
while poit and task.wait(5) do 
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(7.023, 36.498, -170.876)
wait(5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-52.511, 87.748, 236.672)
wait(3)
local args = {
    [1] = {
        [1] = "Class - D",
        [2] = 0,
        [3] = false
    },
    [2] = false,
    [3] = false
}

game:GetService("ReplicatedStorage").Remotes.Spawn:InvokeServer(unpack(args))
end) 
end 
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Combat
section6:NewToggle("Mouse Kill Aura", "", function(por)
hub = por
end)

section6:NewKeybind("Center Mouse", "", Enum.KeyCode.F, function()
 mousemoveabs(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
end)

section6:NewToggle("Kill Player", "", function(OKLOL)
OKBOZO = OKLOL
while OKBOZO and task.wait() do 
pcall(function()
local args = {
    [1] = {
        [1] = game.Players[xdxd].Character.Head.Position.X,
        [2] = game.Players[xdxd].Character.Head.Position.Y,
        [3] = game.Players[xdxd].Character.Head.Position.Z
    },
    [2] = game.Players[xdxd].Character.Head
}

game:GetService("ReplicatedStorage").Remotes.ShootRemote:FireServer(unpack(args))
end)
end 
end)

local xxx = section6:NewDropdown("Select Player", "", playerss, function(xdlol)
xdxd = xdlol 
end) 

section6:NewButton("Refresh Players", "", function()
pcall(function()
table.clear(playerss)
for i,v in ipairs(game.Players:GetChildren()) do 
    if not table.find(playerss, v.Name) then 
        table.insert(playerss, v.Name)
    end 
end
xxx:Refresh(playerss)
end)
end)

section6:NewToggle("Kill Aura (High Moderator Ban Chance)", "", function(XD)
LOL = XD 
while LOL and task.wait(.04) do 
pcall(function()
local args = {
    [1] = {
        [1] = GetClosestPlayer().Character.Head.Position.X,
        [2] = GetClosestPlayer().Character.Head.Position.Y,
        [3] = GetClosestPlayer().Character.Head.Position.Z
    },
    [2] = GetClosestPlayer().Character.Head
}

game:GetService("ReplicatedStorage").Remotes.ShootRemote:FireServer(unpack(args))
end) 
end 
end)

section6:NewToggle("Loop Contain Nearby SCPS (v-7)", "", function(qot)
qor = qot 
while qor and task.wait() do 
pcall(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
game:GetService("ReplicatedStorage").Remotes.Update:FireServer(v)
end 
end)
end 
end)


section7:NewButton("Enable ESP", "", function()
ESP:Toggle(true)
end) 

section7:NewButton("Enable Boxes", "", function()
ESP.Boxes = true
end) 

section7:NewButton("Enable Names", "", function()
ESP.Names = true
end) 

section7:NewButton("Disable ESP", "", function()
ESP:Toggle(false)
end) 

section7:NewButton("Disable Boxes", "", function()
ESP.Boxes = false
end) 

section7:NewButton("Disable Names", "", function()
ESP.Names = false
end) 

-- Anti AFK 
pcall(function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end
end)

game:GetService("RunService").RenderStepped:Connect(function()
if hub and isHolding and task.wait(.04) then
pcall(function()
local args = {
    [1] = {
        [1] = ClosestPlayerToMouse().Character.Head.Position.X,
        [2] = ClosestPlayerToMouse().Character.Head.Position.Y,
        [3] = ClosestPlayerToMouse().Character.Head.Position.Z
    },
    [2] = ClosestPlayerToMouse().Character.Head
}

game:GetService("ReplicatedStorage").Remotes.ShootRemote:FireServer(unpack(args))
end)
end
end)