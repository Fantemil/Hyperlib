repeat wait() until workspace:FindFirstChild("MenuLobby")
if not isfolder("PFSkins") then makefolder("PFSkins") end
local statText = Drawing.new("Text")
statText.Visible = false
statText.Font = 1
statText.Color = Color3.fromRGB(255,255,255)
statText.Center = true
statText.Size = 20
function say(x,y)
   local y = y or 1
   statText.Visible = true
   statText.Text = x
   delay(y,function()statText.Visible = false end)
end
local function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
if game.CoreGui:FindFirstChild("PFSkinEditor") then game.CoreGui.PFSkinEditor:Destroy() end
local PFSkinEditor = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local MainTitle = Instance.new("TextLabel")
local PartContainer = Instance.new("ScrollingFrame")
local PartListLayout = Instance.new("UIListLayout")
local ExamplePart = Instance.new("TextButton")
local PartCorner = Instance.new("UICorner")
local CPButton = Instance.new("TextButton")
local CPBtnCorner = Instance.new("UICorner")
local ColorPicker = Instance.new("Frame")
local ColorSelection = Instance.new("ImageButton")
local ColorPoint = Instance.new("TextButton")
local ColorCorner = Instance.new("UICorner")
local BrightnessSelection = Instance.new("TextButton")
local BrightGradient = Instance.new("UIGradient")
local BrightPoint = Instance.new("TextButton")
local HexBox = Instance.new("TextBox")
local CopyHexButton = Instance.new("ImageButton")
local MaterialPicker = Instance.new("Frame")
local MaterialSearch = Instance.new("ImageButton")
local MaterialBox = Instance.new("TextBox")
local MaterialContainer = Instance.new("ScrollingFrame")
local MaterialListLayout = Instance.new("UIListLayout")
local ExampleMaterial = Instance.new("TextButton")
local ExampleMatCorner = Instance.new("UICorner")
local MaterialPickerCorner = Instance.new("UICorner")
local CurrentMaterialLabel = Instance.new("TextLabel")
local PartViewer = Instance.new("Frame")
local ViewerCorner = Instance.new("UICorner")
local MainViewer = Instance.new("ViewportFrame")
local ConfigBox = Instance.new("TextBox")
local SaveButton = Instance.new("TextButton")
local ConfigDownload = Instance.new("ImageButton")
local LoadButton = Instance.new("TextButton")
local ConfigLoad = Instance.new("ImageButton")
local DeleteButton = Instance.new("TextButton")
local ConfigDelete = Instance.new("ImageButton")
local VersionLabel = Instance.new("TextLabel")
PFSkinEditor.Name = "PFSkinEditor"
PFSkinEditor.Parent = game.CoreGui
PFSkinEditor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.Name = "MainFrame"
MainFrame.Parent = PFSkinEditor
MainFrame.BackgroundColor3 = Color3.fromRGB(207, 140, 255)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.6, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 271, 0, 501)
MainCorner.Name = "MainCorner"
MainCorner.Parent = MainFrame
MainTitle.Name = "MainTitle"
MainTitle.Parent = MainFrame
MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.BackgroundTransparency = 1.000
MainTitle.Size = UDim2.new(0, 271, 0, 30)
MainTitle.Font = Enum.Font.Gotham
currentGun = workspace.MenuLobby.GunStage.GunModel:GetChildren()[1]
MainTitle.Text = "Skin Editor : "..currentGun.Name
MainTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
MainTitle.TextSize = 16.000
PartContainer.Name = "PartContainer"
PartContainer.Parent = MainFrame
PartContainer.Active = true
PartContainer.BackgroundColor3 = Color3.fromRGB(255, 149, 151)
PartContainer.BackgroundTransparency = 1.000
PartContainer.BorderSizePixel = 0
PartContainer.Position = UDim2.new(0.0332103334, 0, 0.059880238, 0)
PartContainer.Size = UDim2.new(0, 253, 0, 420)
PartListLayout.Name = "PartListLayout"
PartListLayout.Parent = PartContainer
PartListLayout.SortOrder = Enum.SortOrder.LayoutOrder
PartListLayout.Padding = UDim.new(0, 5)
ExamplePart.Name = "ExamplePart"
ExamplePart.Parent = PartContainer
ExamplePart.BackgroundColor3 = Color3.fromRGB(158, 61, 207)
ExamplePart.BorderSizePixel = 0
ExamplePart.Size = UDim2.new(0, 233, 0, 27)
ExamplePart.AutoButtonColor = false
ExamplePart.Font = Enum.Font.Gotham
ExamplePart.Text = "  Part Name"
ExamplePart.TextColor3 = Color3.fromRGB(0, 0, 0)
ExamplePart.TextSize = 18.000
ExamplePart.TextXAlignment = Enum.TextXAlignment.Left
ExamplePart.Visible = false
PartCorner.Name = "PartCorner"
PartCorner.Parent = ExamplePart
CPButton.Name = "CPButton"
CPButton.Parent = ExamplePart
CPButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPButton.BorderSizePixel = 0
CPButton.Position = UDim2.new(0.858369112, 0, 0.111111104, 0)
CPButton.Size = UDim2.new(0, 20, 0, 20)
CPButton.AutoButtonColor = false
CPButton.Font = Enum.Font.SourceSans
CPButton.Text = ""
CPButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CPButton.TextSize = 14.000
CPBtnCorner.Name = "CPBtnCorner"
CPBtnCorner.Parent = CPButton
ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = MainFrame
ColorPicker.BackgroundColor3 = Color3.fromRGB(207, 140, 255)
ColorPicker.BorderSizePixel = 0
ColorPicker.Position = UDim2.new(1.04911077, 0, 0.101796411, 0)
ColorPicker.Size = UDim2.new(0, 170, 0, 195)
ColorPicker.Visible = false
ColorSelection.Name = "ColorSelection"
ColorSelection.Parent = ColorPicker
ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColorSelection.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorSelection.BorderSizePixel = 2
ColorSelection.Position = UDim2.new(0.0520231202, 0, 0.0416666679, 0)
ColorSelection.Size = UDim2.new(0, 119, 0, 119)
ColorSelection.Image = "http://www.roblox.com/asset/?id=328298876"
ColorPoint.Name = "ColorPoint"
ColorPoint.Parent = ColorSelection
ColorPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ColorPoint.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorPoint.Position = UDim2.new(0, 0, 1, -5)
ColorPoint.Size = UDim2.new(0, 5, 0, 5)
ColorPoint.AutoButtonColor = false
ColorPoint.Font = Enum.Font.SourceSans
ColorPoint.Text = ""
ColorPoint.TextColor3 = Color3.fromRGB(0, 0, 0)
ColorPoint.TextSize = 14.000
ColorCorner.Name = "ColorCorner"
ColorCorner.Parent = ColorPicker
BrightnessSelection.Name = "BrightnessSelection"
BrightnessSelection.Parent = ColorPicker
BrightnessSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BrightnessSelection.BorderColor3 = Color3.fromRGB(0, 0, 0)
BrightnessSelection.BorderSizePixel = 2
BrightnessSelection.Position = UDim2.new(0.830133796, 0, 0.0416666679, 0)
BrightnessSelection.Size = UDim2.new(0, 17, 0, 118)
BrightnessSelection.AutoButtonColor = false
BrightnessSelection.Font = Enum.Font.SourceSans
BrightnessSelection.Text = ""
BrightnessSelection.TextColor3 = Color3.fromRGB(0, 0, 0)
BrightnessSelection.TextSize = 14.000
BrightGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
BrightGradient.Rotation = 90
BrightGradient.Name = "BrightGradient"
BrightGradient.Parent = BrightnessSelection
BrightPoint.Name = "BrightPoint"
BrightPoint.Parent = BrightnessSelection
BrightPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BrightPoint.BorderColor3 = Color3.fromRGB(0, 0, 0)
BrightPoint.Position = UDim2.new(0.5, -3, 0, 0)
BrightPoint.Size = UDim2.new(0, 5, 0, 5)
BrightPoint.AutoButtonColor = false
BrightPoint.Font = Enum.Font.SourceSans
BrightPoint.Text = ""
BrightPoint.TextColor3 = Color3.fromRGB(0, 0, 0)
BrightPoint.TextSize = 14.000
HexBox.Name = "HexBox"
HexBox.Parent = ColorPicker
HexBox.BackgroundColor3 = Color3.fromRGB(158, 61, 207)
HexBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
HexBox.Position = UDim2.new(0.0470588282, 0, 0.697435915, 0)
HexBox.Size = UDim2.new(0, 102, 0, 19)
HexBox.ClearTextOnFocus = false
HexBox.Font = Enum.Font.Gotham
HexBox.Text = "#ffffff"
HexBox.TextColor3 = Color3.fromRGB(0, 0, 0)
HexBox.TextSize = 14.000
HexBox.TextWrapped = true
HexBox.TextXAlignment = Enum.TextXAlignment.Left
CopyHexButton.Name = "CopyHexButton"
CopyHexButton.Parent = HexBox
CopyHexButton.BackgroundTransparency = 1.000
CopyHexButton.LayoutOrder = 4
CopyHexButton.Position = UDim2.new(1.16666663, 0, -0.157894731, 0)
CopyHexButton.Size = UDim2.new(0, 25, 0, 25)
CopyHexButton.ZIndex = 2
CopyHexButton.Image = "rbxassetid://3926307971"
CopyHexButton.ImageColor3 = Color3.fromRGB(76, 10, 103)
CopyHexButton.ImageRectOffset = Vector2.new(684, 404)
CopyHexButton.ImageRectSize = Vector2.new(36, 36)

