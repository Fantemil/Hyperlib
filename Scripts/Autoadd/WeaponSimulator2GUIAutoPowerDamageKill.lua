if game:GetService("CoreGui"):FindFirstChild("Dankity") then
game:GetService("CoreGui").Dankity:Destroy()
end


--//-- VARIABLES --\\--

Dankity = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
Main = Instance.new("Frame", Dankity)
Header = Instance.new("Frame", Main)
Text = Instance.new("TextLabel", Header)
Username = Instance.new("TextBox", Main)
Kill = Instance.new("TextButton", Main)
Power = Instance.new("TextButton", Main)
LocalPlayer = game:GetService("Players").LocalPlayer
Backpack = LocalPlayer.Backpack
Character = LocalPlayer.Character
Humanoid = Character.Humanoid

--//-- PROPERTIES --\\--

Dankity.Name = "Dankity"
Dankity.ResetOnSpawn = false

Main.Name = "Main"
Main.BackgroundColor3 = Color3.new(0,255,256)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Selectable = true
Main.Position = UDim2.new(0.321995467, 0, 0.22910662, 0)
Main.Size = UDim2.new(0, 471, 0, 375)

Header.Name = "Header"
Header.BackgroundColor3 = Color3.new(0.560784,0,0)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0, 0, 0.0613333359, 0)
Header.Size = UDim2.new(0, 471, 0, 64)

Text.Name = "Text"
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0.165605083,0,0)
Text.Size = UDim2.new(0, 315, 0, 50)
Text.Font = Enum.Font.SourceSansBold
Text.Text = "Weapon Simulator 2 Autokill/Farm Gui"
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextSize = 30

Username.Name = "Username"Username.BackgroundColor3 = Color3.new(0,255.256)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.17622079, 0, 0.346666723, 0)
Username.Size = UDim2.new(0, 305, 0, 50)
Username.Font = Enum.Font.SourceSansSemibold
Username.Text = "Username"
Username.TextColor3 = Color3.new(1, 1, 1)
Username.TextSize = 20

Kill.Name = "Damage/Kill"
Kill.BackgroundColor3 = Color3.new(0,0,0)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0.282377899, 0, 0.519999981, 0)
Kill.Size = UDim2.new(0, 200, 0, 50)
Kill.Font = Enum.Font.SourceSansSemibold
Kill.Text = "Damage/Kill"
Kill.TextColor3 = Color3.new(1, 1, 1)
Kill.TextSize = 20
Kill.TextWrapped = true

Power.Name = "Power"
Power.BackgroundColor3 = Color3.new(0.0,0)
Power.BorderSizePixel = 0
Power.Position = UDim2.new(0.282377899, 0, 0.685333312, 0)
Power.Size = UDim2.new(0, 200, 0, 50)
Power.Font = Enum.Font.SourceSansSemibold
Power.Text = "Power, Click 1 time for more!"
Power.TextColor3 = Color3.new(1, 1, 1)
Power.TextSize = 20
Power.TextWrapped = true

--//-- FUNCTIONS --\\--

function GetPlayers(Name)
if Name:lower() == "me" then
return {Player}
elseif Name:lower() == "all" then
return game:GetService("Players"):GetPlayers()
elseif Name:lower() == "others" then
local t = {}
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= Player.Name then
t[#t+1] = v
end
end
return t
else
local t = {}
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name:sub(1, #Name):lower() == Name:lower() then
t[#t+1] = v
end
end
return t
end
end

--//-- SCRIPTING --\\--

Kill.MouseButton1Click:Connect(function()
for _,v in pairs(Backpack:GetChildren()) do
Humanoid:EquipTool(v)
end

local Plrs = GetPlayers(Username.Text)
for i,v in pairs(Plrs) do
for i = 1 , 10 do

if Character:FindFirstChild("sword") then

Character.sword.Handle.dmg.RemoteEvent:FireServer(game:GetService("Workspace")[v.Name].Humanoid, 99999999999999999999999999999999999999999)
end
end
end
end)

Power.MouseButton1Click:Connect(function()
local Event = game:service'Players'.LocalPlayer.Character.sword.Handle.pr.RemoteEvent
game:service'RunService'.RenderStepped:Connect(function()
for i = 1, 10 do
Event:FireServer()
end
end)
if Character:FindFirstChild("sword") then

while wait() do
Character.sword.Handle.pr.RemoteEvent:FireServer()
if not Character:FindFirstChild("sword") then
for _,v in pairs(Backpack:GetChildren()) do
Humanoid:EquipTool(v)
end
end
end
end
end)