repeat wait() until game.Players.LocalPlayer.Character

--

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

local CKToggle = false
local KVToggle = false
local KAToggle = false

--

local function CreateInstance(Object,Properties)
local NewInstance = Instance.new(Object)
for i,v in pairs(Properties) do
	NewInstance[i] = v
end
	return NewInstance
end

local MainGui = CreateInstance("ScreenGui", {Name = "MainGui", ResetOnSpawn = true, Enabled = true, Parent = game:GetService("Players").LocalPlayer.PlayerGui})
local MainFrame = CreateInstance("Frame", {Name = "MainFrame", Size = UDim2.new(0, 250, 0, 250), Position = UDim2.new(0.5, -125, 0.5, -125), BackgroundColor3 = Color3.fromRGB(50, 52, 49), BackgroundTransparency = 0, BorderSizePixel = 0, Parent = MainGui, Active = true, Draggable = true})
local Notice = CreateInstance("TextLabel", {Name = "Notice", Text = "Made by Gaikokan#2563", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(15, 15, 15), BackgroundTransparency = 1, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 0), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})
local EnableInv = CreateInstance("TextButton", {Name = "EnableInv", Text = "Enable Inv", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.8, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 50), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})
local Reach = CreateInstance("TextButton", {Name = "Reach", Text = "Reach", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.8, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 70), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})
local Mesh = CreateInstance("TextButton", {Name = "Mesh", Text = "Remove Mesh", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.8, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 90), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})
local Save = CreateInstance("TextButton", {Name = "Save", Text = "Save Tool", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.8, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 110), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})
local Receive = CreateInstance("TextButton", {Name = "Receive", Text = "Receive Tool", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.8, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 130), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})
local Drop = CreateInstance("TextButton", {Name = "Drop", Text = "Drop Tool", BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.8, Parent = MainFrame, TextSize = 18, Size = UDim2.new(1, 0, 0, 15), Position = UDim2.new(0, 0, 0, 150), Font = Enum.Font.SourceSansLight, TextColor3 = Color3.fromRGB(255, 255, 255)})


--

EnableInv.MouseButton1Down:Connect(function()
game.StarterGui:SetCoreGuiEnabled(2, true)
end)

Reach.MouseButton1Down:Connect(function()
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
if v:isA("Tool") then
a=Instance.new("SelectionBox",v.Handle)
a.Adornee=v.Handle
v.Handle.Size=Vector3.new(0.2,0.2,190)
v.GripPos=Vector3.new(0,0,0)
end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
v.Parent = game.Players.LocalPlayer.Character
end
end
end)
Mesh.MouseButton1Down:Connect(function()
game.Players.LocalPlayer.Character:FindFirstChildOfClass	("Tool").Handle.Mesh:remove()
end)
Save.MouseButton1Down:Connect(function()
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer
end
end
end)

Receive.MouseButton1Down:Connect(function()
for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer.Backpack
end
end
end)

Drop.MouseButton1Down:Connect(function()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       if v:IsA("Tool") then
          v.Parent = game.Players.LocalPlayer.Character
       end 
    end
  wait()
  
  for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
       if v:IsA("Tool") then
           v.Parent = game.Workspace.Terrain
       end 
    end
end)