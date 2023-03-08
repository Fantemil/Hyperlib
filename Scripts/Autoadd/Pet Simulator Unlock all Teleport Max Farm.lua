-- Pet Simutor Gui By Reese .
-- Life - Sucks Do Whatever You Want - Remove the Credits WhoCares .
 
local PSG = Instance.new("ScreenGui")
local bar1 = Instance.new("Frame")
local SF = Instance.new("TextButton")
local UEA = Instance.new("TextButton")
local UA = Instance.new("TextButton")
local N = Instance.new("TextLabel")
local AT = Instance.new("TextButton")
local No = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local MF = Instance.new("TextButton")
local AF = Instance.new("TextButton")
local bar2 = Instance.new("Frame")
local Stor = Instance.new("TextButton")
local P2 = Instance.new("TextButton")
local P1 = Instance.new("TextButton")
local P3 = Instance.new("TextButton")
local P4 = Instance.new("TextButton")
local M1 = Instance.new("TextButton")
local P5 = Instance.new("TextButton")
local M2 = Instance.new("TextButton")
local Spawn = Instance.new("TextButton")
local X = Instance.new("TextButton")
 
-- Properties
 
PSG.Name = "PSG"
PSG.Parent = game.CoreGui
 
bar1.Name = "bar1"
bar1.Parent = PSG
bar1.BackgroundColor3 = Color3.new(0.172549, 0, 0.0627451)
bar1.BorderSizePixel = 2
bar1.Position = UDim2.new(0.241496593, 0, 0.177033499, 0)
bar1.Size = UDim2.new(0, 263, 0, 293)
bar1.Style = Enum.FrameStyle.RobloxRound
bar1.Active = true
bar1.Draggable = true
 
