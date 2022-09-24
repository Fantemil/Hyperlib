local FK = Instance.new("ScreenGui")
local FrMain = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Nik = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Candleflame = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local Corrupt = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local Icebreaker = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local Batwing = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local info = Instance.new("TextLabel")
local warn = Instance.new("TextLabel")
local info_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

FK.Name = "FK"
FK.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FK.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
FK.ResetOnSpawn = false

FrMain.Name = "FrMain"
FrMain.Parent = FK
FrMain.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
FrMain.Position = UDim2.new(0.282637119, 0, 0.252681762, 0)
FrMain.Size = UDim2.new(0, 665, 0, 351)
FrMain.Active = true
FrMain.Draggable = true

TextLabel.Parent = FrMain
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 665, 0, 50)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "FREE KNIFES IN MM2!!!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = TextLabel

UICorner_2.CornerRadius = UDim.new(0, 20)
UICorner_2.Parent = FrMain

Nik.Name = "Nik"
Nik.Parent = FrMain
Nik.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Nik.BackgroundTransparency = 0.700
Nik.Position = UDim2.new(0.786466181, 0, 0.13973999, 0)
Nik.Size = UDim2.new(0, 100, 0, 100)
Nik.Image = "http://www.roblox.com/asset/?id=5412013108"

UICorner_3.CornerRadius = UDim.new(0, 20)
UICorner_3.Parent = Nik

Candleflame.Name = "Candleflame"
Candleflame.Parent = FrMain
Candleflame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Candleflame.BackgroundTransparency = 0.700
Candleflame.Position = UDim2.new(0.604511321, 0, 0.13973999, 0)
Candleflame.Size = UDim2.new(0, 100, 0, 100)
Candleflame.Image = "http://www.roblox.com/asset/?id=7864019525"

UICorner_4.CornerRadius = UDim.new(0, 20)
UICorner_4.Parent = Candleflame

Corrupt.Name = "Corrupt"
Corrupt.Parent = FrMain
Corrupt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Corrupt.BackgroundTransparency = 0.700
Corrupt.Position = UDim2.new(0.0616541356, 0, 0.13973999, 0)
Corrupt.Size = UDim2.new(0, 100, 0, 100)
Corrupt.Image = "http://www.roblox.com/asset/?id=572763491"

UICorner_5.CornerRadius = UDim.new(0, 20)
UICorner_5.Parent = Corrupt

Icebreaker.Name = "Icebreaker"
Icebreaker.Parent = FrMain
Icebreaker.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icebreaker.BackgroundTransparency = 0.700
Icebreaker.Position = UDim2.new(0.24060151, 0, 0.13973999, 0)
Icebreaker.Size = UDim2.new(0, 100, 0, 100)
Icebreaker.Image = "http://www.roblox.com/asset/?id=6492468078"

UICorner_6.CornerRadius = UDim.new(0, 20)
UICorner_6.Parent = Icebreaker

Batwing.Name = "Batwing"
Batwing.Parent = FrMain
Batwing.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Batwing.BackgroundTransparency = 0.700
Batwing.Position = UDim2.new(0.42255637, 0, 0.13973999, 0)
Batwing.Size = UDim2.new(0, 100, 0, 100)
Batwing.Image = "http://www.roblox.com/asset/?id=7231641318"

UICorner_7.CornerRadius = UDim.new(0, 20)
UICorner_7.Parent = Batwing

info.Name = "info"
info.Parent = FrMain
info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1.000
info.BorderColor3 = Color3.fromRGB(27, 42, 53)
info.Position = UDim2.new(-0.0270676669, 0, 0.856941879, 0)
info.Size = UDim2.new(0, 200, 0, 50)
info.Font = Enum.Font.ArialBold
info.Text = "By CreXxX56/HeckerX"
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.TextSize = 14.000

warn.Name = "warn"
warn.Parent = FrMain
warn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
warn.BackgroundTransparency = 0.500
warn.Position = UDim2.new(0.0616541356, 0, 0.455840468, 0)
warn.Size = UDim2.new(0, 582, 0, 79)
warn.Font = Enum.Font.SourceSans
warn.Text = "After death or at the end of the round, the knife that you have equipped will disappear!!!Just follow the instructions below!"
warn.TextColor3 = Color3.fromRGB(255, 255, 255)
warn.TextScaled = true
warn.TextSize = 14.000
warn.TextWrapped = true