MaterialPicker.Name = "MaterialPicker"
MaterialPicker.Parent = MainFrame
MaterialPicker.BackgroundColor3 = Color3.fromRGB(207, 140, 255)
MaterialPicker.BorderSizePixel = 0
MaterialPicker.Position = UDim2.new(1.04911077, 0, 0.506986022, 0)
MaterialPicker.Size = UDim2.new(0, 170, 0, 195)
MaterialPicker.Visible = false
MaterialSearch.Name = "MaterialSearch"
MaterialSearch.Parent = MaterialPicker
MaterialSearch.BackgroundTransparency = 1.000
MaterialSearch.LayoutOrder = 1
MaterialSearch.Position = UDim2.new(0, 5, 0, 5)
MaterialSearch.Size = UDim2.new(0, 25, 0, 25)
MaterialSearch.ZIndex = 2
MaterialSearch.Image = "rbxassetid://3926305904"
MaterialSearch.ImageColor3 = Color3.fromRGB(158, 61, 207)
MaterialSearch.ImageRectOffset = Vector2.new(964, 324)
MaterialSearch.ImageRectSize = Vector2.new(36, 36)
MaterialBox.Name = "MaterialBox"
MaterialBox.Parent = MaterialSearch
MaterialBox.BackgroundColor3 = Color3.fromRGB(158, 61, 207)
MaterialBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
MaterialBox.Position = UDim2.new(1.23218131, 0, 0.170428157, 0)
MaterialBox.Size = UDim2.new(0, 122, 0, 15)
MaterialBox.ClearTextOnFocus = false
MaterialBox.Font = Enum.Font.Gotham
MaterialBox.Text = ""
MaterialBox.TextColor3 = Color3.fromRGB(0, 0, 0)
MaterialBox.TextSize = 14.000
MaterialBox.TextWrapped = true
MaterialBox.TextXAlignment = Enum.TextXAlignment.Left
MaterialContainer.Name = "MaterialContainer"
MaterialContainer.Parent = MaterialPicker
MaterialContainer.Active = true
MaterialContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MaterialContainer.BackgroundTransparency = 1.000
MaterialContainer.BorderSizePixel = 0
MaterialContainer.Position = UDim2.new(0.0764705911, 0, 0.205128208, 0)
MaterialContainer.Size = UDim2.new(0, 144, 0, 114)
MaterialListLayout.Name = "MaterialListLayout"
MaterialListLayout.Parent = MaterialContainer
MaterialListLayout.SortOrder = Enum.SortOrder.LayoutOrder
MaterialListLayout.Padding = UDim.new(0, 5)
ExampleMaterial.Name = "ExampleMaterial"
ExampleMaterial.Parent = MaterialContainer
ExampleMaterial.BackgroundColor3 = Color3.fromRGB(158, 61, 207)
ExampleMaterial.BorderSizePixel = 0
ExampleMaterial.Size = UDim2.new(0, 128, 0, 20)
ExampleMaterial.AutoButtonColor = false
ExampleMaterial.Font = Enum.Font.Gotham
ExampleMaterial.Text = ""
ExampleMaterial.TextColor3 = Color3.fromRGB(0, 0, 0)
ExampleMaterial.TextSize = 14.000
ExampleMaterial.Visible = false
ExampleMatCorner.Name = "ExampleMatCorner"
ExampleMatCorner.Parent = ExampleMaterial
MaterialPickerCorner.Name = "MaterialPickerCorner"
MaterialPickerCorner.Parent = MaterialPicker
CurrentMaterialLabel.Name = "CurrentMaterialLabel"
CurrentMaterialLabel.Parent = MaterialPicker
CurrentMaterialLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentMaterialLabel.BackgroundTransparency = 1.000
CurrentMaterialLabel.Position = UDim2.new(0, 0, 0.835897446, 0)
CurrentMaterialLabel.Size = UDim2.new(0, 170, 0, 23)
CurrentMaterialLabel.Font = Enum.Font.Gotham
CurrentMaterialLabel.Text = "Current : "
CurrentMaterialLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
CurrentMaterialLabel.TextSize = 14.000
PartViewer.Name = "PartViewer"
PartViewer.Parent = MainFrame
PartViewer.BackgroundColor3 = Color3.fromRGB(207, 140, 255)
PartViewer.BorderSizePixel = 0
PartViewer.Position = UDim2.new(1.7502178, 0, 0.305389225, 0)
PartViewer.Size = UDim2.new(0, 170, 0, 195)
PartViewer.Visible = false
ViewerCorner.Name = "ViewerCorner"
ViewerCorner.Parent = PartViewer
MainViewer.BackgroundTransparency = 1.000
MainViewer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainViewer.Name = "MainViewer"
MainViewer.Parent = PartViewer
MainViewer.Position = UDim2.new(0.052941177, 0, 0.102564104, 0)
MainViewer.Size = UDim2.new(0,151,0,151)
ConfigBox.Name = "ConfigBox"
ConfigBox.Parent = MainFrame
ConfigBox.BackgroundColor3 = Color3.fromRGB(158, 61, 207)
ConfigBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigBox.Position = UDim2.new(0.032181263, 0, 0.916456103, 0)
ConfigBox.Size = UDim2.new(0, 122, 0, 15)
ConfigBox.ClearTextOnFocus = false
ConfigBox.Font = Enum.Font.Gotham
ConfigBox.Text = ""
ConfigBox.TextColor3 = Color3.fromRGB(0, 0, 0)
ConfigBox.TextSize = 14.000
ConfigBox.TextWrapped = true
ConfigBox.TextXAlignment = Enum.TextXAlignment.Left
SaveButton.Name = "SaveButton"
SaveButton.Parent = ConfigBox
SaveButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.BackgroundTransparency = 1.000
SaveButton.Position = UDim2.new(0.991803765, 0, 7.30156898e-07, 0)
SaveButton.Size = UDim2.new(0, 66, 0, 17)
SaveButton.AutoButtonColor = false
SaveButton.Font = Enum.Font.Gotham
SaveButton.Text = "Save"
SaveButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveButton.TextSize = 20.000
ConfigDownload.Name = "ConfigDownload"
ConfigDownload.Parent = SaveButton
ConfigDownload.BackgroundTransparency = 1.000
ConfigDownload.LayoutOrder = 5
ConfigDownload.Position = UDim2.new(0.807501316, 0, -0.235294119, 0)
ConfigDownload.Size = UDim2.new(0, 25, 0, 25)
ConfigDownload.ZIndex = 2
ConfigDownload.Image = "rbxassetid://3926305904"
ConfigDownload.ImageColor3 = Color3.fromRGB(76, 10, 103)
ConfigDownload.ImageRectOffset = Vector2.new(844, 444)
ConfigDownload.ImageRectSize = Vector2.new(36, 36)
LoadButton.Name = "SaveButton"
LoadButton.Parent = ConfigBox
LoadButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.BackgroundTransparency = 1.000
LoadButton.Position = UDim2.new(0.991803765, 0, 1.40000057, 0)
LoadButton.Size = UDim2.new(0, 66, 0, 17)
LoadButton.AutoButtonColor = false
LoadButton.Font = Enum.Font.Gotham
LoadButton.Text = "Load"
LoadButton.TextColor3 = Color3.fromRGB(0, 0, 0)
LoadButton.TextSize = 20.000
ConfigLoad.Name = "ConfigLoad"
ConfigLoad.Parent = LoadButton
ConfigLoad.BackgroundTransparency = 1.000
ConfigLoad.LayoutOrder = 5
ConfigLoad.Position = UDim2.new(0.808000028, 0, -0.234999999, 0)
ConfigLoad.Size = UDim2.new(0, 25, 0, 25)
ConfigLoad.ZIndex = 2
ConfigLoad.Image = "rbxassetid://3926305904"
ConfigLoad.ImageColor3 = Color3.fromRGB(76, 10, 103)
ConfigLoad.ImageRectOffset = Vector2.new(404, 444)
ConfigLoad.ImageRectSize = Vector2.new(36, 36)
DeleteButton.Name = "DeleteButton"
DeleteButton.Parent = ConfigBox
DeleteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DeleteButton.BackgroundTransparency = 1.000
DeleteButton.Position = UDim2.new(1.60655785, 0, -0.13333261, 0)
DeleteButton.Size = UDim2.new(0, 66, 0, 17)
DeleteButton.AutoButtonColor = false
DeleteButton.Font = Enum.Font.Gotham
DeleteButton.Text = "Delete"
DeleteButton.TextColor3 = Color3.fromRGB(0, 0, 0)
DeleteButton.TextSize = 20.000
ConfigDelete.Name = "ConfigDelete"
ConfigDelete.Parent = DeleteButton
ConfigDelete.BackgroundTransparency = 1.000
ConfigDelete.LayoutOrder = 4
ConfigDelete.Position = UDim2.new(0.303030312, 0, 1.11764705, 0)
ConfigDelete.Size = UDim2.new(0, 25, 0, 25)
ConfigDelete.ZIndex = 2
ConfigDelete.Image = "rbxassetid://3926305904"
ConfigDelete.ImageColor3 = Color3.fromRGB(255, 0, 0)
ConfigDelete.ImageRectOffset = Vector2.new(924, 724)
ConfigDelete.ImageRectSize = Vector2.new(36, 36)
VersionLabel.Name = "VersionLabel"
VersionLabel.Parent = MainFrame
VersionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.BackgroundTransparency = 1.000
VersionLabel.Position = UDim2.new(0, 0, 0.958083808, 0)
VersionLabel.Size = UDim2.new(0, 69, 0, 17)
VersionLabel.Font = Enum.Font.Kalam
VersionLabel.Text = "v~1.0"
VersionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.TextSize = 30.000
--
local client = game.Players.LocalPlayer
local mouse = client:GetMouse()
local camera = workspace.CurrentCamera
local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local ts = game:GetService("TweenService")