SF.Name = "SF"
SF.Parent = bar1
SF.BackgroundColor3 = Color3.new(1, 0.0392157, 0.215686)
SF.Position = UDim2.new(0.0304182488, 0, 0.170648456, 0)
SF.Size = UDim2.new(0, 118, 0, 42)
SF.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
SF.Font = Enum.Font.SciFi
SF.Text = "Small FARM"
SF.TextColor3 = Color3.new(0, 0, 0)
SF.TextSize = 14
SF.MouseButton1Down:connect(function()
local amount = 100 -- experiment with this value, 1000 is maximum and for pets with high levels
local coins = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Coins")
local save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Get Other Stats"):InvokeServer()
local plr = game:GetService("Players").LocalPlayer
local petids = {}
local pets = game:GetService("Workspace")["__REMOTES"].Pets
local a = #save[plr.Name]["Save"]["Pets"]
local done = "lol meme"
function random(t)
   local keys = {}
   for key, value in pairs(t) do
       keys[#keys+1] = key
   end
   index = keys[math.random(1, #keys)]
   return t[index]
end
for i=1,a do
   if(save[plr.Name]["Save"]["Pets"][a].e == true) then
       table.insert(petids, save[plr.Name]["Save"]["Pets"][a].id)
   end
   a = a - 1
end
function co(b)
   local done = b
   print("Mining coin: " .. b.Name)
   while(b:FindFirstChild"Health" ~= nil and b:FindFirstChild"Health".Value > 0) do
       warn(b.Name .. "- Health: " .. b.Health.Value)
       wait(0.2)
       coins:FireServer("Mine",b.Name, amount, random(petids))
   end
end
for _,b in next, workspace.__THINGS.Coins:GetChildren() do
   if(done ~= b) then
       coroutine.wrap(function()co(b)end)()
   end
end
end)
 
UEA.Name = "UEA"
UEA.Parent = bar1
UEA.BackgroundColor3 = Color3.new(1, 0.0392157, 0.215686)
UEA.Position = UDim2.new(0.171102658, 0, 0.532083154, 0)
UEA.Size = UDim2.new(0, 162, 0, 42)
UEA.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
UEA.Font = Enum.Font.SciFi
UEA.Text = "Un-Equip Pets [ Others ]"
UEA.TextColor3 = Color3.new(0, 0, 0)
UEA.TextSize = 14
UEA.MouseButton1Down:connect(function()
local Event = game:GetService("Workspace")["__REMOTES"].Pets
local save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Get Other Stats"):InvokeServer()
for _,x in next, game:GetService"Players":GetPlayers() do
   if(x.Name ~= game:GetService"Players".LocalPlayer.Name) then
       local a = #save[x.Name]["Save"]["Pets"]
       for i=1,a do
               Event:FireServer("Remove", x, save[x.Name]["Save"]["Pets"][a].id)
           a = a - 1
       end
   end
end
end)
 
UA.Name = "UA"
UA.Parent = bar1
UA.BackgroundColor3 = Color3.new(1, 0.0392157, 0.215686)
UA.Position = UDim2.new(0.524714828, 0, 0.170648456, 0)
UA.Size = UDim2.new(0, 111, 0, 42)
UA.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
UA.Font = Enum.Font.SciFi
UA.Text = "Unlock All"
UA.TextColor3 = Color3.new(0, 0, 0)
UA.TextSize = 14
UA.MouseButton1Down:connect(function()
local barriers_table = { "Barrier1", "Barrier2", "Barrier3", "Barrier4", "Barrier5" }
local barriers = game:GetService("Workspace").__THINGS["Barriers"]
barriers:Destroy()
end)
 
N.Name = "N"
N.Parent = bar1
N.BackgroundColor3 = Color3.new(1, 1, 1)
N.BackgroundTransparency = 1
N.Position = UDim2.new(0.0266159698, 0, -0.00641025603, 0)
N.Size = UDim2.new(0, 234, 0, 23)
N.Font = Enum.Font.SciFi
N.Text = "Pet Simulator Gui - By FunTrator"
N.TextColor3 = Color3.new(0.992157, 0.00784314, 0.141176)
N.TextSize = 17
 
AT.Name = "AT"
AT.Parent = bar1
AT.BackgroundColor3 = Color3.new(1, 0.0392157, 0.215686)
AT.Position = UDim2.new(0.174904943, 0, 0.710820854, 0)
AT.Size = UDim2.new(0, 162, 0, 42)
AT.Style = Enum.ButtonStyle.RobloxButtonDefault
AT.Font = Enum.Font.SciFi
AT.Text = "Teleports"
AT.TextColor3 = Color3.new(0.980392, 0.0235294, 0.121569)
AT.TextSize = 26
AT.MouseButton1Down:connect(function()
bar2.Visible = true
end)
 
No.Name = "No"
No.Parent = bar1
No.BackgroundColor3 = Color3.new(1, 0.00392157, 0.0196078)
No.Position = UDim2.new(0.0342205316, 0, 0.100694448, 0)
No.Size = UDim2.new(0, 233, 0, 1)
No.Font = Enum.Font.SourceSans
No.Text = ""
No.TextColor3 = Color3.new(0, 0, 0)
No.TextSize = 14
 
TextLabel.Parent = bar1
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0304182507, 0, 0.8937729, 0)
TextLabel.Size = UDim2.new(0, 233, 0, 23)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Under Maintainance - Adding New Scripts"
TextLabel.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
TextLabel.TextSize = 13
 
MF.Name = "MF"
MF.Parent = bar1
MF.BackgroundColor3 = Color3.new(1, 0.0392157, 0.215686)
MF.Position = UDim2.new(0.026615968, 0, 0.351535827, 0)
MF.Size = UDim2.new(0, 118, 0, 42)
MF.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
MF.Font = Enum.Font.SciFi
MF.Text = "Med. FARM"
MF.TextColor3 = Color3.new(0, 0, 0)
MF.TextSize = 14
MF.MouseButton1Down:connect(function()
local amount = 500 -- experiment with this value, 1000 is maximum and for pets with high levels
local coins = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Coins")
local save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Get Other Stats"):InvokeServer()
local plr = game:GetService("Players").LocalPlayer
local petids = {}
local pets = game:GetService("Workspace")["__REMOTES"].Pets
local a = #save[plr.Name]["Save"]["Pets"]
local done = "lol meme"
function random(t)
   local keys = {}
   for key, value in pairs(t) do
       keys[#keys+1] = key
   end
   index = keys[math.random(1, #keys)]
   return t[index]
end
for i=1,a do
   if(save[plr.Name]["Save"]["Pets"][a].e == true) then
       table.insert(petids, save[plr.Name]["Save"]["Pets"][a].id)
   end
   a = a - 1
end
function co(b)
   local done = b
   print("Mining coin: " .. b.Name)
   while(b:FindFirstChild"Health" ~= nil and b:FindFirstChild"Health".Value > 0) do
       warn(b.Name .. "- Health: " .. b.Health.Value)
       wait(0.2)
       coins:FireServer("Mine",b.Name, amount, random(petids))
   end
end
for _,b in next, workspace.__THINGS.Coins:GetChildren() do
   if(done ~= b) then
       coroutine.wrap(function()co(b)end)()
   end
end
end)
 
AF.Name = "AF"
AF.Parent = bar1
AF.BackgroundColor3 = Color3.new(1, 0.0392157, 0.215686)
AF.Position = UDim2.new(0.524714828, 0, 0.351535857, 0)
AF.Size = UDim2.new(0, 110, 0, 42)
AF.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
AF.Font = Enum.Font.SciFi
AF.Text = "MAX FARM"
AF.TextColor3 = Color3.new(0, 0, 0)
AF.TextSize = 14
AF.MouseButton1Down:connect(function()
local amount = 1000 -- experiment with this value, 1000 is maximum and for pets with high levels
local coins = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Coins")
local save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Get Other Stats"):InvokeServer()
local plr = game:GetService("Players").LocalPlayer
local petids = {}
local pets = game:GetService("Workspace")["__REMOTES"].Pets
local a = #save[plr.Name]["Save"]["Pets"]
local done = "lol meme"
function random(t)
   local keys = {}
   for key, value in pairs(t) do
       keys[#keys+1] = key
   end
   index = keys[math.random(1, #keys)]
   return t[index]
end
for i=1,a do
   if(save[plr.Name]["Save"]["Pets"][a].e == true) then
       table.insert(petids, save[plr.Name]["Save"]["Pets"][a].id)
   end
   a = a - 1
end
function co(b)
   local done = b
   print("Mining coin: " .. b.Name)
   while(b:FindFirstChild"Health" ~= nil and b:FindFirstChild"Health".Value > 0) do
       warn(b.Name .. "- Health: " .. b.Health.Value)
       wait(0.2)
       coins:FireServer("Mine",b.Name, amount, random(petids))
   end
end
for _,b in next, workspace.__THINGS.Coins:GetChildren() do
   if(done ~= b) then
       coroutine.wrap(function()co(b)end)()
   end
end
end)
 
bar2.Name = "bar2"
bar2.Parent = PSG
bar2.BackgroundColor3 = Color3.new(1, 1, 1)
bar2.Position = UDim2.new(0.564625859, 0, 0.178628385, 0)
bar2.Size = UDim2.new(0, 214, 0, 254)
bar2.Style = Enum.FrameStyle.RobloxRound
bar2.Active = true
bar2.Draggable = true
bar2.Visible = false
 
Stor.Name = "Stor"
Stor.Parent = bar2
Stor.BackgroundColor3 = Color3.new(1, 1, 1)
Stor.Position = UDim2.new(0.532710254, 0, 0.0186170191, 0)
Stor.Size = UDim2.new(0, 92, 0, 39)
Stor.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Stor.Font = Enum.Font.SourceSans
Stor.Text = "Store"
Stor.TextColor3 = Color3.new(0, 0, 0)
Stor.TextSize = 14
Stor.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(719.225952, -33.6261177, 894.049072))
end)
 
P2.Name = "P2"
P2.Parent = bar2
P2.BackgroundColor3 = Color3.new(1, 1, 1)
P2.Position = UDim2.new(0.532710254, 0, 0.222935483, 0)
P2.Size = UDim2.new(0, 92, 0, 39)
P2.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
P2.Font = Enum.Font.SourceSans
P2.Text = "Place 2"
P2.TextColor3 = Color3.new(0, 0, 0)
P2.TextSize = 14
P2.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-374.2388, -37.0378761, 885.253296))
end)
 
P1.Name = "P1"
P1.Parent = bar2
P1.BackgroundColor3 = Color3.new(1, 1, 1)
P1.Position = UDim2.new(0.0140186772, 0, 0.222935483, 0)
P1.Size = UDim2.new(0, 92, 0, 39)
P1.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
P1.Font = Enum.Font.SourceSans
P1.Text = "Place 1"
P1.TextColor3 = Color3.new(0, 0, 0)
P1.TextSize = 14
P1.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0.295806587, -37.0378761, 890.214355))
end)
 
