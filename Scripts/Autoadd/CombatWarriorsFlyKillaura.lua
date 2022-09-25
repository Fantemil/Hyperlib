--this is why we cant have nice things
--reported reach already
local library = {}
local windowCount = 0
local sizes = {}
local listOffset = {}
local windows = {}
local pastSliders = {}
local dropdowns = {}
local dropdownSizes = {}
local destroyed

local colorPickers = {}

if game.CoreGui:FindFirstChild('TurtleUiLib') then
 game.CoreGui:FindFirstChild('TurtleUiLib'):Destroy()
 destroyed = true
end

function Lerp(a, b, c)
 return a + ((b - a) * c)
end

local players = game:service('Players');
local player = players.LocalPlayer;
local mouse = player:GetMouse();
local run = game:service('RunService');
local stepped = run.Stepped;
function Dragify(obj)
 spawn(function()
  local minitial;
  local initial;
  local isdragging;
  obj.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    isdragging = true;
    minitial = input.Position;
    initial = obj.Position;
    local con;
    con = stepped:Connect(function()
     if isdragging then
      local delta = Vector3.new(mouse.X, mouse.Y, 0) - minitial;
      obj.Position = UDim2.new(initial.X.Scale, initial.X.Offset + delta.X, initial.Y.Scale, initial.Y.Offset + delta.Y);
     else
      con:Disconnect();
     end;
    end);
    input.Changed:Connect(function()
     if input.UserInputState == Enum.UserInputState.End then
      isdragging = false;
     end;
    end);
   end;
  end);
 end)
end

-- Instances:

local function protect_gui(obj) 
 if destroyed then
  obj.Parent = game.CoreGui
  return
 end
 if syn and syn.protect_gui then
  syn.protect_gui(obj)
  obj.Parent = game.CoreGui
 elseif PROTOSMASHER_LOADED then
  obj.Parent = get_hidden_gui()
 else
  obj.Parent = game.CoreGui
 end
end
local TurtleUiLib = Instance.new("ScreenGui")

TurtleUiLib.Name = "TurtleUiLib"

protect_gui(TurtleUiLib)

local xOffset = 20

local uis = game:GetService("UserInputService")

local keybindConnection

function library:Destroy()
 TurtleUiLib:Destroy()
 if keybindConnection then
  keybindConnection:Disconnect()
 end
end
function library:Hide()
 TurtleUiLib.Enabled = not TurtleUiLib.Enabled
end 

function library:Keybind(key)
 if keybindConnection then keybindConnection:Disconnect() end

 keybindConnection = uis.InputBegan:Connect(function(input, gp)
  if not gp and input.KeyCode == Enum.KeyCode[key] then
   TurtleUiLib.Enabled = not TurtleUiLib.Enabled
  end
 end)
end