local currentPart = nil
local draggingColors = false
local draggingValue = false
local currentColor = nil
local currentUi = nil
local fakePart = nil
local lastHex = ""
local gunList = {}
local colorCounter = 0
local rH,rS,rV

local viewportCamera = Instance.new("Camera")
MainViewer.CurrentCamera = viewportCamera
viewportCamera.Parent = MainViewer

for i,v in pairs(Enum.Material:GetEnumItems()) do
   local newMat = ExampleMaterial:Clone()
   newMat.Parent = MaterialContainer
   newMat.Text = v.Name
   newMat.Visible = true
   newMat.MouseButton1Click:connect(function()
       currentPart.Material = v    
       CurrentMaterialLabel.Text = "Current : "..currentPart.Material.Name
   end)
end
MaterialContainer.CanvasSize = UDim2.new(0,0,0,MaterialListLayout.AbsoluteContentSize.Y)
local function to_hex(color)
   return string.format("#%02X%02X%02X", color.R * 0xFF,color.G * 0xFF, color.B * 0xFF)
end
local function popParts()
   currentGun = workspace.MenuLobby.GunStage.GunModel:GetChildren()[1]
   local newGun = true
   if gunList[currentGun.Name] then newGun = false else gunList[currentGun.Name] = {} end
   for i,v in ipairs(PartContainer:GetChildren()) do
       if v ~= PartListLayout and v ~= ExamplePart then
           v:Destroy()
       end
   end
   local e = currentGun:GetChildren()
   table.remove(e,1)
   for i,part in ipairs(e) do
       if part.ClassName == "MeshPart" or part.ClassName == "Part" or part.ClassName == "UnionOperation" then
           if fakePart then fakePart:Destroy() end
           if newGun then
               local listPart = {Color=nil,Material=nil}
               listPart.Color = part.Color
               listPart.Material = part.Material
               gunList[currentGun.Name][i] = listPart
           end
           part.Color = gunList[currentGun.Name][i].Color
           part.Material = gunList[currentGun.Name][i].Material
           local old
           old = hookmetamethod(game, "__newindex", function(self, index,value)
               if checkcaller() and self == part and index == "Color" then
                   gunList[currentGun.Name][i].Color = value
                   return old(self, index,value)
               elseif checkcaller() and self == part and index == "Material" then
                   gunList[currentGun.Name][i].Material = value
                   return old(self, index,value)
               end
               return old(self, index,value)
           end)
           
           fakePart = part:Clone()
           fakePart.Parent = MainViewer
           fakePart.Position = Vector3.new(0, 0, 0)
           viewportCamera.CFrame = CFrame.new(Vector3.new(3, 0, 0), fakePart.Position)
           local h,s,v = part.Color:ToHSV()
           local newPart = ExamplePart:Clone()
           wait()
           newPart.Parent = ExamplePart.Parent
           newPart.Text = " "..part.Name.." | "..tostring(i)
           newPart.Visible = true
           repeat wait() until newPart:FindFirstChild("CPButton")
           newPart.CPButton.BackgroundColor3 = Color3.fromHSV(h,s,v)
           newPart.MouseButton1Click:connect(function()
               if fakePart then fakePart:Destroy() end
               fakePart = part:Clone()
               fakePart.Parent = MainViewer
               fakePart.Position = Vector3.new(0, 0, 0)
               currentColor = part.Color
               currentPart = part
               local h,s,v = part.Color:ToHSV()
               ColorPicker.Visible = true
               PartViewer.Visible = true
               MaterialPicker.Visible = true
               ColorPoint.Position = UDim2.new(1-h,-5,1-s,0)
               BrightPoint.Position = UDim2.new(0.5,-3,1-v,0)
               ColorPoint.BackgroundColor3 = Color3.fromHSV(h,s,v)
               BrightPoint.BackgroundColor3 = Color3.fromHSV(0,0,v)
               local color = Color3.fromHSV(h,s,v)
               HexBox.Text = to_hex(Color3.fromRGB(r,g,b))
               currentUi = newPart
               CurrentMaterialLabel.Text = "Current : "..part.Material.Name
           end)
       end
   end
   PartContainer.CanvasSize = UDim2.new(0,0,0,PartListLayout.AbsoluteContentSize.Y)