P3.Name = "P3"
P3.Parent = bar2
P3.BackgroundColor3 = Color3.new(1, 1, 1)
P3.Position = UDim2.new(0.0140186772, 0, 0.414129317, 0)
P3.Size = UDim2.new(0, 92, 0, 39)
P3.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
P3.Font = Enum.Font.SourceSans
P3.Text = "Place 3"
P3.TextColor3 = Color3.new(0, 0, 0)
P3.TextSize = 14
P3.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-760.199097, -37.0378761, 880.302246)) 
end)
 
P4.Name = "P4"
P4.Parent = bar2
P4.BackgroundColor3 = Color3.new(1, 1, 1)
P4.Position = UDim2.new(0.528037369, 0, 0.414129317, 0)
P4.Size = UDim2.new(0, 92, 0, 39)
P4.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
P4.Font = Enum.Font.SourceSans
P4.Text = "Place 4"
P4.TextColor3 = Color3.new(0, 0, 0)
P4.TextSize = 14
P4.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1140.22437, -37.0378761, 885.195129)) 
end)
 
M1.Name = "M1"
M1.Parent = bar2
M1.BackgroundColor3 = Color3.new(1, 1, 1)
M1.Position = UDim2.new(0.528037369, 0, 0.613056302, 0)
M1.Size = UDim2.new(0, 92, 0, 39)
M1.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
M1.Font = Enum.Font.SourceSans
M1.Text = "Moon 1"
M1.TextColor3 = Color3.new(0, 0, 0)
M1.TextSize = 14
M1.MouseButton1Down:connect(function()
local mapname = "Moon"
local Event = game:GetService("Workspace")["__REMOTES"]["Load Map"]
Event:FireServer(mapname)
end)
 