function library:Window(name) 
 windowCount = windowCount + 1
 local winCount = windowCount
 local zindex = winCount * 7
 local UiWindow = Instance.new("Frame")

 UiWindow.Name = "UiWindow"
 UiWindow.Parent = TurtleUiLib
 UiWindow.BackgroundColor3 = Color3.fromRGB(0, 151, 230)
 UiWindow.BorderColor3 = Color3.fromRGB(0, 151, 230)
 UiWindow.Position = UDim2.new(0, xOffset, 0, 20)
 UiWindow.Size = UDim2.new(0, 207, 0, 33)
 UiWindow.ZIndex = 4 + zindex
 UiWindow.Active = true
 Dragify(UiWindow)

 xOffset = xOffset + 230

 local Header = Instance.new("Frame")
 Header.Name = "Header"
 Header.Parent = UiWindow
 Header.BackgroundColor3 = Color3.fromRGB(0, 168, 255)
 Header.BorderColor3 = Color3.fromRGB(0, 168, 255)
 Header.Position = UDim2.new(0, 0, -0.0202544238, 0)
 Header.Size = UDim2.new(0, 207, 0, 26)
 Header.ZIndex = 5 + zindex

 local HeaderText = Instance.new("TextLabel")
 HeaderText.Name = "HeaderText"
 HeaderText.Parent = Header
 HeaderText.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 HeaderText.BackgroundTransparency = 1.000
 HeaderText.Position = UDim2.new(0, 0, -0.0020698905, 0)
 HeaderText.Size = UDim2.new(0, 206, 0, 33)
 HeaderText.ZIndex = 6 + zindex
 HeaderText.Font = Enum.Font.SourceSans
 HeaderText.Text = name or "Window"
 HeaderText.TextColor3 = Color3.fromRGB(47, 54, 64)
 HeaderText.TextSize = 17.000

 local Minimise = Instance.new("TextButton")
 local Window = Instance.new("Frame")
 Minimise.Name = "Minimise"
 Minimise.Parent = Header
 Minimise.BackgroundColor3 = Color3.fromRGB(0, 168, 255)
 Minimise.BorderColor3 = Color3.fromRGB(0, 168, 255)
 Minimise.Position = UDim2.new(0, 185, 0, 2)
 Minimise.Size = UDim2.new(0, 22, 0, 22)
 Minimise.ZIndex = 7 + zindex
 Minimise.Font = Enum.Font.SourceSansLight
 Minimise.Text = "_"
 Minimise.TextColor3 = Color3.fromRGB(0, 0, 0)
 Minimise.TextSize = 20.000
 Minimise.MouseButton1Up:connect(function()
  Window.Visible = not Window.Visible
  if Window.Visible then
   Minimise.Text = "_"
  else
   Minimise.Text = "+"
  end
 end)

 Window.Name = "Window"
 Window.Parent = Header
 Window.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
 Window.BorderColor3 = Color3.fromRGB(47, 54, 64)
 Window.Position = UDim2.new(0, 0, 0, 0)
 Window.Size = UDim2.new(0, 207, 0, 33)
 Window.ZIndex = 1 + zindex

 local functions = {}
 sizes[winCount] = 33
 listOffset[winCount] = 10
 function functions:Button(name, callback)
  local name = name or "Button"
  local callback = callback or function() end

  sizes[winCount] = sizes[winCount] + 32
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  local Button = Instance.new("TextButton")
  listOffset[winCount] = listOffset[winCount] + 32
  Button.Name = "Button"
  Button.Parent = Window
  Button.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
  Button.BorderColor3 = Color3.fromRGB(113, 128, 147)
  Button.Position = UDim2.new(0, 12, 0, listOffset[winCount])
  Button.Size = UDim2.new(0, 182, 0, 26)
  Button.ZIndex = 2 + zindex
  Button.Selected = true
  Button.Font = Enum.Font.SourceSans
  Button.TextColor3 = Color3.fromRGB(245, 246, 250)
  Button.TextSize = 16.000
  Button.TextStrokeTransparency = 123.000
  Button.TextWrapped = true
  Button.Text = name
  Button.MouseButton1Down:Connect(callback)

  pastSliders[winCount] = false
 end
 function functions:Label(text, color)
  local color = color or Color3.fromRGB(220, 221, 225)

  sizes[winCount] = sizes[winCount] + 32
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  listOffset[winCount] = listOffset[winCount] + 32
  local Label = Instance.new("TextLabel")
  Label.Name = "Label"
  Label.Parent = Window
  Label.BackgroundColor3 = Color3.fromRGB(220, 221, 225)
  Label.BackgroundTransparency = 1.000
  Label.BorderColor3 = Color3.fromRGB(27, 42, 53)
  Label.Position = UDim2.new(0, 0, 0, listOffset[winCount])
  Label.Size = UDim2.new(0, 206, 0, 29)
  Label.Font = Enum.Font.SourceSans
  Label.Text = text or "Label"
  Label.TextSize = 16.000
  Label.ZIndex = 2 + zindex

  if type(color) == "boolean" and color then
   spawn(function()
    while wait() do
     local hue = tick() % 5 / 5
     Label.TextColor3 = Color3.fromHSV(hue, 1, 1)
    end
   end)
  else
   Label.TextColor3 = color
  end
  pastSliders[winCount] = false

  return Label
 end
 function functions:Toggle(text, on, callback)
  local callback = callback or function() end

  sizes[winCount] = sizes[winCount] + 32
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  listOffset[winCount] = listOffset[winCount] + 32

  local ToggleDescription = Instance.new("TextLabel")
  local ToggleButton = Instance.new("TextButton")
  local ToggleFiller = Instance.new("Frame")

  ToggleDescription.Name = "ToggleDescription"
  ToggleDescription.Parent = Window
  ToggleDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ToggleDescription.BackgroundTransparency = 1.000
  ToggleDescription.Position = UDim2.new(0, 14, 0, listOffset[winCount])
  ToggleDescription.Size = UDim2.new(0, 131, 0, 26)
  ToggleDescription.Font = Enum.Font.SourceSans
  ToggleDescription.Text = text or "Toggle"
  ToggleDescription.TextColor3 = Color3.fromRGB(245, 246, 250)
  ToggleDescription.TextSize = 16.000
  ToggleDescription.TextWrapped = true
  ToggleDescription.TextXAlignment = Enum.TextXAlignment.Left
  ToggleDescription.ZIndex = 2 + zindex

  ToggleButton.Name = "ToggleButton"
  ToggleButton.Parent = ToggleDescription
  ToggleButton.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
  ToggleButton.BorderColor3 = Color3.fromRGB(113, 128, 147)
  ToggleButton.Position = UDim2.new(1.2061069, 0, 0.0769230798, 0)
  ToggleButton.Size = UDim2.new(0, 22, 0, 22)
  ToggleButton.Font = Enum.Font.SourceSans
  ToggleButton.Text = ""
  ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
  ToggleButton.TextSize = 14.000
  ToggleButton.ZIndex = 2 + zindex
  ToggleButton.MouseButton1Up:Connect(function()
   ToggleFiller.Visible = not ToggleFiller.Visible
   callback(ToggleFiller.Visible)
  end)

  ToggleFiller.Name = "ToggleFiller"
  ToggleFiller.Parent = ToggleButton
  ToggleFiller.BackgroundColor3 = Color3.fromRGB(68, 189, 50)
  ToggleFiller.BorderColor3 = Color3.fromRGB(47, 54, 64)
  ToggleFiller.Position = UDim2.new(0, 5, 0, 5)
  ToggleFiller.Size = UDim2.new(0, 12, 0, 12)
  ToggleFiller.Visible = on
  ToggleFiller.ZIndex = 2 + zindex
  pastSliders[winCount] = false
 end
 function functions:Box(text, callback)
  local callback = callback or function() end

  sizes[winCount] = sizes[winCount] + 32
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  listOffset[winCount] = listOffset[winCount] + 32
  local TextBox = Instance.new("TextBox")
  local BoxDescription = Instance.new("TextLabel")
  TextBox.Parent = Window
  TextBox.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
  TextBox.BorderColor3 = Color3.fromRGB(113, 128, 147)
  TextBox.Position = UDim2.new(0, 99, 0, listOffset[winCount])
  TextBox.Size = UDim2.new(0, 95, 0, 26)
  TextBox.Font = Enum.Font.SourceSans
  TextBox.PlaceholderColor3 = Color3.fromRGB(220, 221, 225)
  TextBox.PlaceholderText = "..."
  TextBox.Text = ""
  TextBox.TextColor3 = Color3.fromRGB(245, 246, 250)
  TextBox.TextSize = 16.000
  TextBox.TextStrokeColor3 = Color3.fromRGB(245, 246, 250)
  TextBox.ZIndex = 2 + zindex
  TextBox:GetPropertyChangedSignal('Text'):connect(function()
   callback(TextBox.Text, false)
  end)
  TextBox.FocusLost:Connect(function()
   callback(TextBox.Text, true)
  end)

  BoxDescription.Name = "BoxDescription"
  BoxDescription.Parent = TextBox
  BoxDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  BoxDescription.BackgroundTransparency = 1.000
  BoxDescription.Position = UDim2.new(-0.894736826, 0, 0, 0)
  BoxDescription.Size = UDim2.new(0, 75, 0, 26)
  BoxDescription.Font = Enum.Font.SourceSans
  BoxDescription.Text = text or "Box"
  BoxDescription.TextColor3 = Color3.fromRGB(245, 246, 250)
  BoxDescription.TextSize = 16.000
  BoxDescription.TextXAlignment = Enum.TextXAlignment.Left
  BoxDescription.ZIndex = 2 + zindex
  pastSliders[winCount] = false
 end
 function functions:Slider(text, min, max, default, callback)
  local text = text or "Slider"
  local min = min or 1
  local max = max or 100
  local default = default or max/2
  local callback = callback or function() end
  local offset = 70
  if default > max then
   default = max
  elseif default < min then
   default = min
  end

  if pastSliders[winCount] then
   offset = 60
  end

  sizes[winCount] = sizes[winCount] + offset
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  listOffset[winCount] = listOffset[winCount] + offset

  local Slider = Instance.new("Frame")
  local SliderButton = Instance.new("Frame")
  local Description = Instance.new("TextLabel")
  local SilderFiller = Instance.new("Frame")
  local Current = Instance.new("TextLabel")
  local Min = Instance.new("TextLabel")
  local Max = Instance.new("TextLabel")

  function SliderMovement(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    isdragging = true;
    minitial = input.Position.X;
    initial = SliderButton.Position.X.Offset;
    local delta1 = SliderButton.AbsolutePosition.X - initial
    local con;
    con = stepped:Connect(function()
     if isdragging then
      local xOffset = mouse.X - delta1 - 3
      if xOffset > 175 then
       xOffset = 175
      elseif xOffset< 0 then
       xOffset = 0
      end
      SliderButton.Position = UDim2.new(0, xOffset , -1.33333337, 0);
      SilderFiller.Size = UDim2.new(0, xOffset, 0, 6)
      local value = Lerp(min, max, SliderButton.Position.X.Offset/(Slider.Size.X.Offset-5))
      Current.Text = tostring(math.round(value))
     else
      con:Disconnect();
     end;
    end);
    input.Changed:Connect(function()
     if input.UserInputState == Enum.UserInputState.End then
      isdragging = false;
     end;
    end);
   end;
  end
  function SliderEnd(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    local value = Lerp(min, max, SliderButton.Position.X.Offset/(Slider.Size.X.Offset-5))
    callback(math.round(value))
   end
  end

  Slider.Name = "Slider"
  Slider.Parent = Window
  Slider.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
  Slider.BorderColor3 = Color3.fromRGB(113, 128, 147)
  Slider.Position = UDim2.new(0, 13, 0, listOffset[winCount])
  Slider.Size = UDim2.new(0, 180, 0, 6)
  Slider.ZIndex = 2 + zindex
  Slider.InputBegan:Connect(SliderMovement) 
  Slider.InputEnded:Connect(SliderEnd)      

  SliderButton.Position = UDim2.new(0, (Slider.Size.X.Offset - 5) * ((default - min)/(max-min)), -1.333337, 0)
  SliderButton.Name = "SliderButton"
  SliderButton.Parent = Slider
  SliderButton.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
  SliderButton.BorderColor3 = Color3.fromRGB(113, 128, 147)
  SliderButton.Size = UDim2.new(0, 6, 0, 22)
  SliderButton.ZIndex = 3 + zindex
  SliderButton.InputBegan:Connect(SliderMovement)
  SliderButton.InputEnded:Connect(SliderEnd)    

  Current.Name = "Current"
  Current.Parent = SliderButton
  Current.BackgroundTransparency = 1.000
  Current.Position = UDim2.new(0, 3, 0, 22   )
  Current.Size = UDim2.new(0, 0, 0, 18)
  Current.Font = Enum.Font.SourceSans
  Current.Text = tostring(default)
  Current.TextColor3 = Color3.fromRGB(220, 221, 225)
  Current.TextSize = 14.000  
  Current.ZIndex = 2 + zindex

  Description.Name = "Description"
  Description.Parent = Slider
  Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Description.BackgroundTransparency = 1.000
  Description.Position = UDim2.new(0, -10, 0, -35)
  Description.Size = UDim2.new(0, 200, 0, 21)
  Description.Font = Enum.Font.SourceSans
  Description.Text = text
  Description.TextColor3 = Color3.fromRGB(245, 246, 250)
  Description.TextSize = 16.000
  Description.ZIndex = 2 + zindex

  SilderFiller.Name = "SilderFiller"
  SilderFiller.Parent = Slider
  SilderFiller.BackgroundColor3 = Color3.fromRGB(76, 209, 55)
  SilderFiller.BorderColor3 = Color3.fromRGB(47, 54, 64)
  SilderFiller.Size = UDim2.new(0, (Slider.Size.X.Offset - 5) * ((default - min)/(max-min)), 0, 6)
  SilderFiller.ZIndex = 2 + zindex
  SilderFiller.BorderMode = Enum.BorderMode.Inset

  Min.Name = "Min"
  Min.Parent = Slider
  Min.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Min.BackgroundTransparency = 1.000
  Min.Position = UDim2.new(-0.00555555569, 0, -7.33333397, 0)
  Min.Size = UDim2.new(0, 77, 0, 50)
  Min.Font = Enum.Font.SourceSans
  Min.Text = tostring(min)
  Min.TextColor3 = Color3.fromRGB(220, 221, 225)
  Min.TextSize = 14.000
  Min.TextXAlignment = Enum.TextXAlignment.Left
  Min.ZIndex = 2 + zindex

  Max.Name = "Max"
  Max.Parent = Slider
  Max.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Max.BackgroundTransparency = 1.000
  Max.Position = UDim2.new(0.577777743, 0, -7.33333397, 0)
  Max.Size = UDim2.new(0, 77, 0, 50)
  Max.Font = Enum.Font.SourceSans
  Max.Text = tostring(max)
  Max.TextColor3 = Color3.fromRGB(220, 221, 225)
  Max.TextSize = 14.000
  Max.TextXAlignment = Enum.TextXAlignment.Right
  Max.ZIndex = 2 + zindex
  pastSliders[winCount] = true

  local slider = {}
  function slider:SetValue(value)
   value = math.clamp(value, min, max)
   local xOffset = (value-min)/max * (Slider.Size.X.Offset)
   SliderButton.Position = UDim2.new(0, xOffset , -1.33333337, 0);
   SilderFiller.Size = UDim2.new(0, xOffset, 0, 6)
   Current.Text = tostring(math.round(value))
  end
  return slider
 end
 function functions:Dropdown(text, buttons, callback, selective)
  local text = text or "Dropdown"
  local buttons = buttons or {}
  local callback = callback or function() end

  local Dropdown = Instance.new("TextButton")
  local DownSign = Instance.new("TextLabel")
  local DropdownFrame = Instance.new("ScrollingFrame")

  sizes[winCount] = sizes[winCount] + 32
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  listOffset[winCount] = listOffset[winCount] + 32

  Dropdown.Name = "Dropdown"
  Dropdown.Parent = Window
  Dropdown.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
  Dropdown.BorderColor3 = Color3.fromRGB(113, 128, 147)
  Dropdown.Position = UDim2.new(0, 12, 0, listOffset[winCount])
  Dropdown.Size = UDim2.new(0, 182, 0, 26)
  Dropdown.Selected = true
  Dropdown.Font = Enum.Font.SourceSans
  Dropdown.Text = tostring(text)
  Dropdown.TextColor3 = Color3.fromRGB(245, 246, 250)
  Dropdown.TextSize = 16.000
  Dropdown.TextStrokeTransparency = 123.000
  Dropdown.TextWrapped = true
  Dropdown.ZIndex = 3 + zindex
  Dropdown.MouseButton1Up:Connect(function()
   for i, v in pairs(dropdowns) do
    if v ~= DropdownFrame then
     v.Visible = false
     DownSign.Rotation = 0
    end
   end
   if DropdownFrame.Visible then
    DownSign.Rotation = 0
   else
    DownSign.Rotation = 180
   end
   DropdownFrame.Visible = not DropdownFrame.Visible
  end)

  DownSign.Name = "DownSign"
  DownSign.Parent = Dropdown
  DownSign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  DownSign.BackgroundTransparency = 1.000
  DownSign.Position = UDim2.new(0, 155, 0, 2)
  DownSign.Size = UDim2.new(0, 27, 0, 22)
  DownSign.Font = Enum.Font.SourceSans
  DownSign.Text = "^"
  DownSign.TextColor3 = Color3.fromRGB(220, 221, 225)
  DownSign.TextSize = 20.000
  DownSign.ZIndex = 4 + zindex
  DownSign.TextYAlignment = Enum.TextYAlignment.Bottom

  DropdownFrame.Name = "DropdownFrame"
  DropdownFrame.Parent = Dropdown
  DropdownFrame.Active = true
  DropdownFrame.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
  DropdownFrame.BorderColor3 = Color3.fromRGB(53, 59, 72)
  DropdownFrame.Position = UDim2.new(0, 0, 0, 28)
  DropdownFrame.Size = UDim2.new(0, 182, 0, 0)
  DropdownFrame.Visible = false
  DropdownFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
  DropdownFrame.ScrollBarThickness = 4
  DropdownFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
  DropdownFrame.ZIndex = 5 + zindex
  DropdownFrame.ScrollingDirection = Enum.ScrollingDirection.Y
  DropdownFrame.ScrollBarImageColor3 = Color3.fromRGB(220, 221, 225)
  table.insert(dropdowns, DropdownFrame)
  local dropFunctions = {}
  local canvasSize = 0
  function dropFunctions:Button(name)
   local name = name or ""
   local Button_2 = Instance.new("TextButton")
   Button_2.Name = "Button"
   Button_2.Parent = DropdownFrame
   Button_2.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
   Button_2.BorderColor3 = Color3.fromRGB(113, 128, 147)
   Button_2.Position = UDim2.new(0, 6, 0, canvasSize + 1)
   Button_2.Size = UDim2.new(0, 170, 0, 26)
   Button_2.Selected = true
   Button_2.Font = Enum.Font.SourceSans
   Button_2.TextColor3 = Color3.fromRGB(245, 246, 250)
   Button_2.TextSize = 16.000
   Button_2.TextStrokeTransparency = 123.000
   Button_2.ZIndex = 6 + zindex
   Button_2.Text = name
   Button_2.TextWrapped = true
   canvasSize = canvasSize + 27
   DropdownFrame.CanvasSize = UDim2.new(0, 182, 0, canvasSize + 1)
   if #DropdownFrame:GetChildren() < 8 then
    DropdownFrame.Size = UDim2.new(0, 182, 0, DropdownFrame.Size.Y.Offset + 27)
   end
   Button_2.MouseButton1Up:Connect(function()
    callback(name)
    DropdownFrame.Visible = false
    if selective then
     Dropdown.Text = name
    end
   end)
  end
  function dropFunctions:Remove(name)
   local foundIt
   for i, v in pairs(DropdownFrame:GetChildren()) do
    if foundIt then
     canvasSize = canvasSize - 27
     v.Position = UDim2.new(0, 6, 0, v.Position.Y.Offset - 27)
     DropdownFrame.CanvasSize = UDim2.new(0, 182, 0, canvasSize + 1)
    end
    if v.Text == name then
     foundIt = true
     v:Destroy()
     if #DropdownFrame:GetChildren() < 8 then
      DropdownFrame.Size = UDim2.new(0, 182, 0, DropdownFrame.Size.Y.Offset - 27)
     end
    end
   end
   if not foundIt then
    warn("The button you tried to remove didn't exist!")
   end
  end

  for i,v in pairs(buttons) do
   dropFunctions:Button(v)
  end

  return dropFunctions
 end
 function functions:ColorPicker(name, default, callback)
  local callback = callback or function() end

  local ColorPicker = Instance.new("TextButton")
  local PickerCorner = Instance.new("UICorner")
  local PickerDescription = Instance.new("TextLabel")
  local ColorPickerFrame = Instance.new("Frame")
  local ToggleRGB = Instance.new("TextButton")
  local ToggleFiller_2 = Instance.new("Frame")
  local TextLabel = Instance.new("TextLabel")
  local ClosePicker = Instance.new("TextButton")
  local Canvas = Instance.new("Frame")
  local CanvasGradient = Instance.new("UIGradient")
  local Cursor = Instance.new("ImageLabel")
  local Color = Instance.new("Frame")
  local ColorGradient = Instance.new("UIGradient")
  local ColorSlider = Instance.new("Frame")
  local Title = Instance.new("TextLabel")
  local UICorner = Instance.new("UICorner")
  local ColorCorner = Instance.new("UICorner")
  local BlackOverlay = Instance.new("ImageLabel")

  sizes[winCount] = sizes[winCount] + 32
  Window.Size = UDim2.new(0, 207, 0, sizes[winCount] + 10)

  listOffset[winCount] = listOffset[winCount] + 32

  ColorPicker.Name = "ColorPicker"
  ColorPicker.Parent = Window
  ColorPicker.Position = UDim2.new(0, 137, 0, listOffset[winCount])
  ColorPicker.Size = UDim2.new(0, 57, 0, 26)
  ColorPicker.Font = Enum.Font.SourceSans
  ColorPicker.Text = ""
  ColorPicker.TextColor3 = Color3.fromRGB(0, 0, 0)
  ColorPicker.TextSize = 14.000
  ColorPicker.ZIndex = 2 + zindex
  ColorPicker.MouseButton1Up:Connect(function()
   for i, v in pairs(colorPickers) do
    v.Visible = false
   end
   ColorPickerFrame.Visible = not ColorPickerFrame.Visible
  end)

  PickerCorner.Parent = ColorPicker
  PickerCorner.Name = "PickerCorner"
  PickerCorner.CornerRadius = UDim.new(0,2)

  PickerDescription.Name = "PickerDescription"
  PickerDescription.Parent = ColorPicker
  PickerDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  PickerDescription.BackgroundTransparency = 1.000
  PickerDescription.Position = UDim2.new(-2.15789509, 0, 0, 0)
  PickerDescription.Size = UDim2.new(0, 116, 0, 26)
  PickerDescription.Font = Enum.Font.SourceSans
  PickerDescription.Text = name or "Color picker"
  PickerDescription.TextColor3 = Color3.fromRGB(245, 246, 250)
  PickerDescription.TextSize = 16.000
  PickerDescription.TextXAlignment = Enum.TextXAlignment.Left
  PickerDescription.ZIndex = 2 + zindex

  ColorPickerFrame.Name = "ColorPickerFrame"
  ColorPickerFrame.Parent = ColorPicker
  ColorPickerFrame.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
  ColorPickerFrame.BorderColor3 = Color3.fromRGB(47, 54, 64)
  ColorPickerFrame.Position = UDim2.new(1.40350854, 0, -2.84615374, 0)
  ColorPickerFrame.Size = UDim2.new(0, 158, 0, 155)
  ColorPickerFrame.ZIndex = 3 + zindex
  ColorPickerFrame.Visible = false

  ToggleRGB.Name = "ToggleRGB"
  ToggleRGB.Parent = ColorPickerFrame
  ToggleRGB.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
  ToggleRGB.BorderColor3 = Color3.fromRGB(113, 128, 147)
  ToggleRGB.Position = UDim2.new(0, 125, 0, 127)
  ToggleRGB.Size = UDim2.new(0, 22, 0, 22)
  ToggleRGB.Font = Enum.Font.SourceSans
  ToggleRGB.Text = ""
  ToggleRGB.TextColor3 = Color3.fromRGB(0, 0, 0)
  ToggleRGB.TextSize = 14.000
  ToggleRGB.ZIndex = 4 + zindex

  ToggleFiller_2.Name = "ToggleFiller"
  ToggleFiller_2.Parent = ToggleRGB
  ToggleFiller_2.BackgroundColor3 = Color3.fromRGB(76, 209, 55)
  ToggleFiller_2.BorderColor3 = Color3.fromRGB(47, 54, 64)
  ToggleFiller_2.Position = UDim2.new(0, 5, 0, 5)
  ToggleFiller_2.Size = UDim2.new(0, 12, 0, 12)
  ToggleFiller_2.ZIndex = 4 + zindex
  ToggleFiller_2.Visible = false

  TextLabel.Parent = ToggleRGB
  TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.BackgroundTransparency = 1.000
  TextLabel.Position = UDim2.new(-5.13636351, 0, 0, 0)
  TextLabel.Size = UDim2.new(0, 106, 0, 22)
  TextLabel.Font = Enum.Font.SourceSans
  TextLabel.Text = "Rainbow"
  TextLabel.TextColor3 = Color3.fromRGB(245, 246, 250)
  TextLabel.TextSize = 16.000
  TextLabel.TextXAlignment = Enum.TextXAlignment.Left
  TextLabel.ZIndex = 4 + zindex

  ClosePicker.Name = "ClosePicker"
  ClosePicker.Parent = ColorPickerFrame
  ClosePicker.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
  ClosePicker.BorderColor3 = Color3.fromRGB(47, 54, 64)
  ClosePicker.Position = UDim2.new(0, 132, 0, 5)
  ClosePicker.Size = UDim2.new(0, 21, 0, 21)
  ClosePicker.Font = Enum.Font.SourceSans
  ClosePicker.Text = "X"
  ClosePicker.TextColor3 = Color3.fromRGB(245, 246, 250)
  ClosePicker.TextSize = 18.000
  ClosePicker.ZIndex = 4 + zindex
  ClosePicker.MouseButton1Down:Connect(function()
   ColorPickerFrame.Visible = not ColorPickerFrame.Visible
  end)

  CanvasGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
  CanvasGradient.Name = "CanvasGradient"
  CanvasGradient.Parent = Canvas

  BlackOverlay.Name = "BlackOverlay"
  BlackOverlay.Parent = Canvas
  BlackOverlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  BlackOverlay.BackgroundTransparency = 1.000
  BlackOverlay.Size = UDim2.new(1, 0, 1, 0)
  BlackOverlay.Image = "rbxassetid://5107152095"
  BlackOverlay.ZIndex = 5 + zindex

  UICorner.Parent = Canvas
  UICorner.Name = "UICorner"
  UICorner.CornerRadius = UDim.new(0,2)

  Cursor.Name = "Cursor"
  Cursor.Parent = Canvas
  Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Cursor.BackgroundTransparency = 1.000
  Cursor.Size = UDim2.new(0, 8, 0, 8)
  Cursor.Image = "rbxassetid://5100115962"
  Cursor.ZIndex = 5 + zindex

  local draggingColor = false
  local hue = 0
  local sat = 1
  local brightness = 1

  local con

  ToggleRGB.MouseButton1Down:Connect(function()
   ToggleFiller_2.Visible = not ToggleFiller_2.Visible
   if ToggleFiller_2.Visible then
    con = stepped:Connect(function()
     if ToggleFiller_2.Visible then
      local hue2 = tick() % 5 / 5
      color3 = Color3.fromHSV(hue2, 1, 1)
      callback(color3, true)
      ColorPicker.BackgroundColor3 = color3
     else
      con:Disconnect()
     end
    end)
   end
  end)

  if default and type(default) == "boolean" then
   ToggleFiller_2.Visible = true
   if ToggleFiller_2.Visible then
    con = stepped:Connect(function()
     if ToggleFiller_2.Visible then
      local hue2 = tick() % 5 / 5
      color3 = Color3.fromHSV(hue2, 1, 1)
      callback(color3)
      ColorPicker.BackgroundColor3 = color3
     else
      con:Disconnect()
     end
    end)
   end
  else
   ColorPicker.BackgroundColor3 = default or Color3.fromRGB(0, 168, 255)
  end

  Canvas.Name = "Canvas"
  Canvas.Parent = ColorPickerFrame
  Canvas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Canvas.Position = UDim2.new(0, 5, 0, 34)
  Canvas.Size = UDim2.new(0, 148, 0, 64)
  Canvas.ZIndex = 4 + zindex
  local canvasSize, canvasPosition = Canvas.AbsoluteSize, Canvas.AbsolutePosition
  Canvas.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    local initial = Vector2.new(Cursor.Position.X.Offset, Cursor.Position.Y.Offset)
    local delta = Cursor.AbsolutePosition - initial
    local con;
    local isdragging = true

    con = stepped:Connect(function()
     if isdragging then
      local delta2 = Vector2.new(mouse.X, mouse.Y) - delta
      local x = math.clamp(delta2.X, 2, Canvas.Size.X.Offset - 2)
      local y = math.clamp(delta2.Y, 2, Canvas.Size.Y.Offset - 2)

      sat = 1 - math.clamp((mouse.X - canvasPosition.X) / canvasSize.X, 0, 1)
      brightness = 1 - math.clamp((mouse.Y - canvasPosition.Y) / canvasSize.Y, 0, 1)

      color3 = Color3.fromHSV(hue, sat, brightness)

      Cursor.Position = UDim2.fromOffset(x - 4, y - 4)
      ColorPicker.BackgroundColor3 = color3
      callback(color3)
     else
      con:Disconnect();
     end;
    end);
    input.Changed:Connect(function()
     if input.UserInputState == Enum.UserInputState.End then
      isdragging = false;
     end;
    end);
   end;
  end);

  Color.Name = "Color"
  Color.Parent = ColorPickerFrame
  Color.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Color.Position = UDim2.new(0, 5, 0, 105)
  Color.Size = UDim2.new(0, 148, 0, 14)
  Color.BorderMode = Enum.BorderMode.Inset
  Color.ZIndex = 4 + zindex
  Color.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    draggingColor = true
    local initial2 = ColorSlider.Position.X.Offset;
    local delta1 = ColorSlider.AbsolutePosition.X - initial2
    local con
    con = stepped:Connect(function()
     if draggingColor then
      -- gets the position of the mouse on the color thing and divides it by its size, whcih will give u the hue
      local colorPosition, colorSize = Color.AbsolutePosition, Color.AbsoluteSize
      hue = 1 - math.clamp(1 - ((mouse.X - colorPosition.X) / colorSize.X), 0, 1)
      CanvasGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromHSV(hue, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}

      local xOffset = math.clamp(mouse.X - delta1, 0, Color.Size.X.Offset - 3)
      ColorSlider.Position = UDim2.new(0, xOffset, 0, 0);

      color3 = Color3.fromHSV(hue, sat, brightness)
      ColorPicker.BackgroundColor3  = color3
      callback(color3)
     else
      con:Disconnect()
     end
    end)
   end
  end)
  Color.InputEnded:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    draggingColor = false
   end
  end)
  ColorGradient.Color = ColorSequence.new({
   ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), 
   ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)), 
   ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), 
   ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)), 
   ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)), 
   ColorSequenceKeypoint.new(0.82, Color3.fromRGB(255, 0, 255)), 
   ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
  })
  ColorGradient.Name = "ColorGradient"
  ColorGradient.Parent = Color

  ColorCorner.Parent = Color
  ColorCorner.Name = "ColorCorner"
  ColorCorner.CornerRadius = UDim.new(0,2)

  ColorSlider.Name = "ColorSlider"
  ColorSlider.Parent = Color
  ColorSlider.BackgroundColor3 = Color3.fromRGB(245, 246, 250)
  ColorSlider.BorderColor3 = Color3.fromRGB(245, 246, 250)
  ColorSlider.Size = UDim2.new(0, 2, 0, 14)
  ColorSlider.ZIndex = 5 + zindex

  Title.Name = "Title"
  Title.Parent = ColorPickerFrame
  Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Title.BackgroundTransparency = 1.000
  Title.Position = UDim2.new(0, 10, 0, 5)
  Title.Size = UDim2.new(0, 118, 0, 21)
  Title.Font = Enum.Font.SourceSans
  Title.Text = name or "Color picker"
  Title.TextColor3 = Color3.fromRGB(245, 246, 250)
  Title.TextSize = 16.000
  Title.TextXAlignment = Enum.TextXAlignment.Left
  Title.ZIndex = 4 + zindex

  table.insert(colorPickers, ColorPickerFrame)

  local colorFuncs = {}
  function colorFuncs:UpdateColorPicker(color)
   if type(color) == "userdata" then
    ToggleFiller_2.Visible = false
    ColorPicker.BackgroundColor3 = color
   elseif color and type(color) == "boolean" and not con then
    ToggleFiller_2.Visible = true
    con = stepped:Connect(function()
     if ToggleFiller_2.Visible then
      local hue2 = tick() % 5 / 5
      color3 = Color3.fromHSV(hue2, 1, 1)
      callback(color3)
      ColorPicker.BackgroundColor3 = color3
     else
      con:Disconnect()
     end
    end)
   end
  end
  return colorFuncs
 end

 return functions
