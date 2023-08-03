local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Main")
local section = main:NewSection("Main")
local main3 = window:NewTab("Auto")
local section5 = main3:NewSection("Auto Farms")
local main4 = window:NewTab("Combat")
local main5 = window:NewTab("ESP")
local section6 = main4:NewSection("PVP")
local section7 = main5:NewSection("ESP")
local main2 = window:NewTab("Teleports")
local section2 = main2:NewSection("Area TP")
local section3 = main2:NewSection("SCP Containment TP")
local section4 = main2:NewSection("SpawnPoint TP")
local main1 = window:NewTab("Misc")
local section1 = main1:NewSection("Local Player")
local spawns = {}
local players = {}
local plr = game.Players.LocalPlayer

pcall(function()
local h = game.Players.LocalPlayer.Character.Humanoid
local oldmt 
oldmt = hookmetamethod(game, "__index", function(self, index)
    if self == h and index == "WalkSpeed" then
        return nil
    end 
    return oldmt(self, index)
end)
end) 

pcall(function()
local ht = game.Players.LocalPlayer.Character.Humanoid
local oldmtt 
oldmtt = hookmetamethod(game, "__index", function(selft, indext)
    if selft == ht and indext == "JumpPower" then
        return game.Players.LocalPlayer.Character.Humanoid.JumpPower
    end 
    return oldmtt(selft, indext)
end)
end) 

