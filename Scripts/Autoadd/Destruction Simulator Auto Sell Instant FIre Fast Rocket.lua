if KANKER_LOADED then
local backup = debug.getupvalues
make_writeable(debug)
 
getgenv().debug.getupvalues = function(f)
if typeof(f) == "function" then
local s, e = pcall(backup, f)
return (typeof(e) == 'table' and e or {})
else
return backup(f + 1)
end
end
 
make_readonly(debug)
end
 
if game.CoreGui:FindFirstChild("DestructionSimGui") then
game.CoreGui:FindFirstChild("DestructionSimGui"):Destroy()
end
-- Instances:
local DestructionSimGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TItle = Instance.new("TextLabel")
local insaneBlastRBtn = Instance.new("TextButton")
local autoSellBtn = Instance.new("TextButton")
local minMaxBtn = Instance.new("TextButton")
local fastRocketBtn = Instance.new("TextButton")
local rapidFireBtn = Instance.new("TextButton")
local insaneBlastFBtn = Instance.new("TextButton")
--Properties:
DestructionSimGui.Name = "DestructionSimGui"
DestructionSimGui.Parent = game.CoreGui
 
Main.Name = "Main"
Main.Parent = DestructionSimGui
Main.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.5, -250, 0.5, -150)
Main.Size = UDim2.new(0, 500, 0, 300)
Main.Active = true
Main.Draggable = true
 
TItle.Name = "TItle"
TItle.Parent = Main
TItle.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
TItle.BorderSizePixel = 0
TItle.Size = UDim2.new(0, 500, 0, 30)
TItle.Font = Enum.Font.Fantasy
TItle.Text = "Destruction Simulator GUI - Made by Polar Bear#9569"
TItle.TextColor3 = Color3.new(1, 1, 1)
TItle.TextSize = 14
 
insaneBlastRBtn.Name = "insaneBlastRBtn"
insaneBlastRBtn.Parent = Main
insaneBlastRBtn.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
insaneBlastRBtn.BorderColor3 = Color3.new(1, 0.435294, 0.443137)
insaneBlastRBtn.Position = UDim2.new(0, 10, 0.342999995, 50)
insaneBlastRBtn.Size = UDim2.new(0, 150, 0, 30)
insaneBlastRBtn.Font = Enum.Font.Code
insaneBlastRBtn.Text = "Insane Blast Radius"
insaneBlastRBtn.TextColor3 = Color3.new(1, 1, 1)
insaneBlastRBtn.TextScaled = true
insaneBlastRBtn.TextSize = 12
insaneBlastRBtn.TextWrapped = true
 
autoSellBtn.Name = "autoSellBtn"
autoSellBtn.Parent = Main
autoSellBtn.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
autoSellBtn.BorderColor3 = Color3.new(1, 0.435294, 0.443137)
autoSellBtn.Position = UDim2.new(0.00200000009, 175, 0.164000005, 50)
autoSellBtn.Size = UDim2.new(0, 150, 0, 30)
autoSellBtn.Font = Enum.Font.Code
autoSellBtn.Text = "Autosell"
autoSellBtn.TextColor3 = Color3.new(1, 1, 1)
autoSellBtn.TextSize = 14
 
minMaxBtn.Name = "minMaxBtn"
minMaxBtn.Parent = Main
minMaxBtn.BackgroundColor3 = Color3.new(1, 1, 1)
minMaxBtn.BackgroundTransparency = 1
minMaxBtn.Position = UDim2.new(0.939999998, 0, 0, 0)
minMaxBtn.Size = UDim2.new(0, 30, 0, 30)
minMaxBtn.Font = Enum.Font.Code
minMaxBtn.Text = "-"
minMaxBtn.TextColor3 = Color3.new(1, 1, 1)
minMaxBtn.TextScaled = true
minMaxBtn.TextSize = 18
minMaxBtn.TextWrapped = true
 
fastRocketBtn.Name = "fastRocketBtn"
fastRocketBtn.Parent = Main
fastRocketBtn.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
fastRocketBtn.BorderColor3 = Color3.new(1, 0.435294, 0.443137)
fastRocketBtn.Position = UDim2.new(0, 343, 0.164000005, 50)
fastRocketBtn.Size = UDim2.new(0, 150, 0, 30)
fastRocketBtn.Font = Enum.Font.Code
fastRocketBtn.Text = "Fast Rocket"
fastRocketBtn.TextColor3 = Color3.new(1, 1, 1)
fastRocketBtn.TextSize = 14
 