end

for _, tbl in ipairs(getgc(true)) do
 if typeof(tbl) == "table" and rawget(tbl, "Remote") then
  tbl.Remote.Name = tbl.Name
 end
end
local local_player = game:GetService("Players").LocalPlayer
local kick_hook; kick_hook = hookmetamethod(game, "__namecall", newcclosure(function(...)
 local args = {...}
 local self = args[1]
 local namecall_method = getnamecallmethod()
 if not checkcaller() and self == local_player and namecall_method == "Kick" then
  return
 end
 return kick_hook(...)
end))

local Movement = library:Window("Movement")
local Melee = library:Window("Melee")
local Credits = library:Window("Credits")

local function keydown(key)
 return game:GetService("UserInputService"):IsKeyDown(key)
end

local function GetClosest()
 local Character = game.Players.LocalPlayer.Character
 local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
 if not (Character or HumanoidRootPart) then return end

 local TargetDistance = math.huge
 local Target

 for i,v in ipairs(game.Players:GetPlayers()) do
  if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
   local TargetHRP = v.Character.HumanoidRootPart
   local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TargetHRP.Position).magnitude
   if mag < TargetDistance then
    TargetDistance = mag
    Target = v
   end
  end
 end

 return Target
end


local function SecureSetProperty(Instance,Property,Value)
    for i,v in pairs(getconnections(Instance:GetPropertyChangedSignal(Property))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(Instance.Changed)) do
        v:Disable()
    end
    if not Instance:FindFirstChild(Property) then
        Instance[Property] = Value
        return Instance:GetPropertyChangedSignal(Property):Connect(function()
            Instance[Property] = Value
        end)
    end
