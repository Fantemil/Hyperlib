--made by MyWorld#4430
local petGui = Instance.new("ScreenGui")
local drag = Instance.new("Frame")
local label = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local otb = Instance.new("TextBox")

petGui.Name = "petGui"
petGui.Parent = game:GetService("CoreGui")
petGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

drag.Name = "drag"
drag.Parent = petGui
drag.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
drag.BorderSizePixel = 0
drag.Position = UDim2.new(0.5, -150, 0.5, -35)
drag.Size = UDim2.new(0, 300, 0, 70)
drag.Archivable = true
drag.Active = true
drag.Selectable = true
drag.Draggable = true

label.Name = "label"
label.Parent = drag
label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label.BackgroundTransparency = 0.500
label.BorderSizePixel = 0
label.Size = UDim2.new(1, 0, 0, 20)
label.Font = Enum.Font.SourceSans
label.Text = "set pet owner"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.TextSize = 14.000
label.TextWrapped = true

TextButton.Parent = label
TextButton.BackgroundColor3 = Color3.fromRGB(91, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, -50, 0, 0)
TextButton.Size = UDim2.new(0, 50, 1, 0)
TextButton.Font = Enum.Font.Ubuntu
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 16.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
 petGui:Destroy()
end)

otb.Name = "otb"
otb.Parent = drag
otb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
otb.BorderSizePixel = 0
otb.Position = UDim2.new(0, 10, 0, 30)
otb.Size = UDim2.new(1, -20, 1, -40)
otb.Font = Enum.Font.SourceSans
otb.PlaceholderText = "pet owner name"
otb.Text = ""
otb.TextColor3 = Color3.fromRGB(255, 255, 255)
otb.TextSize = 20.000
otb.TextWrapped = true

local plr = ""

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer

otb.FocusLost:Connect(function(enter)
 if enter then
  local playername = otb.Text

  for i, v in pairs(plrs:GetPlayers()) do
   if (string.lower(v.Name):sub(1, #playername) == string.lower(playername)) and (v ~= lp) then
    plr = v.Name
   end
  end
        otb.Text = plr
 end
end)

local ws = game:GetService("Workspace")
local c = lp.Character
local rs = game:GetService("RunService")
local sg = game:GetService("StarterGui")
local uis = game:GetService("UserInputService")
function uc(p)
 spawn(function()
  while p and p.Parent and rs.Stepped:Wait() do
   p.CanCollide = false
  end
 end)
end
if c and c.Parent then
 local ch = c:FindFirstChildOfClass("Humanoid")
 if ch and (ch.Health ~= 0) then
  local fc = Instance.new("Model", ws)
  local hed = Instance.new("Part", fc)
  hed.Transparency = 1
  hed.Name = "Head"
  uc(hed)
  local tor = Instance.new("Part", fc)
  tor.Transparency = 1
  tor.Name = "Torso"
  uc(tor)
  local nh = Instance.new("Humanoid", fc)
  lp.Character = fc
  local gh = nh:Clone()
  gh.Parent = fc
  nh:Destroy()
  gh.Health = 0 
  lp.Character = c
  fc:Destroy()
  wait(6)
  if c and c.Parent and ch and ch.Parent and (ch.Health ~= 0) then
   local hed = c:FindFirstChild("Head")
   if hed and (hed:IsA("Part") or hed:IsA("MeshPart")) then
    uc(hed)
    for i, v in pairs(c:GetChildren()) do
     if not ((v == hed) or v:IsA("Humanoid")) then
      v:Destroy()
     end
    end

    local bg = Instance.new("BodyGyro", hed)
    bg.D = 50
    bg.P = 200
    bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)

    local bp = Instance.new("BodyPosition", hed)
    bp.D = 50
    bp.P = 200
    bp.MaxForce = Vector3.new(9e9, 9e9, 9e9)

    while rs.Stepped:Wait() and ch and ch.Parent and hed and hed.Parent and bp and bp.Parent and bg and bg.Parent do
     local c1 = plrs:FindFirstChild(plr)
     if c1 and c1:IsA("Player") then
      c1 = c1.Character
      if c1 and c1.Parent then
       c1 = c1:FindFirstChild("Head")
       if c1 and (c1:IsA("Part") or c1:IsA("MeshPart")) then
        bp.Position = (c1.CFrame * CFrame.new(2, 2, 2)).Position
        bg.CFrame = c1.CFrame
       end
      end
     end
    end
   end
  end
 end
end