P5.Name = "P5"
P5.Parent = bar2
P5.BackgroundColor3 = Color3.new(1, 1, 1)
P5.Position = UDim2.new(0.0093457913, 0, 0.612383306, 0)
P5.Size = UDim2.new(0, 92, 0, 39)
P5.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
P5.Font = Enum.Font.SourceSans
P5.Text = "Place 5"
P5.TextColor3 = Color3.new(0, 0, 0)
P5.TextSize = 14
P5.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1534.46313, -33.038002, 887.088318)) 
end)
 
M2.Name = "M2"
M2.Parent = bar2
M2.BackgroundColor3 = Color3.new(1, 1, 1)
M2.Position = UDim2.new(0.266355127, 0, 0.825562894, 0)
M2.Size = UDim2.new(0, 92, 0, 39)
M2.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
M2.Font = Enum.Font.SourceSans
M2.Text = "Moon 2"
M2.TextColor3 = Color3.new(0, 0, 0)
M2.TextSize = 14
M2.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(80.3468018, 144.27951, -1706.91724))
end)
 
Spawn.Name = "Spawn"
Spawn.Parent = bar2
Spawn.BackgroundColor3 = Color3.new(1, 1, 1)
Spawn.Position = UDim2.new(0.00934579503, 0, 0.0186170191, 0)
Spawn.Size = UDim2.new(0, 92, 0, 39)
Spawn.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Spawn.Font = Enum.Font.SourceSans
Spawn.Text = "Spawn"
Spawn.TextColor3 = Color3.new(0, 0, 0)
Spawn.TextSize = 14
Spawn.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(536.137939, -36.409977, 886.542542))
end)
 
X.Name = "X"
X.Parent = bar2
X.BackgroundColor3 = Color3.new(1, 0.0313726, 0.160784)
X.Position = UDim2.new(0.901869118, 0, 0.929133832, 0)
X.Size = UDim2.new(0, 25, 0, 17)
X.Font = Enum.Font.SciFi
X.Text = "X"
X.TextColor3 = Color3.new(0, 0, 0)
X.TextSize = 14
X.MouseButton1Down:connect(function()
bar2.Visible = false 
end)