end

local function SpoofProperty(Instance,Property,Value)
    local OldIndex
    OldIndex = hookmetamethod(game, "__index", newcclosure(function(Self, Key)
        if not checkcaller() and Self == Instance and Key == Property then
            return Value
        end
        return OldIndex(Self, Key)
    end))
end

local Flying = false
Movement:Toggle("Fly", false, function(bool)
 Flying = bool
 if bool == false then return end
 while Flying do
  local move = game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 16 * 4
  if keydown(Enum.KeyCode.Space) then
   game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,55,0) + move
  elseif keydown(Enum.KeyCode.C) then
   game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,-55,0) + move
  else
   game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,2,0) + move
  end
  game:GetService("RunService").Heartbeat:wait()
 end
end)

local Reaching = false
Melee:Toggle("Reach", false, function(bool)
 Reaching = bool
 if bool == false then return end
 local character = game.Players.LocalPlayer.Character
 local torso = character.Torso
 local rightarm = character["Right Arm"]
 local rightshoulder = torso["Right Shoulder"]
 if rightshoulder and rightshoulder.Enabled == true then
  local rightshoulderclone = rightshoulder:Clone()
  rightshoulderclone.Enabled = false
  rightshoulder:Destroy()
  rightshoulderclone.Parent = torso
 end

 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
  if v:IsA("BasePart") then
   v.Massless = true
  end
 end
 if rightarm:FindFirstChild("RagdollBallSocket") then
  rightarm.RagdollBallSocket.Enabled = false
 end
 while Reaching do
  sethiddenproperty(rightarm,"AssemblyLinearVelocity",Vector3.new(100,100,100))
  rightarm.Velocity = Vector3.new(100,100,100)
  if torso:FindFirstChild("Right Shoulder") then
   local rightarm = character["Right Arm"]
   local rightshoulder = torso["Right Shoulder"]

   local rightshoulderclone = rightshoulder:Clone()
   rightshoulderclone.Enabled = false
   rightshoulder:Destroy()
   rightshoulderclone.Parent = torso
  end

  local target = GetClosest()
  if target.Character:FindFirstChild("Head") and (character.Head.Position - target.Character.Head.Position).magnitude < 100 then
   rightarm.CFrame = GetClosest().Character.Head.CFrame * CFrame.new(math.random(-0,0),0,0)
  elseif character:FindFirstChild("Head") then
   rightarm.CFrame = character.Head.CFrame * CFrame.new(math.random(-0,0),0,0)
  end
  game:GetService("RunService").Heartbeat:wait()
 end
end)