local function getclosestplayer()
    local closest = nil 
    local maxdist = math.huge 
    for i,v in pairs(game.Players:GetPlayers()) do 
        if v ~= plr and v.Team ~= plr.Team and v.TeamColor.Color ~= game.Teams["Class - D"].TeamColor.Color and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid").Health > 0 then
            local magnitude = (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
            if magnitude < maxdist then 
                maxdist = magnitude 
                closest = v 
            end 
        end 
    end 
    return closest
end 

local function getclosestplayertomouse()
    local closest = nil
    local maxdist = math.huge
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= plr and v.Team ~= plr.Team and v.TeamColor.Color ~= game.Teams["Class - D"].TeamColor.Color and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid").Health > 0 then 
            local pos = game.Workspace.CurrentCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local magnitude = (Vector2.new(plr:GetMouse().x, plr:GetMouse().y) - Vector2.new(pos.x, pos.y)).Magnitude
            if magnitude < maxdist then
                maxdist = magnitude
                closest = v
            end
        end
    end
    return closest
end

for i,v in pairs(game.Players:GetPlayers()) do 
    if v ~= plr and (not table.find(players, v.Name)) then 
        table.insert(players, v.Name)
    end 
end 

for i,v in pairs(game.Workspace.Spawns:GetChildren()) do 
    if (not table.find(spawns, v.Name)) then 
        table.insert(spawns, v.Name)
    end 
end 

local function PartGlow(R)
    local Highlight = Instance.new("Highlight")
    Highlight.Adornee = R
    Highlight.Parent = R
    Highlight.OutlineColor = Color3.fromRGB(255, 0, 0)                              
    Highlight.OutlineTransparency = 0 
    Highlight.FillTransparency = 1
    Highlight.Name = R.Name.."'s Highlight"
    Highlight.Enabled = false
end 

local function partnametag(player)
local bill = Instance.new("BillboardGui")
bill.Parent = player
bill.Adornee = player:FindFirstChildOfClass("Part")
bill.Name = player.Name.."'s Nametag"
bill.Size = UDim2.new(0, 100, 0, 150)
bill.AlwaysOnTop = true
bill.StudsOffset = Vector3.new(0, -1, 0)
bill.Enabled = false

local text = Instance.new("TextLabel")
text.Parent = bill
text.Text = player.Name
text.Position = UDim2.new(0, 0, 0, -50)
text.Size = UDim2.new(0, 100, 0, 100)
text.Font = Enum.Font.SourceSans
text.TextSize = 15
text.TextColor3 = Color3.fromRGB(255, 0, 0)
text.TextYAlignment = Enum.TextYAlignment.Bottom
text.BackgroundTransparency = 1
text.TextStrokeTransparency = 0
text.ZIndex = 5

game:GetService("RunService").RenderStepped:Connect(function()
    if player then 
        text.Text = player.Name
    end
end)
end 

local function Glow(Player, Color)
    local Highlight = Instance.new("Highlight")
    Highlight.Adornee = Player.Character
    Highlight.Parent = Player.Character
    Highlight.OutlineColor = Color                              
    Highlight.OutlineTransparency = 0 
    Highlight.FillTransparency = 1
    Highlight.Name = Player.Name.."'s Highlight"
    Highlight.Enabled = false
end 

local function nametag(player)
local bill = Instance.new("BillboardGui")
bill.Parent = player.Character
bill.Adornee = player.Character:FindFirstChild("HumanoidRootPart")
bill.Name = player.Name.."'s Nametag"
bill.Size = UDim2.new(0, 100, 0, 150)
bill.AlwaysOnTop = true
bill.StudsOffset = Vector3.new(0, -1, 0)
bill.Enabled = false

local text = Instance.new("TextLabel")
text.Parent = bill
text.Text = player.Name
text.Position = UDim2.new(0, 0, 0, -50)
text.Size = UDim2.new(0, 100, 0, 100)
text.Font = Enum.Font.SourceSans
text.TextSize = 15
text.TextColor3 = player.TeamColor.Color
text.TextYAlignment = Enum.TextYAlignment.Bottom
text.BackgroundTransparency = 1
text.TextStrokeTransparency = 0
text.ZIndex = 5

game:GetService("RunService").RenderStepped:Connect(function()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then 
        text.Text = player.Name.." | "..math.floor(player.Character:FindFirstChild("Humanoid").Health).."/"..math.floor(player.Character:FindFirstChild("Humanoid").MaxHealth).." | "..math.floor((player.Character:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude).."m"
    end
end)
end 

local part = Instance.new("Part")
part.Anchored = true 
part.CFrame = CFrame.new(2, 32, -179)
part.Name = ""
part.Parent = game.Workspace
part.Size = Vector3.new(50, 1, 50)

local part1 = Instance.new("Part")
part1.Anchored = true 
part1.CFrame = CFrame.new(-52, 84, 229)
part1.Name = ""
part1.Parent = game.Workspace
part1.Size = Vector3.new(50, 1, 50)

section:NewButton("Toggle Chat", "", function()
if plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible == false then 
plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true 
plr.PlayerGui.Chat.Frame.ChannelsBarParentFrame.Visible = true 
else 
plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
plr.PlayerGui.Chat.Frame.ChannelsBarParentFrame.Visible = false
end
end)

section:NewButton("Sabotage/Fix Transformers", "", function()
pcall(function()
local oldpos = plr.Character.HumanoidRootPart.Position
wait(.1)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-98, 32, -179)
wait(1)
if game:GetService("Workspace"):FindFirstChild("BrokenFacilityTransformer") then 
fireproximityprompt(game:GetService("Workspace").BrokenFacilityTransformer["Meshes/BrokenTransformer_Cube.023 (1)"].Attachment.CIHackDeviceDisarmPrompt)
wait(.5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
elseif game:GetService("Workspace")["Sector 2"].SectionB:FindFirstChild("TransformerC4") then 
fireproximityprompt(game:GetService("Workspace")["Sector 2"].SectionB.TransformerC4.ClickPart.ProximityPrompt)
wait(.5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
else
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
end
end)
end)

section:NewButton("Breach/Recontain 008", "", function()
pcall(function()
local oldpos = plr.Character.HumanoidRootPart.Position 
wait(.1)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(533, 40, 392)
wait(1)
if game:GetService("Workspace")["Sector 3"]:FindFirstChild("CIHackDevice008") then 
fireproximityprompt(game:GetService("Workspace")["Sector 3"].CIHackDevice008["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDeviceDisarmPrompt)
wait(.5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
elseif game:GetService("Workspace")["Sector 3"]:FindFirstChild("ModelCI008") then
fireproximityprompt(game:GetService("Workspace")["Sector 3"].ModelCI008["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt)
wait(.5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
else 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
end
end)
end)

section:NewButton("Hack/Revert Control Room", "", function()
pcall(function()
local oldpos = plr.Character.HumanoidRootPart.Position 
wait(.1)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(83, 37, 193)
wait(1)
if game:GetService("Workspace")["Sector 2"].SectionA:FindFirstChild("ModelCI") then 
fireproximityprompt(game:GetService("Workspace")["Sector 2"].SectionA.ModelCI["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt)
wait(.5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
elseif game:GetService("Workspace")["Sector 2"].SectionA:FindFirstChild("CIHackDevice") then 
fireproximityprompt(game:GetService("Workspace")["Sector 2"].SectionA.CIHackDevice["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDeviceDisarmPrompt)
wait(.5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
else
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
end
end) 
end)

section:NewButton("Breach 096", "", function()
pcall(function()
local oldpos = plr.Character.HumanoidRootPart.Position 
wait(.1)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(708, 40, -160)
wait(10)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
end) 
end)

section:NewButton("Teleport To Nuke Bunker", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(220, 24, 505)
end) 
end)

section:NewButton("Escape Facility", "", function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(8, 36, -176)
wait(5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-27, 88, 226)
end)

section:NewButton("Use Medkit On Self", "", function() 
pcall(function()
game:GetService("ReplicatedStorage").Remotes.Interact:FireServer(plr.Character)
end)
end)

section:NewButton("Authorize Nearby Players", "", function()
pcall(function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do 
game:GetService("ReplicatedStorage").Remotes.Authorise:FireServer(v)
end 
end) 
end)

section2:NewButton("Tp To Selected Area", "", function()
pcall(function()
if d == "Sector 3" then 
plr.Character.HumanoidRootPart.CFrame = CFrame.new(491, 42, 151)
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

section2:NewDropdown("Select Area", "", {"Sector 1", "Sector 2-1", "Sector 2-2", "Sector 3", "Control Room", "Transformer", "Bunker", "Class D Containment", "Class D Viewing", "Heli Pad", "Shooting Range"}, function(c)
d = c 
end)

section3:NewButton("Tp To SCP Containment", "", function()
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

section3:NewDropdown("Select SCP Containment", "", {"008", "096", "049", "173", "966", "457", "999", "023", "008 Deconstructor", "002", "1299", "1025", "2950", "131", "066", "409"}, function(l)
r = l
end)

section4:NewButton("Tp To Selected Spawn", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns:FindFirstChild(b).CFrame + Vector3.new(0, 10, 0)
end)
end)

section4:NewDropdown("Select Spawn", "", spawns, function(a)
b = a 
end)

section5:NewToggle("Auto Escape Facility", "", function(orp)
popr = orp 
while popr and task.wait() do 
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(8, 36, -176)
wait(5)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-27, 88, 226)
wait(1)
plr.Character.Humanoid.Health = 0 
wait(8)
end)
end
end)
    
section5:NewToggle("Auto Breach 008 (use noclip)", "", function(ir)
it = ir 
while it and task.wait(.5) do 
pcall(function()
plr.Character.HumanoidRootPart.CFrame = CFrame.new(530, 41, 388)
wait(1)
if game:GetService("Workspace")["Sector 3"]:FindFirstChild("ModelCI008") then 
fireproximityprompt(game:GetService("Workspace")["Sector 3"].ModelCI008["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt)
end 
end) 
end 
end)

section1:NewToggle("NoClip", "", function(q)
qr = q 
while qr and task.wait() do 
pcall(function()
for i,v in pairs(plr.Character:GetChildren()) do 
if v:IsA("BasePart") and v.CanCollide then 
v.CanCollide = false
end 
end 
end) 
end 
end)

section1:NewButton("Clip", "", function()
pcall(function()
plr.Character.HumanoidRootPart.CanCollide = true 
end) 
end)

section1:NewSlider("WalkSpeed", "", 500, 16, function(g)
ws = g 
end)

section1:NewSlider("JumpPower", "", 500, 50, function(f)
jp = f
end)

section1:NewToggle("Loop WalkSpeed", "", function(uwu)
uwubaka = uwu 
while uwubaka and task.wait() do 
pcall(function()
plr.Character.Humanoid.WalkSpeed = ws
end)
end 
end)

section1:NewToggle("Loop JumpPower", "", function(uwuw)
uwubakaw = uwuw
while uwubakaw and task.wait() do 
pcall(function()
plr.Character.Humanoid.JumpPower = jp 
end)
end 
end)

section6:NewToggle("Kill Aura (Closest)", "", function(ora)
dora = ora 
while dora and task.wait() do 
pcall(function()
game:GetService("ReplicatedStorage").Remotes.ShootRemote:FireServer({getclosestplayer().Character.Head.Position.x, getclosestplayer().Character.Head.Position.y + .5, getclosestplayer().Character.Head.Position.z}, getclosestplayer().Character.Head)
end) 
end 
end)

section6:NewToggle("Kill Aura (Closest To Mouse)", "", function(orea)
dorea = orea 
while dorea and task.wait() do 
pcall(function()
game:GetService("ReplicatedStorage").Remotes.ShootRemote:FireServer({getclosestplayertomouse().Character.Head.Position.x, getclosestplayertomouse().Character.Head.Position.y + .5, getclosestplayertomouse().Character.Head.Position.z}, getclosestplayertomouse().Character.Head)
end) 
end 
end)

section6:NewKeybind("Center Mouse", "", Enum.KeyCode.F, function()
mousemoveabs(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
end)

section6:NewToggle("Loop Contain Nearby SCPS (V-7 Required)", "", function(qot)
qor = qot 
while qor and task.wait() do 
pcall(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
game:GetService("ReplicatedStorage").Remotes.Update:FireServer(v)
end 
end)
end 
end)

section6:NewToggle("Kill Player", "", function(agsa)
rete = agsa
while rete and task.wait(.1) do 
pcall(function()
print(getclosestplayertomouse())
game:GetService("ReplicatedStorage").Remotes.ShootRemote:FireServer({game.Players[xrop].Character.Head.Position.x, game.Players[xrop].Character.Head.Position.y + .5, game.Players[xrop].Character.Head.Position.z}, game.Players[xrop].Character.Head)
end)
end 
end)

section7:NewToggle("Player Highlights", "", function(iroq)
iraq = iroq 
while iraq and task.wait() do 
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do 
if v.Character and v.Character:FindFirstChildOfClass("Highlight") and v.Character:FindFirstChildOfClass("Highlight").Enabled == false then
v.Character:FindFirstChildOfClass("Highlight").Enabled = true 
end 
end 
end) 
end 
end) 

section7:NewToggle("Player Nametags", "", function(irorq)
irarq = irorq 
while irarq and task.wait() do 
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do 
if v.Character and v.Character:FindFirstChildOfClass("BillboardGui") and v.Character:FindFirstChildOfClass("BillboardGui").Enabled == false then
v.Character:FindFirstChildOfClass("BillboardGui").Enabled = true 
end 
end 
end) 
end 
end) 

section7:NewToggle("SCP Highlights", "", function(iroqrr)
iraqrr = iroqrr
while iraqrr and task.wait() do 
pcall(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
if v:IsA("Model") and v:FindFirstChildOfClass("Highlight") and v:FindFirstChildOfClass("Highlight").Enabled == false then 
v:FindFirstChildOfClass("Highlight").Enabled = true 
elseif v:IsA("Folder") and v:FindFirstChild("096"):FindFirstChildOfClass("Highlight") and v:FindFirstChild("096"):FindFirstChildOfClass("Highlight").Enabled == false then  
v:FindFirstChild("096"):FindFirstChildOfClass("Highlight").Enabled = true
end 
end
end) 
end 
end) 

section7:NewToggle("SCP Nametags", "", function(qirorq)
qirarq = qirorq 
while qirarq and task.wait() do 
pcall(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
if v:IsA("Model") and v:FindFirstChildOfClass("BillboardGui") and v.Name ~= "SCP-966" and v.Name ~= "SCP-131" and v:FindFirstChildOfClass("BillboardGui").Enabled == false then 
v:FindFirstChildOfClass("BillboardGui").Enabled = true 
elseif v:IsA("Folder") and v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui") and v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui").Enabled == false then  
v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui").Enabled = true 
elseif (v.Name == "SCP-966" or v.Name == "SCP-131") and v:IsA("Model") then 
for o,k in pairs(v:GetChildren()) do 
if k:IsA("Model") and k:FindFirstChildOfClass("BillboardGui") and k:FindFirstChildOfClass("BillboardGui").Enabled == false then 
k:FindFirstChildOfClass("BillboardGui").Enabled = true
end 
end
end 
end
end) 
end 
end) 

section7:NewButton("Disable Player Highlights", "", function()
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do 
if v.Character and v.Character:FindFirstChildOfClass("Highlight") and v.Character:FindFirstChildOfClass("Highlight").Enabled then
v.Character:FindFirstChildOfClass("Highlight").Enabled = false
end 
end 
end)
end)

section7:NewButton("Disable Player Nametags", "", function()
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do 
if v.Character and v.Character:FindFirstChildOfClass("BillboardGui") and v.Character:FindFirstChildOfClass("BillboardGui").Enabled then
v.Character:FindFirstChildOfClass("BillboardGui").Enabled = false
end 
end 
end)
end)

section7:NewButton("Disable SCP Highlights", "", function()
pcall(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
if v:IsA("Model") and v:FindFirstChildOfClass("Highlight") and v:FindFirstChildOfClass("Highlight").Enabled then 
v:FindFirstChildOfClass("Highlight").Enabled = false
elseif v:IsA("Folder") and v:FindFirstChild("096"):FindFirstChildOfClass("Highlight") and v:FindFirstChild("096"):FindFirstChildOfClass("Highlight").Enabled then  
v:FindFirstChild("096"):FindFirstChildOfClass("Highlight").Enabled = false
end 
end
end)
end)

section7:NewButton("Disable SCP Nametags", "", function()
pcall(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
if v:IsA("Model") and v:FindFirstChildOfClass("BillboardGui") and v.Name ~= "SCP-966" and v.Name ~= "SCP-131" and v:FindFirstChildOfClass("BillboardGui").Enabled then 
v:FindFirstChildOfClass("BillboardGui").Enabled = false
elseif v:IsA("Folder") and v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui") and v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui").Enabled then  
v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui").Enabled = false
elseif (v.Name == "SCP-966" or v.Name == "SCP-131") and v:IsA("Model") then 
for o,k in pairs(v:GetChildren()) do 
if k:IsA("Model") and k:FindFirstChildOfClass("BillboardGui") and k:FindFirstChildOfClass("BillboardGui").Enabled then 
k:FindFirstChildOfClass("BillboardGui").Enabled = false
end 
end
end 
end
end)
end)

local xxxvid = section6:NewDropdown("Select Player", "", players, function(xeg)
xrop = xeg 
end) 

section6:NewButton("Refresh Players", "", function()
pcall(function()
table.clear(players)
for i,v in pairs(game.Players:GetPlayers()) do 
if v ~= plr and (not table.find(players, v.Name)) then 
table.insert(players, v.Name)
end 
end
xxxvid:Refresh(players)
end)
end)

game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
    if v:IsA("Model") and (not v:FindFirstChildOfClass("Highlight")) then 
    PartGlow(v)
    elseif v:IsA("Folder") and (not v:FindFirstChild("096"):FindFirstChildOfClass("Highlight")) then  
    PartGlow(v:FindFirstChild("096"))
    end 
end
end)

game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(game.Workspace.SCPs:GetChildren()) do 
    if v:IsA("Model") and (not v:FindFirstChildOfClass("BillboardGui")) and v.Name ~= "SCP-966" and v.Name ~= "SCP-131" then 
    partnametag(v)
    elseif v:IsA("Folder") and (not v:FindFirstChild("096"):FindFirstChildOfClass("BillboardGui")) then  
    partnametag(v:FindFirstChild("096"))
    elseif (v.Name == "SCP-966" or v.Name == "SCP-131") and v:IsA("Model") then 
        for o,k in pairs(v:GetChildren()) do 
            if k:IsA("Model") and (not k:FindFirstChildOfClass("BillboardGui")) then 
                partnametag(k)
            end 
        end 
    end 
end
end)

local function charadded(player)
player.CharacterAdded:Connect(function()
Glow(player, player.TeamColor.Color)       
nametag(player)
end) 
end

for i,v in pairs(game.Players:GetPlayers()) do 
if v ~= game.Players.LocalPlayer then 
charadded(v)                                            
end 
end

for i,v in pairs(game.Players:GetPlayers()) do 
if v ~= game.Players.LocalPlayer and v.Character then 
Glow(v, v.TeamColor.Color)    
nametag(v)
end 
end

game.Players.PlayerAdded:Connect(function(p)
if p ~= game.Players.LocalPlayer then 
charadded(p)                                              
end 
end)

while task.wait() do 
for i,v in pairs(game.Players:GetPlayers()) do 
if v ~= plr and v.Character then 
for o,k in pairs(v.Character:GetChildren()) do 
if k:IsA("BasePart") and k.Name ~= "HumanoidRootPart" and k.Transparency > 0 then 
k.Transparency = 0 
end 
end 
end 
end 
end 

pcall(function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end
end)