end
ColorSelection.MouseButton1Down:connect(function()draggingColors=true end)
ColorPoint.MouseButton1Down:connect(function()draggingColors=true end)
BrightnessSelection.MouseButton1Down:connect(function()draggingValue=true end)
BrightPoint.MouseButton1Down:connect(function()draggingValue=true end)
uis.InputEnded:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 then
       draggingColors = false
       draggingValue = false
   end
end)

rs.RenderStepped:connect(function()
   rH,rS,rV = (Color3.fromHSV(zigzag(colorCounter),1,1)):ToHSV()
   colorCounter = colorCounter + 0.01
   if statText.Visible then
       local mousePos = camera:WorldToViewportPoint(mouse.Hit.p)
       statText.Position = Vector2.new(mousePos.X,mousePos.Y+20)    
   end
   if draggingColors and PFSkinEditor:IsDescendantOf(game.CoreGui) then
       local relX = math.clamp(mouse.X - ColorSelection.AbsolutePosition.X,0,ColorSelection.AbsoluteSize.X)
       local relY = math.clamp(mouse.Y - ColorSelection.AbsolutePosition.Y,0,ColorSelection.AbsoluteSize.Y)
       local newH = relX/ColorSelection.AbsoluteSize.X
       local newS = relY/ColorSelection.AbsoluteSize.Y
       local _,_,newV = currentColor:ToHSV()
       ColorPoint.Position = UDim2.new(newH,-2.5,newS,-2.5)
       local color = Color3.fromHSV(1-newH,1-newS,newV)
       ColorPoint.BackgroundColor3 = color
       currentPart.Color = color
       repeat wait() until currentUi:FindFirstChild("CPButton")
       currentUi.CPButton.BackgroundColor3 = color
       if fakePart then fakePart.Color = color end
       local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
       HexBox.Text = to_hex(Color3.fromRGB(r,g,b))
       currentColor = color
       lastHex = HexBox.Text
   end
   if draggingValue and PFSkinEditor:IsDescendantOf(game.CoreGui) then
       local relY = math.clamp(mouse.Y - BrightnessSelection.AbsolutePosition.Y,0,BrightnessSelection.AbsoluteSize.Y)
       BrightPoint.Position = UDim2.new(0.5,-3,0,relY-2.5)
       local newH,newS,_ = currentColor:ToHSV()  
       local newV = 1-(relY/BrightnessSelection.AbsoluteSize.Y)
       local color = Color3.fromHSV(newH,newS,newV)
       ColorPoint.BackgroundColor3 = color
       BrightPoint.BackgroundColor3 = Color3.fromHSV(0,0,newV)
       currentColor = color
       currentPart.Color = color
       repeat wait() until currentUi:FindFirstChild("CPButton")
       currentUi.CPButton.BackgroundColor3 = color
       if fakePart then fakePart.Color = color end
       local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
       HexBox.Text = to_hex(Color3.fromRGB(r,g,b))
       lastHex = HexBox.Text
   end
end)
HexBox.Focused:Connect(function()lastHex = HexBox.Text end)
HexBox.FocusLost:connect(function()
   if not pcall(function()
       local hex = HexBox.Text
       local r, g, b = string.match(hex, "^#?(%w%w)(%w%w)(%w%w)$")
       local h,s,v =  Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16)):ToHSV()
       local color = Color3.fromHSV(h,s,v)
       currentColor = color
       currentPart.Color = color
       ColorPoint.BackgroundColor3 = color
       BrightPoint.BackgroundColor3 = Color3.fromHSV(0,0,v)
       currentUi.CPButton.BackgroundColor3 = color
       ColorPoint.Position = UDim2.new(1-h,0,1-s,0)
       BrightPoint.Position = UDim2.new(0.5,-3,1-v,0)
       if fakePart then fakePart.Color = color end
   end)
   then
       HexBox.Text = lastHex
   end