local Killaura = false
Melee:Toggle("Kill Aura",false,function(bool)
 Killaura = bool
 if bool == false then return end
 while Killaura do
  for i = 1,3 do
   local target = GetClosest().Character
   local character = game.Players.LocalPlayer.Character
   if character:FindFirstChildOfClass("Tool") and character:FindFirstChildOfClass("Tool"):FindFirstChild("Hitboxes") and target:FindFirstChild("Torso") and (character:FindFirstChildOfClass("Tool").Hitboxes.Hitbox.Position - target.Torso.Position).magnitude <= 10 and target.SemiTransparentShield.Transparency == 1 then
    local tool = character:FindFirstChildOfClass("Tool")
    local targetpart = target.Torso
    local hitbox = tool.Hitboxes.Hitbox
    local pos = tool.Hitboxes.Hitbox.Position --character.HumanoidRootPart.Position
    game:GetService("ReplicatedStorage").Communication.Events.MeleeSwing:FireServer(tool, i)
    game:GetService("ReplicatedStorage").Communication.Events.MeleeDamage:FireServer(tool, targetpart, hitbox, pos, CFrame.new(), Vector3.new(), Vector3.new())
    wait()
   end
  end
  wait(.4)
 end
end)

local RagdollFunction
local RagdollTable
for _, tbl in ipairs(getgc(true)) do
 if typeof(tbl) == "table" and rawget(tbl, "toggleRagdoll") then
  RagdollFunction = tbl.toggleRagdoll
  RagdollTable = tbl
 end
