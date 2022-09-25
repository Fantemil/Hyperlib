-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local deletstop = Instance.new("TextButton")
local spamclick = Instance.new("TextButton")
local becomeguard = Instance.new("TextButton")
local spamalllights = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(46, 58, 77)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.400874645, 0, 0.208978325, 0)
Frame.Size = UDim2.new(0, 300, 0, 195)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(50, 72, 194)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 300, 0, 29)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Skid Fucker"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 19.000

deletstop.Name = "deletstop"
deletstop.Parent = Frame
deletstop.BackgroundColor3 = Color3.fromRGB(50, 72, 194)
deletstop.BorderSizePixel = 0
deletstop.Position = UDim2.new(0.0293211788, 0, 0.196512818, 0)
deletstop.Size = UDim2.new(0, 130, 0, 50)
deletstop.Font = Enum.Font.SourceSansLight
deletstop.Text = "Delete All Stop buttons"
deletstop.TextColor3 = Color3.fromRGB(255, 255, 255)
deletstop.TextSize = 17.000

spamclick.Name = "spamclick"
spamclick.Parent = Frame
spamclick.BackgroundColor3 = Color3.fromRGB(50, 72, 194)
spamclick.BorderSizePixel = 0
spamclick.Position = UDim2.new(0.0293211788, 0, 0.685128212, 0)
spamclick.Size = UDim2.new(0, 130, 0, 50)
spamclick.Font = Enum.Font.SourceSansLight
spamclick.Text = "Spam ClickDetectors"
spamclick.TextColor3 = Color3.fromRGB(255, 255, 255)
spamclick.TextSize = 18.000

becomeguard.Name = "becomeguard"
becomeguard.Parent = Frame
becomeguard.BackgroundColor3 = Color3.fromRGB(50, 72, 194)
becomeguard.BorderSizePixel = 0
becomeguard.Position = UDim2.new(0.528875351, 0, 0.196512848, 0)
becomeguard.Size = UDim2.new(0, 130, 0, 50)
becomeguard.Font = Enum.Font.SourceSansLight
becomeguard.Text = "Become A Guard"
becomeguard.TextColor3 = Color3.fromRGB(255, 255, 255)
becomeguard.TextSize = 21.000

spamalllights.Name = "spamalllights"
spamalllights.Parent = Frame
spamalllights.BackgroundColor3 = Color3.fromRGB(50, 72, 194)
spamalllights.BorderSizePixel = 0
spamalllights.Position = UDim2.new(0.528875351, 0, 0.685128212, 0)
spamalllights.Size = UDim2.new(0, 130, 0, 50)
spamalllights.Font = Enum.Font.SourceSansLight
spamalllights.Text = "Spam Lights"
spamalllights.TextColor3 = Color3.fromRGB(255, 255, 255)
spamalllights.TextSize = 21.000

-- Scripts:

local function UFQO_fake_script() -- deletstop.LocalScript 
 local script = Instance.new('LocalScript', deletstop)

 local descendants = game.Workspace:GetDescendants()
 script.Parent.Parent.deletstop.MouseButton1Click:Connect(function()
  for index, descendant in pairs(descendants) do
   if descendant.Name == "Stop" or descendant.Name == "stop" then
    wait()
    descendant:Destroy()
   end
  end
 end)
end
coroutine.wrap(UFQO_fake_script)()
local function XRNEL_fake_script() -- spamclick.LocalScript 
 local script = Instance.new('LocalScript', spamclick)

 _G.loop = true
 
 script.Parent.Parent.spamclick.MouseButton1Click:Connect(function()
  while _G.loop do
   wait()
   for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("ClickDetector") then
     wait()
     fireclickdetector(v)
    end
   end
  end
 end)
end
coroutine.wrap(XRNEL_fake_script)()
local function XJBKKC_fake_script() -- becomeguard.LocalScript 
 local script = Instance.new('LocalScript', becomeguard)

 script.Parent.Parent.becomeguard.MouseButton1Click:Connect(function()
  for i,v in pairs(workspace.ClickPart:GetDescendants()) do
   if v:IsA("ClickDetector") then
    wait()
    fireclickdetector(v)
   end
  end
 end)
end
coroutine.wrap(XJBKKC_fake_script)()
local function URPZWD_fake_script() -- spamalllights.LocalScript 
 local script = Instance.new('LocalScript', spamalllights)

 _G.loop = true
 
 script.Parent.Parent.spamalllights.MouseButton1Click:Connect(function()
  while _G.loop do
   wait()
   for i,v in pairs(workspace.Plights:GetDescendants()) do
    if v:IsA("ClickDetector") then
     wait()
     fireclickdetector(v)
    end
   end
  end
 end)
end
coroutine.wrap(URPZWD_fake_script)()
local function QPWVKR_fake_script() -- ScreenGui.Dragify 
 local script = Instance.new('LocalScript', ScreenGui)

 local UIS = game:GetService("UserInputService")
 function dragify(Frame)
     dragToggle = nil
     local dragSpeed = 0.50
     dragInput = nil
     dragStart = nil
     local dragPos = nil
     function updateInput(input)
         local Delta = input.Position - dragStart
         local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
         game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
     end
     Frame.InputBegan:Connect(function(input)
         if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
             dragToggle = true
             dragStart = input.Position
             startPos = Frame.Position
             input.Changed:Connect(function()
                 if input.UserInputState == Enum.UserInputState.End then
                     dragToggle = false
                 end
             end)
         end
     end)
     Frame.InputChanged:Connect(function(input)
         if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
             dragInput = input
         end
     end)
     game:GetService("UserInputService").InputChanged:Connect(function(input)
         if input == dragInput and dragToggle then
             updateInput(input)
         end
     end)
 end
 
 dragify(Frame)
end
coroutine.wrap(QPWVKR_fake_script)()