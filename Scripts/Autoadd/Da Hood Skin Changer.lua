local UsernameandHeadshots = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Confirm = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Headshot = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local Username = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local UserID = Instance.new("TextBox")

--Properties:

UsernameandHeadshots.Name = "UsernameandHeadshots"
UsernameandHeadshots.Parent = game.CoreGui
UsernameandHeadshots.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = UsernameandHeadshots
Main.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Main.Position = UDim2.new(0.193901479, 0, 0.32361111, 0)
Main.Size = UDim2.new(0, 250, 0, 238)

Main.Active = true
Main.Draggable = true 


 

UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = Main

Confirm.Name = "Confirm"
Confirm.Parent = Main
Confirm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Confirm.Position = UDim2.new(0.100000001, 0, 0.693277299, 0)
Confirm.Size = UDim2.new(0, 200, 0, 50)
Confirm.Font = Enum.Font.SourceSans
Confirm.Text = "Confirm"
Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
Confirm.TextScaled = true
Confirm.TextSize = 14.000
Confirm.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 9)
UICorner_2.Parent = Confirm

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(131, 131, 131)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(131, 131, 131))}
UIGradient.Parent = Main

Headshot.Name = "Headshot"
Headshot.Parent = Main
Headshot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Headshot.BackgroundTransparency = 1.000
Headshot.Position = UDim2.new(0.0719999969, 0, 0.0672268942, 0)
Headshot.Size = UDim2.new(0, 63, 0, 67)
Headshot.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = Headshot

Username.Name = "Username"
Username.Parent = Main
Username.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Username.Position = UDim2.new(0.34799999, 0, 0.100840338, 0)
Username.Size = UDim2.new(0, 138, 0, 50)
Username.Font = Enum.Font.SourceSans
Username.Text = "Gian!#3943"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextScaled = true
Username.TextSize = 14.000
Username.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 9)
UICorner_4.Parent = Username

UserID.Name = "UserID"
UserID.Parent = Main
UserID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserID.Position = UDim2.new(0.100000001, 0, 0.428571433, 0)
UserID.Size = UDim2.new(0, 200, 0, 50)
UserID.Font = Enum.Font.SourceSans
UserID.Text = "this was made by Gian!#8885 Keybind is P"
UserID.TextColor3 = Color3.fromRGB(0, 0, 0)
UserID.TextScaled = true
UserID.TextSize = 14.000
UserID.TextWrapped = true

function Morph(UserId)
 local appearance = game.Players:GetCharacterAppearanceAsync(UserId)
 local player = game.Players.LocalPlayer

 for i,v in pairs(player.Character:GetChildren()) do
  if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
   v:Destroy()
  end
 end

 if player.Character.Head:FindFirstChild("face") then
  player.Character.Head.face:Destroy()
 end

 for i,v in pairs(appearance:GetChildren()) do
  if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
   v.Parent = player.Character
  elseif v:IsA("Accessory") then
   player.Character.Humanoid:AddAccessory(v)
  elseif v.Name == "R6" then
   if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
   end
  elseif v.Name == "R15" then
   if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
   end
  end
 end

 if appearance:FindFirstChild("face") then
  appearance.face.Parent = player.Character.Head
 else
  local face = Instance.new("Decal")
  face.Face = "Front"
  face.Name = "face"
  face.Texture = "rbxasset://textures/face.png"
  face.Transparency = 0
  face.Parent = player.Character.Head
 end

 -- Reload Character
 local parent = player.Character.Parent
 player.Character.Parent = nil
 player.Character.Parent = parent
end

Main.Draggable = true

local userID = 2331484141
local headshot = "https://www.roblox.com/headshot-thumbnail/image?userId="..userID.."&width=420&height=420&format=png"

Headshot.Image = headshot
Username.Text = game.Players:GetNameFromUserIdAsync(userID)

Confirm.MouseButton1Click:Connect(function()
 local userID = UserID.Text
 local headshot = "https://www.roblox.com/headshot-thumbnail/image?userId="..userID.."&width=420&height=420&format=png"
 Headshot.Image = headshot
 Username.Text = game.Players:GetNameFromUserIdAsync(userID)
 Morph(userID)
end)

local frame = game:GetService("CoreGui").UsernameandHeadshots.Main -- path to the frame
local mouse = game:GetService('Players').LocalPlayer:GetMouse(); -- we need the mouse object, which also has the keyboard

mouse.KeyDown:connect(function(key) -- whenever a key is pushed down
 key = key:lower() -- i do this in all my key events, though i don't remember why
 if key == 'p' then -- if key pressed is h
  frame.Visible = not frame.Visible -- flip between visible/invisible
 end
end)