info_2.Name = "info"
info_2.Parent = FrMain
info_2.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
info_2.BackgroundTransparency = 0.500
info_2.Position = UDim2.new(0.0601503775, 0, 0.68091166, 0)
info_2.Size = UDim2.new(0, 582, 0, 43)
info_2.Font = Enum.Font.SourceSans
info_2.Text = "To equip a knife, you need to click on it!"
info_2.TextColor3 = Color3.fromRGB(255, 255, 255)
info_2.TextScaled = true
info_2.TextSize = 14.000
info_2.TextWrapped = true

TextButton.Parent = FrMain
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.923308253, 0, 0, 0)
TextButton.Size = UDim2.new(0, 51, 0, 42)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function VZKOR_fake_script() -- Nik.Free 
 local script = Instance.new('LocalScript', Nik)

 local function get()
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.TextureId = "rbxassetid://2599774828"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.MeshId = "rbxassetid://305826272"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.Scale = Vector3.new(0.9, 0.9, 0.9)
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.TextureId = "rbxassetid://2599774828"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.MeshId = "rbxassetid://305826272"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.Scale = Vector3.new(0.9, 0.9, 0.9)
   wait(5)
 end
 
 script.Parent.Activated:Connect(get)
end
coroutine.wrap(VZKOR_fake_script)()
local function NCDACYM_fake_script() -- Candleflame.Free 
 local script = Instance.new('LocalScript', Candleflame)

 local function get()
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.TextureId = "rbxassetid://8272172218"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.MeshId = "rbxassetid://7791364860"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.Scale = Vector3.new(0.064, 0.064, 0.064)
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.TextureId = "rbxassetid://8272172218"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.MeshId = "rbxassetid://7791364860"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.Scale = Vector3.new(0.064, 0.064, 0.064)
   wait(5)
 end
 
 script.Parent.Activated:Connect(get)
end
coroutine.wrap(NCDACYM_fake_script)()
local function BTTZX_fake_script() -- Corrupt.Free 
 local script = Instance.new('LocalScript', Corrupt)

 local function get()
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.TextureId = "http://www.roblox.com/asset/?id=162016526"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.TextureId = "http://www.roblox.com/asset/?id=162016526"
   wait(5)
 end
 
 script.Parent.Activated:Connect(get)
end
coroutine.wrap(BTTZX_fake_script)()
local function XDOLBP_fake_script() -- Icebreaker.Free 
 local script = Instance.new('LocalScript', Icebreaker)

 local function get()
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.TextureId = "rbxassetid://6124173821"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.MeshId = "rbxassetid://6124173614"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.Scale = Vector3.new(1, 1, 1)
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.TextureId = "rbxassetid://6124173821"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.MeshId = "rbxassetid://6124173614"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.Scale = Vector3.new(1, 1, 1)
   wait(5)
 end
 
 script.Parent.Activated:Connect(get)
end
coroutine.wrap(XDOLBP_fake_script)()
local function NOKKS_fake_script() -- Batwing.Free 
 local script = Instance.new('LocalScript', Batwing)

 local function get()
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.TextureId = "rbxassetid://2551856737"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.MeshId = "rbxassetid://305826272"
   game.Players.LocalPlayer.Character.KnifeDisplay.Mesh.Scale = Vector3.new(0.9, 0.9, 0.9)
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.TextureId = "rbxassetid://2551856737"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.MeshId = "rbxassetid://305826272"
   game.Players.LocalPlayer.Backpack.Knife.Handle.Mesh.Scale = Vector3.new(0.9, 0.9, 0.9)
   wait(5)
 end
 
 script.Parent.Activated:Connect(get)
end
coroutine.wrap(NOKKS_fake_script)()
local function ZELV_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)

 local function GET()
  script.Parent.Parent.Parent:Destroy()
 end
 
 script.Parent.Activated:Connect(GET)
end
coroutine.wrap(ZELV_fake_script)()