local CoreGui = game:GetService("StarterGui")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local DeleteButton = Instance.new("TextButton")
local UICorner_Frame = Instance.new("UICorner")
local UICorner_TextBox = Instance.new("UICorner")
local UICorner_TextButton = Instance.new("UICorner")
local UICorner_DeleteButton = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BackgroundTransparency = 0.40
Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Active = true
Frame.Draggable = true

UICorner_Frame.Parent = Frame
UICorner_Frame.CornerRadius = UDim.new(0, 16)


TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextBox.Position = UDim2.new(0.07, 0, 0.10, 0)
TextBox.Size = UDim2.new(0, 175, 0, 50)
TextBox.Font = Enum.Font.Cartoon
TextBox.Text = "Enter a Username"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 16.000
TextBox.TextWrapped = true

UICorner_TextBox.Parent = TextBox
UICorner_TextBox.CornerRadius = UDim.new(0, 32)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextButton.Position = UDim2.new(0.07, 0, 0.50, 0)
TextButton.Size = UDim2.new(0, 175, 0, 35)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Teleport To Player"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 16.00
TextButton.TextWrapped = true

UICorner_TextButton.Parent = TextButton
UICorner_TextButton.CornerRadius = UDim.new(0, 32)

DeleteButton.Parent = Frame
DeleteButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
DeleteButton.Position = UDim2.new(-0.19, 0, 0, 0)
DeleteButton.Size = UDim2.new(0, 40, 0, 40)
DeleteButton.TextColor3 = Color3.fromRGB(255, 0, 0)
DeleteButton.Font = Enum.Font.Cartoon
DeleteButton.Text = "x"
DeleteButton.TextSize = 50.000
DeleteButton.TextScaled = true
DeleteButton.TextWrapped = true

UICorner_DeleteButton.Parent = DeleteButton
UICorner_DeleteButton.CornerRadius = UDim.new(0,8)

DeleteButton.MouseButton1Click:connect(function()
    ScreenGui:Destroy()
end)

TextButton.MouseButton1Click:connect(function()
local lplayer = game:GetService('Players').LocalPlayer

local yeeting = false
function GetPlayer(String)
local Found = {}
local strl = String:lower()
if strl == "all" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
table.insert(Found,v)
end
elseif strl == "Random" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= lplayer.Name then
table.insert(Found,v)
end
end 
elseif strl == "me" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == lplayer.Name then
table.insert(Found,v)
end
end 
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name:lower():sub(1, #String) == String:lower() then
table.insert(Found,v)
end
end 
end
return Found 
end
function ahh(thing)
local asd = {'yeet','gui','yeet gui'}
local f = string.upper(asd[math.random(1,#asd)])
return f
end

local target = unpack(GetPlayer(TextBox.Text)).Character
 
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Head.CFrame;coin.Location = target.head.Position game["Run Service"].Heartbeat:wait()
end)