rapidFireBtn.Name = "rapidFireBtn"
rapidFireBtn.Parent = Main
rapidFireBtn.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
rapidFireBtn.BorderColor3 = Color3.new(1, 0.435294, 0.443137)
rapidFireBtn.Position = UDim2.new(0, 10, 0.163000003, 50)
rapidFireBtn.Size = UDim2.new(0, 150, 0, 30)
rapidFireBtn.Font = Enum.Font.Code
rapidFireBtn.Text = "Rapid Fire (No cooldown)"
rapidFireBtn.TextColor3 = Color3.new(1, 1, 1)
rapidFireBtn.TextScaled = true
rapidFireBtn.TextSize = 12
rapidFireBtn.TextWrapped = true
 
insaneBlastFBtn.Name = "insaneBlastFBtn"
insaneBlastFBtn.Parent = Main
insaneBlastFBtn.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
insaneBlastFBtn.BorderColor3 = Color3.new(1, 0.435294, 0.443137)
insaneBlastFBtn.Position = UDim2.new(0.331999987, 10, 0.342999995, 50)
insaneBlastFBtn.Size = UDim2.new(0, 150, 0, 30)
insaneBlastFBtn.Font = Enum.Font.Code
insaneBlastFBtn.Text = "Insane Blast Force"
insaneBlastFBtn.TextColor3 = Color3.new(1, 1, 1)
insaneBlastFBtn.TextScaled = true
insaneBlastFBtn.TextSize = 12
insaneBlastFBtn.TextWrapped = true
-- Scripts:
local blastRadius = false
 
spawn(function()
while wait() do
if blastRadius then
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.BlastRadius then
obj.BlastRadius = 999999
end
end
end
else
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.BlastRadius then
obj.BlastRadius = 500
end
end
end
end
end
end)
 
insaneBlastRBtn.MouseButton1Down:Connect(function()
blastRadius = not blastRadius
insaneBlastRBtn.BorderColor3 = blastRadius and Color3.fromRGB(201, 255, 171) or Color3.fromRGB(255, 111, 113)
end)
local autoSell = false
 
local remote = game:GetService("ReplicatedStorage").Remotes.sellBricks
local FireServer = Instance.new("RemoteEvent").FireServer
 
spawn(function()
while wait() do
if autoSell then
FireServer(remote)
end
end
end)
 
autoSellBtn.MouseButton1Down:Connect(function()
autoSell = not autoSell
autoSellBtn.BorderColor3 = autoSell and Color3.fromRGB(201, 255, 171) or Color3.fromRGB(255, 111, 113)
end)
minMaxBtn.MouseButton1Down:Connect(function()
if Main.Size == UDim2.new(0,500,0,300) then
Main:TweenSize(UDim2.new(0,500,0,30),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,0.3)
minMaxBtn.Text = "+"
elseif Main.Size == UDim2.new(0,500,0,30) then
Main:TweenSize(UDim2.new(0,500,0,300),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,0.3)
minMaxBtn.Text = "-"
end
end)
local fastRocket = false
 
spawn(function()
while wait() do
if fastRocket then
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.RocketSpeed then
obj.RocketSpeed = 99999999
end
end
end
else
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.RocketSpeed then
obj.RocketSpeed = 2
end
end
end
end
end
end)
 
fastRocketBtn.MouseButton1Down:Connect(function()
fastRocket = not fastRocket
fastRocketBtn.BorderColor3 = fastRocket and Color3.fromRGB(201, 255, 171) or Color3.fromRGB(255, 111, 113)
end)
local rapidFire = false
 
spawn(function()
while wait() do
if rapidFire then
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.Cooldown then
obj.Cooldown = 0
obj.BurstWait = 0
obj.Bursts = 1
end
end
end
else
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.Cooldown then
obj.Cooldown = 5
end
end
end
end
end
end)
 
rapidFireBtn.MouseButton1Down:Connect(function()
rapidFire = not rapidFire
rapidFireBtn.BorderColor3 = rapidFire and Color3.fromRGB(201, 255, 171) or Color3.fromRGB(255, 111, 113)
end)
local blastForce = false
 
spawn(function()
while wait() do
if blastForce then
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.BlastForce then
obj.BlastForce = 999999
end
end
end
else
for _,obj in pairs(debug.getregistry()) do
if type(obj) == "table" then
if obj.BlastForce then
obj.BlastForce = 500
end
end
end
end
end
end)
 
insaneBlastFBtn.MouseButton1Down:Connect(function()
blastForce = not blastForce
insaneBlastFBtn.BorderColor3 = blastForce and Color3.fromRGB(201, 255, 171) or Color3.fromRGB(255, 111, 113)
end)