end)
popParts()
workspace.ChildRemoved:connect(function(x)if x.Name == "MenuLobby" then MainFrame.Visible = false end end)
workspace.ChildAdded:connect(function(x)if x.Name == "MenuLobby" then MainFrame.Visible = true end end)
workspace.MenuLobby.GunStage.GunModel.ChildAdded:connect(function(x)
   MainTitle.Text = "Skin Editor : "..x.Name
   currentGun = x
   wait(.1)
   popParts()
end)
MaterialBox:GetPropertyChangedSignal("Text"):connect(function()
   local search = MaterialBox.Text
   for i,v in ipairs(MaterialContainer:GetChildren()) do
       if v ~= MaterialListLayout and v ~= ExampleMaterial then
           if v.Text:sub(1,#search):lower() == search:lower() then
               v.Visible = true
           else
               v.Visible = false
           end
       end
   end
   MaterialContainer.CanvasSize = UDim2.new(0,0,0,MaterialListLayout.AbsoluteContentSize.Y)
end)
SaveButton.MouseButton1Click:connect(function()
   local stringList = ""
   for i,v in pairs(gunList) do
       stringList = stringList..',["'..i..'"] = {'
       for _,part in pairs(v) do
           local h,s,v = part.Color:ToHSV()
           stringList = stringList.."{Color=Color3.fromHSV("..tostring(h)..','..tostring(s)..','..tostring(v).."),Material=Enum.Material."..part.Material.Name.."},"
       end
       stringList = stringList:sub(1,#stringList-1)..'},'
   end
   stringList = "return {"..stringList:sub(2,#stringList-1)..'}'
   setclipboard(stringList)
   writefile("PFSkins/"..ConfigBox.Text..".lua",stringList)  
   say("Saved to PFSkins/"..ConfigBox.Text..".lua")
end)
DeleteButton.MouseButton1Click:connect(function()
   if isfile("PFSkins/"..ConfigBox.Text..".lua") then
       delfile("PFSkins/"..ConfigBox.Text..".lua")
       say("Deleted PFSkins/"..ConfigBox.Text..".lua")
   else
       say("File Error : PFSkins/"..ConfigBox.Text..".lua")
   end
end)
CopyHexButton.MouseButton1Click:connect(function()
   setclipboard(HexBox.Text)
   say("Copied hex to clipboard")
end)
LoadButton.MouseButton1Click:connect(function()
   if isfile("PFSkins/"..ConfigBox.Text..".lua") then
       gunList = loadstring(readfile("PFSkins/"..ConfigBox.Text..".lua"))()
       popParts()
       say("Loaded from PFSkins/"..ConfigBox.Text..".lua")
   else
       say("File Error : PFSkins/"..ConfigBox.Text..".lua")    
   end
end)

camera.ChildAdded:connect(function(x)
   wait()
   if not x:FindFirstChild("Trigger") then return end
   if gunList[x.Name] then
       actGun = x
       for i,part in ipairs(x:GetChildren()) do
           if part.ClassName == "MeshPart" or part.ClassName == "Part" or part.ClassName == "UnionOperation" then
               if gunList[x.Name][i].Color then
                   part.Color = gunList[x.Name][i].Color
               end
               if gunList[x.Name][i].Material then
                   part.Material = gunList[x.Name][i].Material
               end
           end
       end
   end
end)