end

Movement:Toggle("Anti-Ragdoll",false,function(bool)
 if bool == true then
  RagdollTable.toggleRagdoll = function() end
 elseif bool == false then
  RagdollTable.toggleRagdoll = RagdollFunction
 end
end)

local WalkSpeed
local WalkSpeedValue = 16
Movement:Toggle("WalkSpeed", false, function(bool)
 local character = game.Players.LocalPlayer.Character
 if bool then
  local hum = game.Players.LocalPlayer.Character.Humanoid
  SpoofProperty(hum,"WalkSpeed",WalkSpeedValue)
  for i,v in pairs(getconnections(hum:GetPropertyChangedSignal("WalkSpeed"))) do
   v:Disable()
  end
  for i,v in pairs(getconnections(hum.Changed)) do
   v:Disable()
  end
  hum.WalkSpeed = WalkSpeedValue
  WalkSpeed = hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
   hum.WalkSpeed = WalkSpeedValue
  end)
 else
  WalkSpeed:Disconnect()
 end
end)

Movement:Slider("WalkSpeed Value",16,150,16, function(value)
   WalkSpeedValue = value
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeedValue
end)

local JumpPower
local JumpPowerValue = 16
Movement:Toggle("JumpPower", false, function(bool)
 local character = game.Players.LocalPlayer.Character
 if bool then
  local hum = game.Players.LocalPlayer.Character.Humanoid
  SpoofProperty(hum,"JumpPower",JumpPowerValue)
  for i,v in pairs(getconnections(hum:GetPropertyChangedSignal("JumpPower"))) do
   v:Disable()
  end
  for i,v in pairs(getconnections(hum.Changed)) do
   v:Disable()
  end
  hum.JumpPower = JumpPowerValue
  WalkSpeed = hum:GetPropertyChangedSignal("JumpPower"):Connect(function()
   hum.JumpPower = JumpPowerValue
  end)
 else
  JumpPower:Disconnect()
 end
end)

Movement:Slider("JumpPower Value",16,150,16, function(value)
   JumpPowerValue = value
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPowerValue
end)

Credits:Label("crosszay1 - Scripting")
Credits:Label("doge - doge")
Credits:Label("thanks for using my script :)")
Credits:Label("Join the server for updates")
Credits:Button("Copy discord invite to keyboard", function()
 if setclipboard then
  setclipboard("https://discord.gg/dXuvZ6y7Ha")
 end
end)