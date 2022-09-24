version = "2.2.5"

if not getgenv().Start then
 getgenv().Start = tick()
end

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

local assets = {
 6183930112,
 6071575925,
 6071579801,
 6073763717,
 3570695787,
 5941353943,
 4155801252,
 2454009026,
 5553946656,
 4155801252,
 4918373417,
 3570695787,
 2592362371
}
local cprovider = Game:GetService"ContentProvider"
for _, v in next, assets do
 cprovider:Preload("rbxassetid://" .. v)
end

repeat
 wait()
until game:IsLoaded()

-- if you're just looking to get the library for whatever reason, just copy everything from below till you see LIBRARY END

--LIBRARY START
--Services
getgenv().runService = game:GetService"RunService"
getgenv().textService = game:GetService"TextService"
getgenv().inputService = game:GetService"UserInputService"
getgenv().tweenService = game:GetService"TweenService"

if getgenv().library then
 getgenv().library:Unload()
end

local library = {
 design = getgenv().design == "kali" and "kali" or "OutliersHub",
 tabs = {},
 draggable = true,
 flags = {},
 title = "OutliersHub |" .. " " .. version,
 open = false,
 mousestate = inputService.MouseIconEnabled,
 popup = nil,
 instances = {},
 connections = {},
 options = {},
 notifications = {},
 tabSize = 0,
 theme = {},
 foldername = "OutliersHub",
 fileext = ".json"
}
getgenv().library = library

--Locals
local dragging, dragInput, dragStart, startPos, dragObject

local blacklistedKeys = { --add or remove keys if you find the need to
 Enum.KeyCode.Unknown,
 Enum.KeyCode.W,
 Enum.KeyCode.A,
 Enum.KeyCode.S,
 Enum.KeyCode.D,
 Enum.KeyCode.Slash,
 Enum.KeyCode.Tab,
 Enum.KeyCode.Escape
}
local whitelistedMouseinputs = { --add or remove mouse inputs if you find the need to
 Enum.UserInputType.MouseButton1,
 Enum.UserInputType.MouseButton2,
 Enum.UserInputType.MouseButton3
}

--Functions
library.round = function(num, bracket)
 if typeof(num) == "Vector2" then
  return Vector2.new(library.round(num.X), library.round(num.Y))
 elseif typeof(num) == "Vector3" then
  return Vector3.new(library.round(num.X), library.round(num.Y), library.round(num.Z))
 elseif typeof(num) == "Color3" then
  return library.round(num.r * 255), library.round(num.g * 255), library.round(num.b * 255)
 else
  return num - num % (bracket or 1);
 end
end

--From: https://devforum.roblox.com/t/how-to-create-a-simple-rainbow-effect-using-tweenService/221849/2
local chromaColor
spawn(function()
 while library and wait() do
  chromaColor = Color3.fromHSV(tick() % 6 / 6, 1, 1)
 end
end)

function library:Create(class, properties)
 properties = properties or {}
 if not class then
  return
 end
 local a = class == "Square" or class == "Line" or class == "Text" or class == "Quad" or class == "Circle" or class == "Triangle"
 local t = a and Drawing or Instance
 local inst = t.new(class)
 for property, value in next, properties do
  inst[property] = value
 end
 table.insert(self.instances, {
  object = inst,
  method = a
 })
 return inst
end

function library:AddConnection(connection, name, callback)
 callback = type(name) == "function" and name or callback
 connection = connection:connect(callback)
 if name ~= callback then
  self.connections[name] = connection
 else
  table.insert(self.connections, connection)
 end
 return connection
end

function library:Unload()
 inputService.MouseIconEnabled = self.mousestate
 for _, c in next, self.connections do
  c:Disconnect()
 end
 for _, i in next, self.instances do
  if i.method then
   pcall(function()
    i.object:Remove()
   end)
  else
   i.object:Destroy()
  end
 end
 for _, o in next, self.options do
  if o.type == "toggle" then
   coroutine.resume(coroutine.create(o.SetState, o))
  end
 end
 library = nil
 getgenv().library = nil
end

function library:LoadConfig(config)
 if table.find(self:GetConfigs(), config) then
  local Read, Config = pcall(function()
   return game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. config .. self.fileext))
  end)
  Config = Read and Config or {}
  for _, option in next, self.options do
   if option.hasInit then
    if option.type ~= "button" and option.flag and not option.skipflag then
     if option.type == "toggle" then
      spawn(function()
       option:SetState(Config[option.flag] == 1)
      end)
     elseif option.type == "color" then
      if Config[option.flag] then
       spawn(function()
        option:SetColor(Config[option.flag])
       end)
       if option.trans then
        spawn(function()
         option:SetTrans(Config[option.flag .. " Transparency"])
        end)
       end
      end
     elseif option.type == "bind" then
      spawn(function()
       option:SetKey(Config[option.flag])
      end)
     else
      spawn(function()
       option:SetValue(Config[option.flag])
      end)
     end
    end
   end
  end
 end
end

function library:SaveConfig(config)
 local Config = {}
 if table.find(self:GetConfigs(), config) then
  Config = game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. config .. self.fileext))
 end
 for _, option in next, self.options do
  if option.type ~= "button" and option.flag and not option.skipflag then
   if option.type == "toggle" then
    Config[option.flag] = option.state and 1 or 0
   elseif option.type == "color" then
    Config[option.flag] = {
     option.color.r,
     option.color.g,
     option.color.b
    }
    if option.trans then
     Config[option.flag .. " Transparency"] = option.trans
    end
   elseif option.type == "bind" then
    if option.key ~= "none" then
     Config[option.flag] = option.key
    end
   elseif option.type == "list" then
    Config[option.flag] = option.value
   else
    Config[option.flag] = option.value
   end
  end
 end
 writefile(self.foldername .. "/" .. config .. self.fileext, game:GetService"HttpService":JSONEncode(Config))
end

function library:GetConfigs()
 if not isfolder(self.foldername) then
  makefolder(self.foldername)
  return {}
 end
 local files = {}
 local a = 0
 for i, v in next, listfiles(self.foldername) do
  if v:sub(# v - # self.fileext + 1, # v) == self.fileext then
   a = a + 1
   v = v:gsub(self.foldername .. "\\", "")
   v = v:gsub(self.fileext, "")
   table.insert(files, a, v)
  end
 end
 return files
end

library.createLabel = function(option, parent)
 option.main = library:Create("TextLabel", {
  LayoutOrder = option.position,
  Position = UDim2.new(0, 6, 0, 0),
  Size = UDim2.new(1, - 12, 0, 24),
  BackgroundTransparency = 1,
  TextSize = 15,
  Font = Enum.Font.Code,
  TextColor3 = Color3.new(1, 1, 1),
  TextXAlignment = Enum.TextXAlignment.Left,
  TextYAlignment = Enum.TextYAlignment.Top,
  TextWrapped = true,
  Parent = parent
 })

 setmetatable(option, {
  __newindex = function(t, i, v)
   if i == "Text" then
    option.main.Text = tostring(v)
    option.main.Size = UDim2.new(1, - 12, 0, textService:GetTextSize(option.main.Text, 15, Enum.Font.Code, Vector2.new(option.main.AbsoluteSize.X, 9e9)).Y + 6)
   end
  end
 })
 option.Text = option.text
end

library.createDivider = function(option, parent)
 option.main = library:Create("Frame", {
  LayoutOrder = option.position,
  Size = UDim2.new(1, 0, 0, 18),
  BackgroundTransparency = 1,
  Parent = parent
 })

 library:Create("Frame", {
  AnchorPoint = Vector2.new(0.5, 0.5),
  Position = UDim2.new(0.5, 0, 0.5, 0),
  Size = UDim2.new(1, - 24, 0, 1),
  BackgroundColor3 = Color3.fromRGB(60, 60, 60),
  BorderColor3 = Color3.new(),
  Parent = option.main
 })

 option.title = library:Create("TextLabel", {
  AnchorPoint = Vector2.new(0.5, 0.5),
  Position = UDim2.new(0.5, 0, 0.5, 0),
  BackgroundColor3 = Color3.fromRGB(30, 30, 30),
  BorderSizePixel = 0,
  TextColor3 = Color3.new(1, 1, 1),
  TextSize = 15,
  Font = Enum.Font.Code,
  TextXAlignment = Enum.TextXAlignment.Center,
  Parent = option.main
 })

 setmetatable(option, {
  __newindex = function(t, i, v)
   if i == "Text" then
    if v then
     option.title.Text = tostring(v)
     option.title.Size = UDim2.new(0, textService:GetTextSize(option.title.Text, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 12, 0, 20)
     option.main.Size = UDim2.new(1, 0, 0, 18)
    else
     option.title.Text = ""
     option.title.Size = UDim2.new()
     option.main.Size = UDim2.new(1, 0, 0, 6)
    end
   end
  end
 })
 option.Text = option.text
end

library.createToggle = function(option, parent)
 option.hasInit = true

 option.main = library:Create("Frame", {
  LayoutOrder = option.position,
  Size = UDim2.new(1, 0, 0, 20),
  BackgroundTransparency = 1,
  Parent = parent
 })

 local tickbox
 local tickboxOverlay
 if option.style then
  tickbox = library:Create("ImageLabel", {
   Position = UDim2.new(0, 6, 0, 4),
   Size = UDim2.new(0, 12, 0, 12),
   BackgroundTransparency = 1,
   Image = "rbxassetid://3570695787",
   ImageColor3 = Color3.new(),
   Parent = option.main
  })

  library:Create("ImageLabel", {
   AnchorPoint = Vector2.new(0.5, 0.5),
   Position = UDim2.new(0.5, 0, 0.5, 0),
   Size = UDim2.new(1, - 2, 1, - 2),
   BackgroundTransparency = 1,
   Image = "rbxassetid://3570695787",
   ImageColor3 = Color3.fromRGB(60, 60, 60),
   Parent = tickbox
  })

  library:Create("ImageLabel", {
   AnchorPoint = Vector2.new(0.5, 0.5),
   Position = UDim2.new(0.5, 0, 0.5, 0),
   Size = UDim2.new(1, - 6, 1, - 6),
   BackgroundTransparency = 1,
   Image = "rbxassetid://3570695787",
   ImageColor3 = Color3.fromRGB(40, 40, 40),
   Parent = tickbox
  })

  tickboxOverlay = library:Create("ImageLabel", {
   AnchorPoint = Vector2.new(0.5, 0.5),
   Position = UDim2.new(0.5, 0, 0.5, 0),
   Size = UDim2.new(1, - 6, 1, - 6),
   BackgroundTransparency = 1,
   Image = "rbxassetid://3570695787",
   ImageColor3 = library.flags["Menu Accent Color"],
   Visible = option.state,
   Parent = tickbox
  })

  library:Create("ImageLabel", {
   AnchorPoint = Vector2.new(0.5, 0.5),
   Position = UDim2.new(0.5, 0, 0.5, 0),
   Size = UDim2.new(1, 0, 1, 0),
   BackgroundTransparency = 1,
   Image = "rbxassetid://5941353943",
   ImageTransparency = 0.6,
   Parent = tickbox
  })

  table.insert(library.theme, tickboxOverlay)
 else
  tickbox = library:Create("Frame", {
   Position = UDim2.new(0, 6, 0, 4),
   Size = UDim2.new(0, 12, 0, 12),
   BackgroundColor3 = library.flags["Menu Accent Color"],
   BorderColor3 = Color3.new(),
   Parent = option.main
  })

  tickboxOverlay = library:Create("ImageLabel", {
   Size = UDim2.new(1, 0, 1, 0),
   BackgroundTransparency = option.state and 1 or 0,
   BackgroundColor3 = Color3.fromRGB(50, 50, 50),
   BorderColor3 = Color3.new(),
   Image = "rbxassetid://4155801252",
   ImageTransparency = 0.6,
   ImageColor3 = Color3.new(),
   Parent = tickbox
  })

  library:Create("ImageLabel", {
   Size = UDim2.new(1, 0, 1, 0),
   BackgroundTransparency = 1,
   Image = "rbxassetid://2592362371",
   ImageColor3 = Color3.fromRGB(60, 60, 60),
   ScaleType = Enum.ScaleType.Slice,
   SliceCenter = Rect.new(2, 2, 62, 62),
   Parent = tickbox
  })

  library:Create("ImageLabel", {
   Size = UDim2.new(1, - 2, 1, - 2),
   Position = UDim2.new(0, 1, 0, 1),
   BackgroundTransparency = 1,
   Image = "rbxassetid://2592362371",
   ImageColor3 = Color3.new(),
   ScaleType = Enum.ScaleType.Slice,
   SliceCenter = Rect.new(2, 2, 62, 62),
   Parent = tickbox
  })

  table.insert(library.theme, tickbox)
 end

 option.interest = library:Create("Frame", {
  Position = UDim2.new(0, 0, 0, 0),
  Size = UDim2.new(1, 0, 0, 20),
  BackgroundTransparency = 1,
  Parent = option.main
 })

 option.title = library:Create("TextLabel", {
  Position = UDim2.new(0, 24, 0, 0),
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Text = option.text,
  TextColor3 = option.state and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(180, 180, 180),
  TextSize = 15,
  Font = Enum.Font.Code,
  TextXAlignment = Enum.TextXAlignment.Left,
  Parent = option.interest
 })

 option.interest.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   option:SetState(not option.state)
  end
  if input.UserInputType.Name == "MouseMovement" then
   if not library.warning and not library.slider then
    if option.style then
     tickbox.ImageColor3 = library.flags["Menu Accent Color"]
     --tweenService:Create(tickbox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = library.flags["Menu Accent Color"]}):Play()
    else
     tickbox.BorderColor3 = library.flags["Menu Accent Color"]
     tickboxOverlay.BorderColor3 = library.flags["Menu Accent Color"]
     --tweenService:Create(tickbox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = library.flags["Menu Accent Color"]}):Play()
     --tweenService:Create(tickboxOverlay, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = library.flags["Menu Accent Color"]}):Play()
    end
   end
   if option.tip then
    library.tooltip.Text = option.tip
    library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
   end
  end
 end)

 option.interest.InputChanged:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
   end
  end
 end)

 option.interest.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.style then
    tickbox.ImageColor3 = Color3.new()
    --tweenService:Create(tickbox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageColor3 = Color3.new()}):Play()
   else
    tickbox.BorderColor3 = Color3.new()
    tickboxOverlay.BorderColor3 = Color3.new()
    --tweenService:Create(tickbox, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = Color3.new()}):Play()
    --tweenService:Create(tickboxOverlay, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = Color3.new()}):Play()
   end
   library.tooltip.Position = UDim2.new(2)
  end
 end)

 function option:SetState(state, nocallback)
  state = typeof(state) == "boolean" and state
  state = state or false
  library.flags[self.flag] = state
  self.state = state
  option.title.TextColor3 = state and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(160, 160, 160)
  if option.style then
   tickboxOverlay.Visible = state
  else
   tickboxOverlay.BackgroundTransparency = state and 1 or 0
  end
  if not nocallback then
   self.callback(state)
  end
 end

 if option.state ~= nil then
  delay(1, function()
   if library then
    option.callback(option.state)
   end
  end)
 end

 setmetatable(option, {
  __newindex = function(t, i, v)
   if i == "Text" then
    option.title.Text = tostring(v)
   end
  end
 })
end

library.createButton = function(option, parent)
 option.hasInit = true

 option.main = library:Create("Frame", {
  LayoutOrder = option.position,
  Size = UDim2.new(1, 0, 0, 28),
  BackgroundTransparency = 1,
  Parent = parent
 })

 option.title = library:Create("TextLabel", {
  AnchorPoint = Vector2.new(0.5, 1),
  Position = UDim2.new(0.5, 0, 1, - 5),
  Size = UDim2.new(1, - 12, 0, 20),
  BackgroundColor3 = Color3.fromRGB(50, 50, 50),
  BorderColor3 = Color3.new(),
  Text = option.text,
  TextColor3 = Color3.new(1, 1, 1),
  TextSize = 15,
  Font = Enum.Font.Code,
  Parent = option.main
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.title
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.title
 })

 library:Create("UIGradient", {
  Color = ColorSequence.new({
   ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 180)),
   ColorSequenceKeypoint.new(1, Color3.fromRGB(253, 253, 253)),
  }),
  Rotation = - 90,
  Parent = option.title
 })

 option.title.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   option.callback()
   if library then
    library.flags[option.flag] = true
   end
   if option.tip then
    library.tooltip.Text = option.tip
    library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
   end
  end
  if input.UserInputType.Name == "MouseMovement" then
   if not library.warning and not library.slider then
    option.title.BorderColor3 = library.flags["Menu Accent Color"]
   end
  end
 end)

 option.title.InputChanged:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
   end
  end
 end)

 option.title.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   option.title.BorderColor3 = Color3.new()
   library.tooltip.Position = UDim2.new(2)
  end
 end)
end

library.createBind = function(option, parent)
 option.hasInit = true

 local binding
 local holding
 local Loop

 if option.sub then
  option.main = option:getMain()
 else
  option.main = option.main or library:Create("Frame", {
   LayoutOrder = option.position,
   Size = UDim2.new(1, 0, 0, 20),
   BackgroundTransparency = 1,
   Parent = parent
  })

  library:Create("TextLabel", {
   Position = UDim2.new(0, 6, 0, 0),
   Size = UDim2.new(1, - 12, 1, 0),
   BackgroundTransparency = 1,
   Text = option.text,
   TextSize = 15,
   Font = Enum.Font.Code,
   TextColor3 = Color3.fromRGB(210, 210, 210),
   TextXAlignment = Enum.TextXAlignment.Left,
   Parent = option.main
  })
 end

 local bindinput = library:Create(option.sub and "TextButton" or "TextLabel", {
  Position = UDim2.new(1, - 6 - (option.subpos or 0), 0, option.sub and 2 or 3),
  SizeConstraint = Enum.SizeConstraint.RelativeYY,
  BackgroundColor3 = Color3.fromRGB(30, 30, 30),
  BorderSizePixel = 0,
  TextSize = 15,
  Font = Enum.Font.Code,
  TextColor3 = Color3.fromRGB(160, 160, 160),
  TextXAlignment = Enum.TextXAlignment.Right,
  Parent = option.main
 })

 if option.sub then
  bindinput.AutoButtonColor = false
 end

 local interest = option.sub and bindinput or option.main
 local inContact
 interest.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   binding = true
   bindinput.Text = "[...]"
   bindinput.Size = UDim2.new(0, - textService:GetTextSize(bindinput.Text, 16, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 16)
   bindinput.TextColor3 = library.flags["Menu Accent Color"]
  end
 end)

 library:AddConnection(inputService.InputBegan, function(input)
  if inputService:GetFocusedTextBox() then
   return
  end
  if binding then
   local key = (table.find(whitelistedMouseinputs, input.UserInputType) and not option.nomouse) and input.UserInputType
   option:SetKey(key or (not table.find(blacklistedKeys, input.KeyCode)) and input.KeyCode)
  else
   if (input.KeyCode.Name == option.key or input.UserInputType.Name == option.key) and not binding then
    if option.mode == "toggle" then
     library.flags[option.flag] = not library.flags[option.flag]
     option.callback(library.flags[option.flag], 0)
    else
     library.flags[option.flag] = true
     if Loop then
      Loop:Disconnect()
      option.callback(true, 0)
     end
     Loop = library:AddConnection(runService.RenderStepped, function(step)
      if not inputService:GetFocusedTextBox() then
       option.callback(nil, step)
      end
     end)
    end
   end
  end
 end)

 library:AddConnection(inputService.InputEnded, function(input)
  if option.key ~= "none" then
   if input.KeyCode.Name == option.key or input.UserInputType.Name == option.key then
    if Loop then
     Loop:Disconnect()
     library.flags[option.flag] = false
     option.callback(true, 0)
    end
   end
  end
 end)

 function option:SetKey(key)
  binding = false
  bindinput.TextColor3 = Color3.fromRGB(160, 160, 160)
  if Loop then
   Loop:Disconnect()
   library.flags[option.flag] = false
   option.callback(true, 0)
  end
  self.key = (key and key.Name) or key or self.key
  if self.key == "Backspace" then
   self.key = "none"
   bindinput.Text = "[NONE]"
  else
   local a = self.key
   if self.key:match"Mouse" then
    a = self.key:gsub("Button", ""):gsub("Mouse", "M")
   elseif self.key:match"Shift" or self.key:match"Alt" or self.key:match"Control" then
    a = self.key:gsub("Left", "L"):gsub("Right", "R")
   end
   bindinput.Text = "[" .. a:gsub("Control", "CTRL"):upper() .. "]"
  end
  bindinput.Size = UDim2.new(0, - textService:GetTextSize(bindinput.Text, 16, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 16)
 end
 option:SetKey()
end

library.createSlider = function(option, parent)
 option.hasInit = true

 if option.sub then
  option.main = option:getMain()
  option.main.Size = UDim2.new(1, 0, 0, 42)
 else
  option.main = library:Create("Frame", {
   LayoutOrder = option.position,
   Size = UDim2.new(1, 0, 0, option.textpos and 24 or 40),
   BackgroundTransparency = 1,
   Parent = parent
  })
 end

 option.slider = library:Create("Frame", {
  Position = UDim2.new(0, 6, 0, (option.sub and 22 or option.textpos and 4 or 20)),
  Size = UDim2.new(1, - 12, 0, 16),
  BackgroundColor3 = Color3.fromRGB(50, 50, 50),
  BorderColor3 = Color3.new(),
  Parent = option.main
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2454009026",
  ImageColor3 = Color3.new(),
  ImageTransparency = 0.8,
  Parent = option.slider
 })

 option.fill = library:Create("Frame", {
  BackgroundColor3 = library.flags["Menu Accent Color"],
  BorderSizePixel = 0,
  Parent = option.slider
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.slider
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.slider
 })

 option.title = library:Create("TextBox", {
  Position = UDim2.new((option.sub or option.textpos) and 0.5 or 0, (option.sub or option.textpos) and 0 or 6, 0, 0),
  Size = UDim2.new(0, 0, 0, (option.sub or option.textpos) and 14 or 18),
  BackgroundTransparency = 1,
  Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix,
  TextSize = (option.sub or option.textpos) and 14 or 15,
  Font = Enum.Font.Code,
  TextColor3 = Color3.fromRGB(210, 210, 210),
  TextXAlignment = Enum.TextXAlignment[(option.sub or option.textpos) and "Center" or "Left"],
  Parent = (option.sub or option.textpos) and option.slider or option.main
 })
 table.insert(library.theme, option.fill)

 library:Create("UIGradient", {
  Color = ColorSequence.new({
   ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 115, 115)),
   ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
  }),
  Rotation = - 90,
  Parent = option.fill
 })

 if option.min >= 0 then
  option.fill.Size = UDim2.new((option.value - option.min) / (option.max - option.min), 0, 1, 0)
 else
  option.fill.Position = UDim2.new((0 - option.min) / (option.max - option.min), 0, 0, 0)
  option.fill.Size = UDim2.new(option.value / (option.max - option.min), 0, 1, 0)
 end

 local manualInput
 option.title.Focused:connect(function()
  if not manualInput then
   option.title:ReleaseFocus()
   option.title.Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix
  end
 end)

 option.title.FocusLost:connect(function()
  option.slider.BorderColor3 = Color3.new()
  if manualInput then
   if tonumber(option.title.Text) then
    option:SetValue(tonumber(option.title.Text))
   else
    option.title.Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix
   end
  end
  manualInput = false
 end)

 local interest = (option.sub or option.textpos) and option.slider or option.main
 interest.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   if inputService:IsKeyDown(Enum.KeyCode.LeftControl) or inputService:IsKeyDown(Enum.KeyCode.RightControl) then
    manualInput = true
    option.title:CaptureFocus()
   else
    library.slider = option
    option.slider.BorderColor3 = library.flags["Menu Accent Color"]
    option:SetValue(option.min + ((input.Position.X - option.slider.AbsolutePosition.X) / option.slider.AbsoluteSize.X) * (option.max - option.min))
   end
  end
  if input.UserInputType.Name == "MouseMovement" then
   if not library.warning and not library.slider then
    option.slider.BorderColor3 = library.flags["Menu Accent Color"]
   end
   if option.tip then
    library.tooltip.Text = option.tip
    library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
   end
  end
 end)

 interest.InputChanged:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
   end
  end
 end)

 interest.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   library.tooltip.Position = UDim2.new(2)
   if option ~= library.slider then
    option.slider.BorderColor3 = Color3.new()
    --option.fill.BorderColor3 = Color3.new()
   end
  end
 end)

 function option:SetValue(value, nocallback)
  if typeof(value) ~= "number" then
   value = 0
  end
  value = library.round(value, option.float)
  value = math.clamp(value, self.min, self.max)
  if syn then
   if self.min >= 0 then
    option.fill:TweenSize(UDim2.new((value - self.min) / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.05, true)
   else
    option.fill:TweenPosition(UDim2.new((0 - self.min) / (self.max - self.min), 0, 0, 0), "Out", "Quad", 0.05, true)
    option.fill:TweenSize(UDim2.new(value / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.1, true)
   end
  end
  library.flags[self.flag] = value
  self.value = value
  option.title.Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix
  if not nocallback then
   self.callback(value)
  end
 end
 delay(1, function()
  if library then
   option:SetValue(option.value)
  end
 end)
end

library.createList = function(option, parent)
 option.hasInit = true

 if option.sub then
  option.main = option:getMain()
  option.main.Size = UDim2.new(1, 0, 0, 48)
 else
  option.main = library:Create("Frame", {
   LayoutOrder = option.position,
   Size = UDim2.new(1, 0, 0, option.text == "nil" and 30 or 48),
   BackgroundTransparency = 1,
   Parent = parent
  })

  if option.text ~= "nil" then
   library:Create("TextLabel", {
    Position = UDim2.new(0, 6, 0, 0),
    Size = UDim2.new(1, - 12, 0, 18),
    BackgroundTransparency = 1,
    Text = option.text,
    TextSize = 15,
    Font = Enum.Font.Code,
    TextColor3 = Color3.fromRGB(210, 210, 210),
    TextXAlignment = Enum.TextXAlignment.Left,
    Parent = option.main
   })
  end
 end

 local function getMultiText()
  local s = ""
  for _, value in next, option.values do
   s = s .. (option.value[value] and (tostring(value) .. ", ") or "")
  end
  return string.sub(s, 1, # s - 2)
 end

 option.listvalue = library:Create("TextLabel", {
  Position = UDim2.new(0, 6, 0, (option.text == "nil" and not option.sub) and 4 or 22),
  Size = UDim2.new(1, - 12, 0, 22),
  BackgroundColor3 = Color3.fromRGB(50, 50, 50),
  BorderColor3 = Color3.new(),
  Text = " " .. (typeof(option.value) == "string" and option.value or getMultiText()),
  TextSize = 15,
  Font = Enum.Font.Code,
  TextColor3 = Color3.new(1, 1, 1),
  TextXAlignment = Enum.TextXAlignment.Left,
  TextTruncate = Enum.TextTruncate.AtEnd,
  Parent = option.main
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2454009026",
  ImageColor3 = Color3.new(),
  ImageTransparency = 0.8,
  Parent = option.listvalue
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.listvalue
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.listvalue
 })

 option.arrow = library:Create("ImageLabel", {
  Position = UDim2.new(1, - 16, 0, 7),
  Size = UDim2.new(0, 8, 0, 8),
  Rotation = 90,
  BackgroundTransparency = 1,
  Image = "rbxassetid://4918373417",
  ImageColor3 = Color3.new(1, 1, 1),
  ScaleType = Enum.ScaleType.Fit,
  ImageTransparency = 0.4,
  Parent = option.listvalue
 })

 option.holder = library:Create("TextButton", {
  ZIndex = 4,
  BackgroundColor3 = Color3.fromRGB(40, 40, 40),
  BorderColor3 = Color3.new(),
  Text = "",
  AutoButtonColor = false,
  Visible = false,
  Parent = library.base
 })

 option.content = library:Create("ScrollingFrame", {
  ZIndex = 4,
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  BorderSizePixel = 0,
  ScrollBarImageColor3 = Color3.new(),
  ScrollBarThickness = 3,
  ScrollingDirection = Enum.ScrollingDirection.Y,
  VerticalScrollBarInset = Enum.ScrollBarInset.Always,
  TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
  BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
  Parent = option.holder
 })

 library:Create("ImageLabel", {
  ZIndex = 4,
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.holder
 })

 library:Create("ImageLabel", {
  ZIndex = 4,
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.holder
 })

 local layout = library:Create("UIListLayout", {
  Padding = UDim.new(0, 2),
  Parent = option.content
 })

 library:Create("UIPadding", {
  PaddingTop = UDim.new(0, 4),
  PaddingLeft = UDim.new(0, 4),
  Parent = option.content
 })

 local valueCount = 0
 layout.Changed:connect(function()
  option.holder.Size = UDim2.new(0, option.listvalue.AbsoluteSize.X, 0, 8 + (valueCount > option.max and (- 2 + (option.max * 22)) or layout.AbsoluteContentSize.Y))
  option.content.CanvasSize = UDim2.new(0, 0, 0, 8 + layout.AbsoluteContentSize.Y)
 end)
 local interest = option.sub and option.listvalue or option.main

 option.listvalue.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   if library.popup == option then
    library.popup:Close()
    return
   end
   if library.popup then
    library.popup:Close()
   end
   option.arrow.Rotation = - 90
   option.open = true
   option.holder.Visible = true
   local pos = option.main.AbsolutePosition
   option.holder.Position = UDim2.new(0, pos.X + 6, 0, pos.Y + ((option.text == "nil" and not option.sub) and 66 or 84))
   library.popup = option
   option.listvalue.BorderColor3 = library.flags["Menu Accent Color"]
  end
  if input.UserInputType.Name == "MouseMovement" then
   if not library.warning and not library.slider then
    option.listvalue.BorderColor3 = library.flags["Menu Accent Color"]
   end
  end
 end)

 option.listvalue.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if not option.open then
    option.listvalue.BorderColor3 = Color3.new()
   end
  end
 end)

 interest.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Text = option.tip
    library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
   end
  end
 end)

 interest.InputChanged:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
   end
  end
 end)

 interest.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   library.tooltip.Position = UDim2.new(2)
  end
 end)

 local selected
 function option:AddValue(value, state)
  if self.labels[value] then
   return
  end
  valueCount = valueCount + 1

  if self.multiselect then
   self.values[value] = state
  else
   if not table.find(self.values, value) then
    table.insert(self.values, value)
   end
  end

  local label = library:Create("TextLabel", {
   ZIndex = 4,
   Size = UDim2.new(1, 0, 0, 20),
   BackgroundTransparency = 1,
   Text = value,
   TextSize = 15,
   Font = Enum.Font.Code,
   TextTransparency = self.multiselect and (self.value[value] and 1 or 0) or self.value == value and 1 or 0,
   TextColor3 = Color3.fromRGB(210, 210, 210),
   TextXAlignment = Enum.TextXAlignment.Left,
   Parent = option.content
  })
  self.labels[value] = label

  local labelOverlay = library:Create("TextLabel", {
   ZIndex = 4, 
   Size = UDim2.new(1, 0, 1, 0),
   BackgroundTransparency = 0.8,
   Text = " " .. value,
   TextSize = 15,
   Font = Enum.Font.Code,
   TextColor3 = library.flags["Menu Accent Color"],
   TextXAlignment = Enum.TextXAlignment.Left,
   Visible = self.multiselect and self.value[value] or self.value == value,
   Parent = label
  })
  selected = selected or self.value == value and labelOverlay
  table.insert(library.theme, labelOverlay)

  label.InputBegan:connect(function(input)
   if input.UserInputType.Name == "MouseButton1" then
    if self.multiselect then
     self.value[value] = not self.value[value]
     self:SetValue(self.value)
    else
     self:SetValue(value)
     self:Close()
    end
   end
  end)
 end

 for i, value in next, option.values do
  option:AddValue(tostring(typeof(i) == "number" and value or i))
 end

 function option:RemoveValue(value)
  local label = self.labels[value]
  if label then
   label:Destroy()
   self.labels[value] = nil
   valueCount = valueCount - 1
   if self.multiselect then
    self.values[value] = nil
    self:SetValue(self.value)
   else
    table.remove(self.values, table.find(self.values, value))
    if self.value == value then
     selected = nil
     self:SetValue(self.values[1] or "")
    end
   end
  end
 end

 function option:SetValue(value, nocallback)
  if self.multiselect and typeof(value) ~= "table" then
   value = {}
   for i, v in next, self.values do
    value[v] = false
   end
  end
  self.value = typeof(value) == "table" and value or tostring(table.find(self.values, value) and value or self.values[1])
  library.flags[self.flag] = self.value
  option.listvalue.Text = " " .. (self.multiselect and getMultiText() or self.value)
  if self.multiselect then
   for name, label in next, self.labels do
    label.TextTransparency = self.value[name] and 1 or 0
    if label:FindFirstChild"TextLabel" then
     label.TextLabel.Visible = self.value[name]
    end
   end
  else
   if selected then
    selected.TextTransparency = 0
    if selected:FindFirstChild"TextLabel" then
     selected.TextLabel.Visible = false
    end
   end
   if self.labels[self.value] then
    selected = self.labels[self.value]
    selected.TextTransparency = 1
    if selected:FindFirstChild"TextLabel" then
     selected.TextLabel.Visible = true
    end
   end
  end
  if not nocallback then
   self.callback(self.value)
  end
 end
 delay(1, function()
  if library then
   option:SetValue(option.value)
  end
 end)

 function option:Close()
  library.popup = nil
  option.arrow.Rotation = 90
  self.open = false
  option.holder.Visible = false
  option.listvalue.BorderColor3 = Color3.new()
 end

 return option
end

library.createBox = function(option, parent)
 option.hasInit = true

 option.main = library:Create("Frame", {
  LayoutOrder = option.position,
  Size = UDim2.new(1, 0, 0, option.text == "nil" and 28 or 44),
  BackgroundTransparency = 1,
  Parent = parent
 })

 if option.text ~= "nil" then
  option.title = library:Create("TextLabel", {
   Position = UDim2.new(0, 6, 0, 0),
   Size = UDim2.new(1, - 12, 0, 18),
   BackgroundTransparency = 1,
   Text = option.text,
   TextSize = 15,
   Font = Enum.Font.Code,
   TextColor3 = Color3.fromRGB(210, 210, 210),
   TextXAlignment = Enum.TextXAlignment.Left,
   Parent = option.main
  })
 end

 option.holder = library:Create("Frame", {
  Position = UDim2.new(0, 6, 0, option.text == "nil" and 4 or 20),
  Size = UDim2.new(1, - 12, 0, 20),
  BackgroundColor3 = Color3.fromRGB(50, 50, 50),
  BorderColor3 = Color3.new(),
  Parent = option.main
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2454009026",
  ImageColor3 = Color3.new(),
  ImageTransparency = 0.8,
  Parent = option.holder
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.holder
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.holder
 })

 local inputvalue = library:Create("TextBox", {
  Position = UDim2.new(0, 4, 0, 0),
  Size = UDim2.new(1, - 4, 1, 0),
  BackgroundTransparency = 1,
  Text = "  " .. option.value,
  TextSize = 15,
  Font = Enum.Font.Code,
  TextColor3 = Color3.new(1, 1, 1),
  TextXAlignment = Enum.TextXAlignment.Left,
  TextWrapped = true,
  ClearTextOnFocus = false,
  Parent = option.holder
 })

 inputvalue.FocusLost:connect(function(enter)
  option.holder.BorderColor3 = Color3.new()
  option:SetValue(inputvalue.Text, enter)
 end)

 inputvalue.Focused:connect(function()
  option.holder.BorderColor3 = library.flags["Menu Accent Color"]
 end)

 inputvalue.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   inputvalue.Text = ""
  end
  if input.UserInputType.Name == "MouseMovement" then
   if not library.warning and not library.slider then
    option.holder.BorderColor3 = library.flags["Menu Accent Color"]
   end
   if option.tip then
    library.tooltip.Text = option.tip
    library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
   end
  end
 end)

 inputvalue.InputChanged:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
   end
  end
 end)

 inputvalue.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if not inputvalue:IsFocused() then
    option.holder.BorderColor3 = Color3.new()
   end
   library.tooltip.Position = UDim2.new(2)
  end
 end)

 function option:SetValue(value, enter)
  if tostring(value) == "" then
   inputvalue.Text = self.value
  else
   library.flags[self.flag] = tostring(value)
   self.value = tostring(value)
   inputvalue.Text = self.value
   self.callback(value, enter)
  end
 end
 delay(1, function()
  if library then
   option:SetValue(option.value)
  end
 end)
end

library.createColorPickerWindow = function(option)
 option.mainHolder = library:Create("TextButton", {
  ZIndex = 4,
  --Position = UDim2.new(1, -184, 1, 6),
  Size = UDim2.new(0, option.trans and 200 or 184, 0, 264),
  BackgroundColor3 = Color3.fromRGB(40, 40, 40),
  BorderColor3 = Color3.new(),
  AutoButtonColor = false,
  Visible = false,
  Parent = library.base
 })

 option.rgbBox = library:Create("Frame", {
  Position = UDim2.new(0, 6, 0, 214),
  Size = UDim2.new(0, (option.mainHolder.AbsoluteSize.X - 12), 0, 20),
  BackgroundColor3 = Color3.fromRGB(57, 57, 57),
  BorderColor3 = Color3.new(),
  ZIndex = 5;
  Parent = option.mainHolder
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2454009026",
  ImageColor3 = Color3.new(),
  ImageTransparency = 0.8,
  ZIndex = 6;
  Parent = option.rgbBox
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  ZIndex = 6;
  Parent = option.rgbBox
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  ZIndex = 6;
  Parent = option.rgbBox
 })

 option.rgbInput = library:Create("TextBox", {
  Position = UDim2.new(0, 4, 0, 0),
  Size = UDim2.new(1, - 4, 1, 0),
  BackgroundTransparency = 1,
  Text = tostring(option.color),
  TextSize = 14,
  Font = Enum.Font.Code,
  TextColor3 = Color3.new(1, 1, 1),
  TextXAlignment = Enum.TextXAlignment.Center,
  TextWrapped = true,
  ClearTextOnFocus = false,
  ZIndex = 6;
  Parent = option.rgbBox
 })

 option.hexBox = option.rgbBox:Clone()
 option.hexBox.Position = UDim2.new(0, 6, 0, 238)
 -- option.hexBox.Size = UDim2.new(0, (option.mainHolder.AbsoluteSize.X/2 - 10), 0, 20)
 option.hexBox.Parent = option.mainHolder
 option.hexInput = option.hexBox.TextBox;

 library:Create("ImageLabel", {
  ZIndex = 4,
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.mainHolder
 })

 library:Create("ImageLabel", {
  ZIndex = 4,
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.mainHolder
 })

 local hue, sat, val = Color3.toHSV(option.color)
 hue, sat, val = hue == 0 and 1 or hue, sat + 0.005, val - 0.005
 local editinghue
 local editingsatval
 local editingtrans

 local transMain
 if option.trans then
  transMain = library:Create("ImageLabel", {
   ZIndex = 5,
   Size = UDim2.new(1, 0, 1, 0),
   BackgroundTransparency = 1,
   Image = "rbxassetid://2454009026",
   ImageColor3 = Color3.fromHSV(hue, 1, 1),
   Rotation = 180,
   Parent = library:Create("ImageLabel", {
    ZIndex = 4,
    AnchorPoint = Vector2.new(1, 0),
    Position = UDim2.new(1, - 6, 0, 6),
    Size = UDim2.new(0, 10, 1, - 60),
    BorderColor3 = Color3.new(),
    Image = "rbxassetid://4632082392",
    ScaleType = Enum.ScaleType.Tile,
    TileSize = UDim2.new(0, 5, 0, 5),
    Parent = option.mainHolder
   })
  })

  option.transSlider = library:Create("Frame", {
   ZIndex = 5,
   Position = UDim2.new(0, 0, option.trans, 0),
   Size = UDim2.new(1, 0, 0, 2),
   BackgroundColor3 = Color3.fromRGB(38, 41, 65),
   BorderColor3 = Color3.fromRGB(255, 255, 255),
   Parent = transMain
  })

  transMain.InputBegan:connect(function(Input)
   if Input.UserInputType.Name == "MouseButton1" then
    editingtrans = true
    option:SetTrans(1 - ((Input.Position.Y - transMain.AbsolutePosition.Y) / transMain.AbsoluteSize.Y))
   end
  end)

  transMain.InputEnded:connect(function(Input)
   if Input.UserInputType.Name == "MouseButton1" then
    editingtrans = false
   end
  end)
 end

 local hueMain = library:Create("Frame", {
  ZIndex = 4,
  AnchorPoint = Vector2.new(0, 1),
  Position = UDim2.new(0, 6, 1, - 54),
  Size = UDim2.new(1, option.trans and - 28 or - 12, 0, 10),
  BackgroundColor3 = Color3.new(1, 1, 1),
  BorderColor3 = Color3.new(),
  Parent = option.mainHolder
 })

 local Gradient = library:Create("UIGradient", {
  Color = ColorSequence.new({
   ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
   ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
   ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
   ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
   ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
   ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
   ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
  }),
  Parent = hueMain
 })

 local hueSlider = library:Create("Frame", {
  ZIndex = 4,
  Position = UDim2.new(1 - hue, 0, 0, 0),
  Size = UDim2.new(0, 2, 1, 0),
  BackgroundColor3 = Color3.fromRGB(38, 41, 65),
  BorderColor3 = Color3.fromRGB(255, 255, 255),
  Parent = hueMain
 })

 hueMain.InputBegan:connect(function(Input)
  if Input.UserInputType.Name == "MouseButton1" then
   editinghue = true
   X = (hueMain.AbsolutePosition.X + hueMain.AbsoluteSize.X) - hueMain.AbsolutePosition.X
   X = math.clamp((Input.Position.X - hueMain.AbsolutePosition.X) / X, 0, 0.995)
   option:SetColor(Color3.fromHSV(1 - X, sat, val))
  end
 end)

 hueMain.InputEnded:connect(function(Input)
  if Input.UserInputType.Name == "MouseButton1" then
   editinghue = false
  end
 end)

 local satval = library:Create("ImageLabel", {
  ZIndex = 4,
  Position = UDim2.new(0, 6, 0, 6),
  Size = UDim2.new(1, option.trans and - 28 or - 12, 1, - 74),
  BackgroundColor3 = Color3.fromHSV(hue, 1, 1),
  BorderColor3 = Color3.new(),
  Image = "rbxassetid://4155801252",
  ClipsDescendants = true,
  Parent = option.mainHolder
 })

 local satvalSlider = library:Create("Frame", {
  ZIndex = 4,
  AnchorPoint = Vector2.new(0.5, 0.5),
  Position = UDim2.new(sat, 0, 1 - val, 0),
  Size = UDim2.new(0, 4, 0, 4),
  Rotation = 45,
  BackgroundColor3 = Color3.fromRGB(255, 255, 255),
  Parent = satval
 })

 satval.InputBegan:connect(function(Input)
  if Input.UserInputType.Name == "MouseButton1" then
   editingsatval = true
   X = (satval.AbsolutePosition.X + satval.AbsoluteSize.X) - satval.AbsolutePosition.X
   Y = (satval.AbsolutePosition.Y + satval.AbsoluteSize.Y) - satval.AbsolutePosition.Y
   X = math.clamp((Input.Position.X - satval.AbsolutePosition.X) / X, 0.005, 1)
   Y = math.clamp((Input.Position.Y - satval.AbsolutePosition.Y) / Y, 0, 0.995)
   option:SetColor(Color3.fromHSV(hue, X, 1 - Y))
  end
 end)

 library:AddConnection(inputService.InputChanged, function(Input)
  if Input.UserInputType.Name == "MouseMovement" then
   if editingsatval then
    X = (satval.AbsolutePosition.X + satval.AbsoluteSize.X) - satval.AbsolutePosition.X
    Y = (satval.AbsolutePosition.Y + satval.AbsoluteSize.Y) - satval.AbsolutePosition.Y
    X = math.clamp((Input.Position.X - satval.AbsolutePosition.X) / X, 0.005, 1)
    Y = math.clamp((Input.Position.Y - satval.AbsolutePosition.Y) / Y, 0, 0.995)
    option:SetColor(Color3.fromHSV(hue, X, 1 - Y))
   elseif editinghue then
    X = (hueMain.AbsolutePosition.X + hueMain.AbsoluteSize.X) - hueMain.AbsolutePosition.X
    X = math.clamp((Input.Position.X - hueMain.AbsolutePosition.X) / X, 0, 0.995)
    option:SetColor(Color3.fromHSV(1 - X, sat, val))
   elseif editingtrans then
    option:SetTrans(1 - ((Input.Position.Y - transMain.AbsolutePosition.Y) / transMain.AbsoluteSize.Y))
   end
  end
 end)

 satval.InputEnded:connect(function(Input)
  if Input.UserInputType.Name == "MouseButton1" then
   editingsatval = false
  end
 end)

 local r, g, b = library.round(option.color)
 option.hexInput.Text = string.format("#%02x%02x%02x", r, g, b)
 option.rgbInput.Text = table.concat({
  r,
  g,
  b
 }, ",")

 option.rgbInput.FocusLost:connect(function()
  local r, g, b = option.rgbInput.Text:gsub("%s+", ""):match("(%d+),(%d+),(%d+)")
  if r and g and b then
   local color = Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
   return option:SetColor(color)
  end

  local r, g, b = library.round(option.color)
  option.rgbInput.Text = table.concat({
   r,
   g,
   b
  }, ",")
 end)

 option.hexInput.FocusLost:connect(function()
  local r, g, b = option.hexInput.Text:match("#?(..)(..)(..)")
  if r and g and b then
   local color = Color3.fromRGB(tonumber("0x" .. r), tonumber("0x" .. g), tonumber("0x" .. b))
   return option:SetColor(color)
  end

  local r, g, b = library.round(option.color)
  option.hexInput.Text = string.format("#%02x%02x%02x", r, g, b)
 end)

 function option:updateVisuals(Color)
  hue, sat, val = Color3.toHSV(Color)
  hue = hue == 0 and 1 or hue
  satval.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
  if option.trans then
   transMain.ImageColor3 = Color3.fromHSV(hue, 1, 1)
  end
  hueSlider.Position = UDim2.new(1 - hue, 0, 0, 0)
  satvalSlider.Position = UDim2.new(sat, 0, 1 - val, 0)

  local r, g, b = library.round(Color3.fromHSV(hue, sat, val))

  option.hexInput.Text = string.format("#%02x%02x%02x", r, g, b)
  option.rgbInput.Text = table.concat({
   r,
   g,
   b
  }, ",")
 end

 return option
end

library.createColor = function(option, parent)
 option.hasInit = true

 if option.sub then
  option.main = option:getMain()
 else
  option.main = library:Create("Frame", {
   LayoutOrder = option.position,
   Size = UDim2.new(1, 0, 0, 20),
   BackgroundTransparency = 1,
   Parent = parent
  })

  option.title = library:Create("TextLabel", {
   Position = UDim2.new(0, 6, 0, 0),
   Size = UDim2.new(1, - 12, 1, 0),
   BackgroundTransparency = 1,
   Text = option.text,
   TextSize = 15,
   Font = Enum.Font.Code,
   TextColor3 = Color3.fromRGB(210, 210, 210),
   TextXAlignment = Enum.TextXAlignment.Left,
   Parent = option.main
  })
 end

 option.visualize = library:Create(option.sub and "TextButton" or "Frame", {
  Position = UDim2.new(1, - (option.subpos or 0) - 24, 0, 4),
  Size = UDim2.new(0, 18, 0, 12),
  SizeConstraint = Enum.SizeConstraint.RelativeYY,
  BackgroundColor3 = option.color,
  BorderColor3 = Color3.new(),
  Parent = option.main
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2454009026",
  ImageColor3 = Color3.new(),
  ImageTransparency = 0.6,
  Parent = option.visualize
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.visualize
 })

 library:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = option.visualize
 })

 local interest = option.sub and option.visualize or option.main

 if option.sub then
  option.visualize.Text = ""
  option.visualize.AutoButtonColor = false
 end

 interest.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   if not option.mainHolder then
    library.createColorPickerWindow(option)
   end
   if library.popup == option then
    library.popup:Close()
    return
   end
   if library.popup then
    library.popup:Close()
   end
   option.open = true
   local pos = option.main.AbsolutePosition
   option.mainHolder.Position = UDim2.new(0, pos.X + 36 + (option.trans and - 16 or 0), 0, pos.Y + 56)
   option.mainHolder.Visible = true
   library.popup = option
   option.visualize.BorderColor3 = library.flags["Menu Accent Color"]
  end
  if input.UserInputType.Name == "MouseMovement" then
   if not library.warning and not library.slider then
    option.visualize.BorderColor3 = library.flags["Menu Accent Color"]
   end
   if option.tip then
    library.tooltip.Text = option.tip
    library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
   end
  end
 end)

 interest.InputChanged:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if option.tip then
    library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
   end
  end
 end)

 interest.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseMovement" then
   if not option.open then
    option.visualize.BorderColor3 = Color3.new()
   end
   library.tooltip.Position = UDim2.new(2)
  end
 end)

 function option:SetColor(newColor, nocallback)
  if typeof(newColor) == "table" then
   newColor = Color3.new(newColor[1], newColor[2], newColor[3])
  end
  newColor = newColor or Color3.new(1, 1, 1)
  if self.mainHolder then
   self:updateVisuals(newColor)
  end
  option.visualize.BackgroundColor3 = newColor
  library.flags[self.flag] = newColor
  self.color = newColor
  if not nocallback then
   self.callback(newColor)
  end
 end

 if option.trans then
  function option:SetTrans(value, manual)
   value = math.clamp(tonumber(value) or 0, 0, 1)
   if self.transSlider then
    self.transSlider.Position = UDim2.new(0, 0, value, 0)
   end
   self.trans = value
   library.flags[self.flag .. " Transparency"] = 1 - value
   self.calltrans(value)
  end
  option:SetTrans(option.trans)
 end

 delay(1, function()
  if library then
   option:SetColor(option.color)
  end
 end)

 function option:Close()
  library.popup = nil
  self.open = false
  self.mainHolder.Visible = false
  option.visualize.BorderColor3 = Color3.new()
 end
end

function library:AddTab(title, pos)
 local tab = {
  canInit = true,
  tabs = {},
  columns = {},
  title = tostring(title)
 }
 table.insert(self.tabs, pos or # self.tabs + 1, tab)

 function tab:AddColumn()
  local column = {
   sections = {},
   position = # self.columns,
   canInit = true,
   tab = self
  }
  table.insert(self.columns, column)

  function column:AddSection(title)
   local section = {
    title = tostring(title),
    options = {},
    canInit = true,
    column = self
   }
   table.insert(self.sections, section)

   function section:AddLabel(text)
    local option = {
     text = text
    }
    option.section = self
    option.type = "label"
    option.position = # self.options
    option.canInit = true
    table.insert(self.options, option)

    if library.hasInit and self.hasInit then
     library.createLabel(option, self.content)
    else
     option.Init = library.createLabel
    end

    return option
   end

   function section:AddDivider(text)
    local option = {
     text = text
    }
    option.section = self
    option.type = "divider"
    option.position = # self.options
    option.canInit = true
    table.insert(self.options, option)

    if library.hasInit and self.hasInit then
     library.createDivider(option, self.content)
    else
     option.Init = library.createDivider
    end

    return option
   end

   function section:AddToggle(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.state = option.state == nil and nil or (typeof(option.state) == "boolean" and option.state or false)
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.type = "toggle"
    option.position = # self.options
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.subcount = 0
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    option.style = option.style == 2
    library.flags[option.flag] = option.state
    table.insert(self.options, option)
    library.options[option.flag] = option

    function option:AddColor(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddColor(subOption)
    end

    function option:AddBind(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddBind(subOption)
    end

    function option:AddList(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddList(subOption)
    end

    function option:AddSlider(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddSlider(subOption)
    end

    if library.hasInit and self.hasInit then
     library.createToggle(option, self.content)
    else
     option.Init = library.createToggle
    end

    return option
   end

   function section:AddButton(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.type = "button"
    option.position = # self.options
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.subcount = 0
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    table.insert(self.options, option)
    library.options[option.flag] = option

    function option:AddBind(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      option.main.Size = UDim2.new(1, 0, 0, 40)
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddBind(subOption)
    end

    function option:AddColor(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      option.main.Size = UDim2.new(1, 0, 0, 40)
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddColor(subOption)
    end

    if library.hasInit and self.hasInit then
     library.createButton(option, self.content)
    else
     option.Init = library.createButton
    end

    return option
   end

   function section:AddBind(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.key = (option.key and option.key.Name) or option.key or "none"
    option.nomouse = typeof(option.nomouse) == "boolean" and option.nomouse or false
    option.mode = typeof(option.mode) == "string" and (option.mode == "toggle" or option.mode == "hold" and option.mode) or "toggle"
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.type = "bind"
    option.position = # self.options
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    table.insert(self.options, option)
    library.options[option.flag] = option

    if library.hasInit and self.hasInit then
     library.createBind(option, self.content)
    else
     option.Init = library.createBind
    end

    return option
   end

   function section:AddSlider(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.min = typeof(option.min) == "number" and option.min or 0
    option.max = typeof(option.max) == "number" and option.max or 0
    option.value = option.min < 0 and 0 or math.clamp(typeof(option.value) == "number" and option.value or option.min, option.min, option.max)
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.float = typeof(option.value) == "number" and option.float or 1
    option.suffix = option.suffix and tostring(option.suffix) or ""
    option.textpos = option.textpos == 2
    option.type = "slider"
    option.position = # self.options
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.subcount = 0
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    library.flags[option.flag] = option.value
    table.insert(self.options, option)
    library.options[option.flag] = option

    function option:AddColor(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddColor(subOption)
    end

    function option:AddBind(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddBind(subOption)
    end

    if library.hasInit and self.hasInit then
     library.createSlider(option, self.content)
    else
     option.Init = library.createSlider
    end

    return option
   end

   function section:AddList(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.values = typeof(option.values) == "table" and option.values or {}
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.multiselect = typeof(option.multiselect) == "boolean" and option.multiselect or false
    --option.groupbox = (not option.multiselect) and (typeof(option.groupbox) == "boolean" and option.groupbox or false)
    option.value = option.multiselect and (typeof(option.value) == "table" and option.value or {}) or tostring(option.value or option.values[1] or "")
    if option.multiselect then
     for i, v in next, option.values do
      option.value[v] = false
     end
    end
    option.max = option.max or 4
    option.open = false
    option.type = "list"
    option.position = # self.options
    option.labels = {}
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.subcount = 0
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    library.flags[option.flag] = option.value
    table.insert(self.options, option)
    library.options[option.flag] = option

    function option:AddValue(value, state)
     if self.multiselect then
      self.values[value] = state
     else
      table.insert(self.values, value)
     end
    end

    function option:AddColor(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddColor(subOption)
    end

    function option:AddBind(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddBind(subOption)
    end

    if library.hasInit and self.hasInit then
     library.createList(option, self.content)
    else
     option.Init = library.createList
    end

    return option
   end

   function section:AddBox(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.value = tostring(option.value or "")
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.type = "box"
    option.position = # self.options
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    library.flags[option.flag] = option.value
    table.insert(self.options, option)
    library.options[option.flag] = option

    if library.hasInit and self.hasInit then
     library.createBox(option, self.content)
    else
     option.Init = library.createBox
    end

    return option
   end

   function section:AddColor(option)
    option = typeof(option) == "table" and option or {}
    option.section = self
    option.text = tostring(option.text)
    option.color = typeof(option.color) == "table" and Color3.new(option.color[1], option.color[2], option.color[3]) or option.color or Color3.new(1, 1, 1)
    option.callback = typeof(option.callback) == "function" and option.callback or function()
    end
    option.calltrans = typeof(option.calltrans) == "function" and option.calltrans or (option.calltrans == 1 and option.callback) or function()
    end
    option.open = false
    option.trans = tonumber(option.trans)
    option.subcount = 1
    option.type = "color"
    option.position = # self.options
    option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
    option.canInit = (option.canInit ~= nil and option.canInit) or true
    option.tip = option.tip and tostring(option.tip)
    library.flags[option.flag] = option.color
    table.insert(self.options, option)
    library.options[option.flag] = option

    function option:AddColor(subOption)
     subOption = typeof(subOption) == "table" and subOption or {}
     subOption.sub = true
     subOption.subpos = self.subcount * 24
     function subOption:getMain()
      return option.main
     end
     self.subcount = self.subcount + 1
     return section:AddColor(subOption)
    end

    if option.trans then
     library.flags[option.flag .. " Transparency"] = option.trans
    end

    if library.hasInit and self.hasInit then
     library.createColor(option, self.content)
    else
     option.Init = library.createColor
    end

    return option
   end

   function section:SetTitle(newTitle)
    self.title = tostring(newTitle)
    if self.titleText then
     self.titleText.Text = tostring(newTitle)
    end
   end

   function section:Init()
    if self.hasInit then
     return
    end
    self.hasInit = true

    self.main = library:Create("Frame", {
     BackgroundColor3 = Color3.fromRGB(30, 30, 30),
     BorderColor3 = Color3.new(),
     Parent = column.main
    })

    self.content = library:Create("Frame", {
     Size = UDim2.new(1, 0, 1, 0),
     BackgroundColor3 = Color3.fromRGB(30, 30, 30),
     BorderColor3 = Color3.fromRGB(60, 60, 60),
     BorderMode = Enum.BorderMode.Inset,
     Parent = self.main
    })

    library:Create("ImageLabel", {
     Size = UDim2.new(1, - 2, 1, - 2),
     Position = UDim2.new(0, 1, 0, 1),
     BackgroundTransparency = 1,
     Image = "rbxassetid://2592362371",
     ImageColor3 = Color3.new(),
     ScaleType = Enum.ScaleType.Slice,
     SliceCenter = Rect.new(2, 2, 62, 62),
     Parent = self.main
    })

    table.insert(library.theme, library:Create("Frame", {
     Size = UDim2.new(1, 0, 0, 1),
     BackgroundColor3 = library.flags["Menu Accent Color"],
     BorderSizePixel = 0,
     BorderMode = Enum.BorderMode.Inset,
     Parent = self.main
    }))

    local layout = library:Create("UIListLayout", {
     HorizontalAlignment = Enum.HorizontalAlignment.Center,
     SortOrder = Enum.SortOrder.LayoutOrder,
     Padding = UDim.new(0, 2),
     Parent = self.content
    })

    library:Create("UIPadding", {
     PaddingTop = UDim.new(0, 12),
     Parent = self.content
    })

    self.titleText = library:Create("TextLabel", {
     AnchorPoint = Vector2.new(0, 0.5),
     Position = UDim2.new(0, 12, 0, 0),
     Size = UDim2.new(0, textService:GetTextSize(self.title, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 10, 0, 3),
     BackgroundColor3 = Color3.fromRGB(30, 30, 30),
     BorderSizePixel = 0,
     Text = self.title,
     TextSize = 15,
     Font = Enum.Font.Code,
     TextColor3 = Color3.new(1, 1, 1),
     Parent = self.main
    })

    layout.Changed:connect(function()
     self.main.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y + 16)
    end)

    for _, option in next, self.options do
     if option.canInit then
      option.Init(option, self.content)
     end
    end
   end

   if library.hasInit and self.hasInit then
    section:Init()
   end

   return section
  end

  function column:Init()
   if self.hasInit then
    return
   end
   self.hasInit = true

   self.main = library:Create("ScrollingFrame", {
    ZIndex = 2,
    Position = UDim2.new(0, 6 + (self.position * 239), 0, 2),
    Size = UDim2.new(0, 233, 1, - 4),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ScrollBarImageColor3 = Color3.fromRGB(),
    ScrollBarThickness = 4, 
    VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
    ScrollingDirection = Enum.ScrollingDirection.Y,
    Visible = false,
    Parent = library.columnHolder
   })

   local layout = library:Create("UIListLayout", {
    HorizontalAlignment = Enum.HorizontalAlignment.Center,
    SortOrder = Enum.SortOrder.LayoutOrder,
    Padding = UDim.new(0, 12),
    Parent = self.main
   })

   library:Create("UIPadding", {
    PaddingTop = UDim.new(0, 8),
    PaddingLeft = UDim.new(0, 2),
    PaddingRight = UDim.new(0, 2),
    Parent = self.main
   })

   layout.Changed:connect(function()
    self.main.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 14)
   end)

   for _, section in next, self.sections do
    if section.canInit and # section.options > 0 then
     section:Init()
    end
   end
  end

  if library.hasInit and self.hasInit then
   column:Init()
  end

  return column
 end

 function tab:Init()
  if self.hasInit then
   return
  end
  self.hasInit = true
  local size = textService:GetTextSize(self.title, 18, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 10

  self.button = library:Create("TextLabel", {
   Position = UDim2.new(0, library.tabSize, 0, 22),
   Size = UDim2.new(0, size, 0, 30),
   BackgroundTransparency = 1,
   Text = self.title,
   TextColor3 = Color3.new(1, 1, 1),
   TextSize = 15,
   Font = Enum.Font.Code,
   TextWrapped = true,
   ClipsDescendants = true,
   Parent = library.main
  })
  library.tabSize = library.tabSize + size

  self.button.InputBegan:connect(function(input)
   if input.UserInputType.Name == "MouseButton1" then
    library:selectTab(self)
   end
  end)

  for _, column in next, self.columns do
   if column.canInit then
    column:Init()
   end
  end
 end

 if self.hasInit then
  tab:Init()
 end

 return tab
end

function library:AddWarning(warning)
 warning = typeof(warning) == "table" and warning or {}
 warning.text = tostring(warning.text) 
 warning.type = warning.type == "confirm" and "confirm" or ""

 local answer
 function warning:Show()
  library.warning = warning
  if warning.main and warning.type == "" then
   return
  end
  if library.popup then
   library.popup:Close()
  end
  if not warning.main then
   warning.main = library:Create("TextButton", {
    ZIndex = 2,
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 0.6,
    BackgroundColor3 = Color3.new(),
    BorderSizePixel = 0,
    Text = "",
    AutoButtonColor = false,
    Parent = library.main
   })

   warning.message = library:Create("TextLabel", {
    ZIndex = 2,
    Position = UDim2.new(0, 20, 0.5, - 60),
    Size = UDim2.new(1, - 40, 0, 40),
    BackgroundTransparency = 1,
    TextSize = 16,
    Font = Enum.Font.Code,
    TextColor3 = Color3.new(1, 1, 1),
    TextWrapped = true,
    RichText = true,
    Parent = warning.main
   })

   if warning.type == "confirm" then
    local button = library:Create("TextLabel", {
     ZIndex = 2,
     Position = UDim2.new(0.5, - 105, 0.5, - 10),
     Size = UDim2.new(0, 100, 0, 20),
     BackgroundColor3 = Color3.fromRGB(40, 40, 40),
     BorderColor3 = Color3.new(),
     Text = "Yes",
     TextSize = 16,
     Font = Enum.Font.Code,
     TextColor3 = Color3.new(1, 1, 1),
     Parent = warning.main
    })

    library:Create("ImageLabel", {
     ZIndex = 2,
     Size = UDim2.new(1, 0, 1, 0),
     BackgroundTransparency = 1,
     Image = "rbxassetid://2454009026",
     ImageColor3 = Color3.new(),
     ImageTransparency = 0.8,
     Parent = button
    })

    library:Create("ImageLabel", {
     ZIndex = 2,
     Size = UDim2.new(1, 0, 1, 0),
     BackgroundTransparency = 1,
     Image = "rbxassetid://2592362371",
     ImageColor3 = Color3.fromRGB(60, 60, 60),
     ScaleType = Enum.ScaleType.Slice,
     SliceCenter = Rect.new(2, 2, 62, 62),
     Parent = button
    })

    local button1 = library:Create("TextLabel", {
     ZIndex = 2,
     Position = UDim2.new(0.5, 5, 0.5, - 10),
     Size = UDim2.new(0, 100, 0, 20),
     BackgroundColor3 = Color3.fromRGB(40, 40, 40),
     BorderColor3 = Color3.new(),
     Text = "No",
     TextSize = 16,
     Font = Enum.Font.Code,
     TextColor3 = Color3.new(1, 1, 1),
     Parent = warning.main
    })

    library:Create("ImageLabel", {
     ZIndex = 2,
     Size = UDim2.new(1, 0, 1, 0),
     BackgroundTransparency = 1,
     Image = "rbxassetid://2454009026",
     ImageColor3 = Color3.new(),
     ImageTransparency = 0.8,
     Parent = button1
    })

    library:Create("ImageLabel", {
     ZIndex = 2,
     Size = UDim2.new(1, 0, 1, 0),
     BackgroundTransparency = 1,
     Image = "rbxassetid://2592362371",
     ImageColor3 = Color3.fromRGB(60, 60, 60),
     ScaleType = Enum.ScaleType.Slice,
     SliceCenter = Rect.new(2, 2, 62, 62),
     Parent = button1
    })

    button.InputBegan:connect(function(input)
     if input.UserInputType.Name == "MouseButton1" then
      answer = true
     end
    end)

    button1.InputBegan:connect(function(input)
     if input.UserInputType.Name == "MouseButton1" then
      answer = false
     end
    end)
   else
    local button = library:Create("TextLabel", {
     ZIndex = 2,
     Position = UDim2.new(0.5, - 50, 0.5, - 10),
     Size = UDim2.new(0, 100, 0, 20),
     BackgroundColor3 = Color3.fromRGB(30, 30, 30),
     BorderColor3 = Color3.new(),
     Text = "OK",
     TextSize = 16,
     Font = Enum.Font.Code,
     TextColor3 = Color3.new(1, 1, 1),
     Parent = warning.main
    })

    library:Create("ImageLabel", {
     ZIndex = 2,
     Size = UDim2.new(1, 0, 1, 0),
     BackgroundTransparency = 1,
     Image = "rbxassetid://2454009026",
     ImageColor3 = Color3.new(),
     ImageTransparency = 0.8,
     Parent = button
    })

    library:Create("ImageLabel", {
     ZIndex = 2,
     AnchorPoint = Vector2.new(0.5, 0.5),
     Position = UDim2.new(0.5, 0, 0.5, 0),
     Size = UDim2.new(1, - 2, 1, - 2),
     BackgroundTransparency = 1,
     Image = "rbxassetid://3570695787",
     ImageColor3 = Color3.fromRGB(50, 50, 50),
     Parent = button
    })

    button.InputBegan:connect(function(input)
     if input.UserInputType.Name == "MouseButton1" then
      answer = true
     end
    end)
   end
  end
  warning.main.Visible = true
  warning.message.Text = warning.text

  repeat
   wait()
  until answer ~= nil
  spawn(warning.Close)
  library.warning = nil
  return answer
 end

 function warning:Close()
  answer = nil
  if not warning.main then
   return
  end
  warning.main.Visible = false
 end

 return warning
end

function library:Close()
 self.open = not self.open
 if self.open then
  inputService.MouseIconEnabled = false
 else
  inputService.MouseIconEnabled = self.mousestate
 end
 if self.main then
  if self.popup then
   self.popup:Close()
  end
  self.main.Visible = self.open
  self.cursor.Visible = self.open
  self.cursor1.Visible = self.open
 end
end

function library:Init()
 if self.hasInit then
  return
 end
 self.hasInit = true

 self.base = library:Create("ScreenGui", {
  IgnoreGuiInset = true,
  ZIndexBehavior = Enum.ZIndexBehavior.Global
 })
 if runService:IsStudio() then
  self.base.Parent = script.Parent.Parent
 elseif syn then
  pcall(function()
   syn.protect_gui(self.base)
  end)
  self.base.Parent = game:GetService"CoreGui"
 end

 self.main = self:Create("ImageButton", {
  AutoButtonColor = false,
  Position = UDim2.new(0, 100, 0, 46),
  Size = UDim2.new(0, 500, 0, 600),
  BackgroundColor3 = Color3.fromRGB(20, 20, 20),
  BorderColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Tile,
  Modal = true,
  Visible = false,
  Parent = self.base
 })

 self.top = self:Create("Frame", {
  Size = UDim2.new(1, 0, 0, 50),
  BackgroundColor3 = Color3.fromRGB(30, 30, 30),
  BorderColor3 = Color3.new(),
  Parent = self.main
 })

 self:Create("TextLabel", {
  Position = UDim2.new(0, 6, 0, - 1),
  Size = UDim2.new(0, 0, 0, 20),
  BackgroundTransparency = 1,
  Text = tostring(self.title),
  Font = Enum.Font.Code,
  TextSize = 18,
  TextColor3 = Color3.new(1, 1, 1),
  TextXAlignment = Enum.TextXAlignment.Left,
  Parent = self.main
 })

 table.insert(library.theme, self:Create("Frame", {
  Size = UDim2.new(1, 0, 0, 1),
  Position = UDim2.new(0, 0, 0, 24),
  BackgroundColor3 = library.flags["Menu Accent Color"],
  BorderSizePixel = 0,
  Parent = self.main
 }))

 library:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2454009026",
  ImageColor3 = Color3.new(),
  ImageTransparency = 0.4,
  Parent = top
 })

 self.tabHighlight = self:Create("Frame", {
  BackgroundColor3 = library.flags["Menu Accent Color"],
  BorderSizePixel = 0,
  Parent = self.main
 })
 table.insert(library.theme, self.tabHighlight)

 self.columnHolder = self:Create("Frame", {
  Position = UDim2.new(0, 5, 0, 55),
  Size = UDim2.new(1, - 10, 1, - 60),
  BackgroundTransparency = 1,
  Parent = self.main
 })

 self.cursor = self:Create("Triangle", {
  Color = Color3.fromRGB(180, 180, 180),
  Transparency = 0.6,
 })
 self.cursor1 = self:Create("Triangle", {
  Color = Color3.fromRGB(240, 240, 240),
  Transparency = 0.6,
 })

 self.tooltip = self:Create("TextLabel", {
  ZIndex = 2,
  BackgroundTransparency = 1,
  BorderSizePixel = 0,
  TextSize = 15,
  Font = Enum.Font.Code,
  TextColor3 = Color3.new(1, 1, 1),
  Visible = true,
  Parent = self.base
 })

 self:Create("Frame", {
  AnchorPoint = Vector2.new(0.5, 0),
  Position = UDim2.new(0.5, 0, 0, 0),
  Size = UDim2.new(1, 10, 1, 0),
  Style = Enum.FrameStyle.RobloxRound,
  Parent = self.tooltip
 })

 self:Create("ImageLabel", {
  Size = UDim2.new(1, 0, 1, 0),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.fromRGB(60, 60, 60),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = self.main
 })

 self:Create("ImageLabel", {
  Size = UDim2.new(1, - 2, 1, - 2),
  Position = UDim2.new(0, 1, 0, 1),
  BackgroundTransparency = 1,
  Image = "rbxassetid://2592362371",
  ImageColor3 = Color3.new(),
  ScaleType = Enum.ScaleType.Slice,
  SliceCenter = Rect.new(2, 2, 62, 62),
  Parent = self.main
 })

 self.top.InputBegan:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   dragObject = self.main
   dragging = true
   dragStart = input.Position
   startPos = dragObject.Position
   if library.popup then
    library.popup:Close()
   end
  end
 end)
 self.top.InputChanged:connect(function(input)
  if dragging and input.UserInputType.Name == "MouseMovement" then
   dragInput = input
  end
 end)
 self.top.InputEnded:connect(function(input)
  if input.UserInputType.Name == "MouseButton1" then
   dragging = false
  end
 end)

 function self:selectTab(tab)
  if self.currentTab == tab then
   return
  end
  if library.popup then
   library.popup:Close()
  end
  if self.currentTab then
   self.currentTab.button.TextColor3 = Color3.fromRGB(255, 255, 255)
   for _, column in next, self.currentTab.columns do
    column.main.Visible = false
   end
  end
  self.main.Size = UDim2.new(0, 16 + ((# tab.columns < 2 and 2 or # tab.columns) * 239), 0, 600)
  self.currentTab = tab
  tab.button.TextColor3 = library.flags["Menu Accent Color"]
  if syn then
   self.tabHighlight:TweenPosition(UDim2.new(0, tab.button.Position.X.Offset, 0, 50), "Out", "Quad", 0.2, true)
   self.tabHighlight:TweenSize(UDim2.new(0, tab.button.AbsoluteSize.X, 0, - 1), "Out", "Quad", 0.1, true)
  end
  for _, column in next, tab.columns do
   column.main.Visible = true
  end
 end

 spawn(function()
  while library do
   wait(1)
   local Configs = self:GetConfigs()
   for _, config in next, Configs do
    if not table.find(self.options["Config List"].values, config) then
     self.options["Config List"]:AddValue(config)
    end
   end
   for _, config in next, self.options["Config List"].values do
    if not table.find(Configs, config) then
     self.options["Config List"]:RemoveValue(config)
    end
   end
  end
 end)

 for _, tab in next, self.tabs do
  if tab.canInit then
   tab:Init()
   self:selectTab(tab)
  end
 end

 self:AddConnection(inputService.InputEnded, function(input)
  if input.UserInputType.Name == "MouseButton1" and self.slider then
   self.slider.slider.BorderColor3 = Color3.new()
   self.slider = nil
  end
 end)

 self:AddConnection(inputService.InputChanged, function(input)
  if not self.open then
   return
  end

  if input.UserInputType.Name == "MouseMovement" then
   if self.cursor then
    local mouse = inputService:GetMouseLocation()
    local MousePos = Vector2.new(mouse.X, mouse.Y)
    self.cursor.PointA = MousePos
    self.cursor.PointB = MousePos + Vector2.new(12, 12)
    self.cursor.PointC = MousePos + Vector2.new(12, 12)
    self.cursor1.PointA = MousePos
    self.cursor1.PointB = MousePos + Vector2.new(11, 11)
    self.cursor1.PointC = MousePos + Vector2.new(11, 11)
   end
   if self.slider then
    self.slider:SetValue(self.slider.min + ((input.Position.X - self.slider.slider.AbsolutePosition.X) / self.slider.slider.AbsoluteSize.X) * (self.slider.max - self.slider.min))
   end
  end
  if input == dragInput and dragging and library.draggable then
   local delta = input.Position - dragStart
   local yPos = (startPos.Y.Offset + delta.Y) < - 36 and - 36 or startPos.Y.Offset + delta.Y
   dragObject:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, yPos), "Out", "Quint", 0.1, true)
  end
 end)

 local Old_index
 Old_index = hookmetamethod(game, "__index", function(t, i)
  if checkcaller() then
   return Old_index(t, i)
  end

  if library and i == "MouseIconEnabled" then
   return library.mousestate
  end

  return Old_index(t, i)
 end)

 local Old_new
 Old_new = hookmetamethod(game, "__newindex", function(t, i, v)
  if checkcaller() then
   return Old_new(t, i, v)
  end

  if library and i == "MouseIconEnabled" then
   library.mousestate = v
   if library.open then
    return
   end
  end

  return Old_new(t, i, v)
 end)

 if not getgenv().silent then
  delay(1, function()
   self:Close()
  end)
 end
end

library.SettingsTab = library:AddTab("Settings", 100)
library.SettingsColumn = library.SettingsTab:AddColumn()
library.SettingsColumn1 = library.SettingsTab:AddColumn()

library.SettingsMain = library.SettingsColumn:AddSection"Main"
library.SettingsMain:AddButton({
 text = "Unload Cheat",
 nomouse = true,
 callback = function()
  library:Unload()
  getgenv().OutliersHub = nil
 end
})
library.SettingsMain:AddBind({
 text = "Panic Key",
 callback = library.options["Unload Cheat"].callback
})

library.SettingsMenu = library.SettingsColumn:AddSection"Menu"
library.SettingsMenu:AddBind({
 text = "Open / Close",
 flag = "UI Toggle",
 nomouse = true,
 key = "LeftAlt",
 callback = function()
  library:Close()
 end
})
library.SettingsMenu:AddColor({
 text = "Accent Color",
 flag = "Menu Accent Color",
 color = Color3.fromRGB(199, 255, 255),
 callback = function(Color)
  if library.currentTab then
   library.currentTab.button.TextColor3 = Color
  end
  for _, obj in next, library.theme do
   obj[(obj.ClassName == "TextLabel" and "TextColor3") or (obj.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = Color
  end
 end
})

local Backgrounds = {
 ["Floral"] = 5553946656,
 ["Flowers"] = 6071575925,
 ["Circles"] = 6071579801,
 ["Hearts"] = 6073763717,
 ["Polka dots"] = 6214418014,
 ["Mountains"] = 6214412460,
 ["Zigzag"] = 6214416834,
 ["Zigzag 2"] = 6214375242,
 ["Tartan"] = 6214404863,
 ["Roses"] = 6214374619,
 ["Hexagons"] = 6214320051,
 ["Leopard print"] = 6214318622
}
library.SettingsMenu:AddList({
 text = "Background",
 flag = "UI Background",
 max = 6,
 values = {
  "Floral",
  "Flowers",
  "Circles",
  "Hearts",
  "Polka dots",
  "Mountains",
  "Zigzag",
  "Zigzag 2",
  "Tartan",
  "Roses",
  "Hexagons",
  "Leopard print"
 },
 callback = function(Value)
  if Backgrounds[Value] then
   library.main.Image = "rbxassetid://" .. Backgrounds[Value]
  end
 end
}):AddColor({
 flag = "Menu Background Color",
 color = Color3.new(),
 callback = function(Color)
  library.main.ImageColor3 = Color
 end,
 trans = 1,
 calltrans = function(Value)
  library.main.ImageTransparency = 1 - Value
 end
})
library.SettingsMenu:AddSlider({
 text = "Tile Size",
 value = 90,
 min = 50,
 max = 500,
 callback = function(Value)
  library.main.TileSize = UDim2.new(0, Value, 0, Value)
 end
})

library.ConfigSection = library.SettingsColumn1:AddSection"Configs"
library.ConfigSection:AddBox({
 text = "Config Name",
 skipflag = true
})
library.ConfigSection:AddButton({
 text = "Create",
 callback = function()
  library:GetConfigs()
  writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}")
  library.options["Config List"]:AddValue(library.flags["Config Name"])
 end
})
library.ConfigWarning = library:AddWarning({
 type = "confirm"
})
library.ConfigSection:AddList({
 text = "Configs",
 skipflag = true,
 value = "",
 flag = "Config List",
 values = library:GetConfigs()
})
library.ConfigSection:AddButton({
 text = "Save",
 callback = function()
  local r, g, b = library.round(library.flags["Menu Accent Color"])
  library.ConfigWarning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?"
  if library.ConfigWarning:Show() then
   library:SaveConfig(library.flags["Config List"])
  end
 end
})
library.ConfigSection:AddButton({
 text = "Load",
 callback = function()
  local r, g, b = library.round(library.flags["Menu Accent Color"])
  library.ConfigWarning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?"
  if library.ConfigWarning:Show() then
   library:LoadConfig(library.flags["Config List"])
  end
 end
})
library.ConfigSection:AddButton({
 text = "Delete",
 callback = function()
  local r, g, b = library.round(library.flags["Menu Accent Color"])
  library.ConfigWarning.text = "Are you sure you want to delete config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?"
  if ConfigWarning:Show() then
   local Config = library.flags["Config List"]
   if table.find(library:GetConfigs(), Config) and isfile(library.foldername .. "/" .. Config .. library.fileext) then
    library.options["Config List"]:RemoveValue(Config)
    delfile(library.foldername .. "/" .. Config .. library.fileext)
   end
  end
 end
})
--LIBRARY END

--custom notification thing, library required for this to work
local LastNotification = 0
function library:SendNotification(duration, message)
 Notify({
  Description = message;
  Title = "OutliersHub";
  Duration = duration;
 });
end

local GameTitle = ""
local GameList = {
 ["Criminality"] = 8343259840,
 ["Combat Warriors"] = 4282985734,
 ["Randomizer"] = 5307215810
}
for Name, ID in next, GameList do
 if game.GameId == ID then
  GameTitle = Name
 elseif game.PlaceId == ID then
  GameTitle = Name
 end
end

--Compatibility functions
local function mouse1click(delay)
 spawn(function()
  mouse1press()
  wait(delay or 0.1)
  mouse1release()
 end)
end
local function mouse2click(delay)
 spawn(function()
  keypress(2)
  wait(delay or 0.1)
  keprelease(2)
 end)
end
local function keytap(key, delay)
 spawn(function()
  keypress(key)
  wait(delay or 0.1)
  keyrelease(key)
 end)
end

--Variables
local RepStorage = game:GetService"ReplicatedStorage"
local PlayerServ = game:GetService"Players"
local Client = PlayerServ["LocalPlayer"]
local Mouse = Client:GetMouse()
local Settings = settings()
local Players = {}
local Camera = workspace.CurrentCamera
local WTSP = Camera.WorldToScreenPoint
local WTVP = Camera.WorldToViewportPoint
local CameraSpoof = {
 FieldOfView = Camera.FieldOfView
}
local Lighting = game:GetService"Lighting"
local LightingSpoof = {
 ClockTime = Lighting.ClockTime,
 Brightness = Lighting.Brightness,
 Ambient = Lighting.Ambient,
 OutdoorAmbient = Lighting.OutdoorAmbient,
 ColorShift_Top = Lighting.ColorShift_Top,
}
local NameRequest
local TeamRequest
local HealthRequest
local ClientCharRequest
local Cowboys, Sheriffs = {}, {}
local FFC = workspace.FindFirstChild
local GBB = workspace.GetBoundingBox
local FFA = workspace.FindFirstAncestor
local FFCoC = workspace.FindFirstChildOfClass
local V3Empty = Vector3.new()
local V3101 = Vector3.new(1, 0, 1)
local V2Empty = Vector2.new()
local V211 = Vector2.new(1, 1)
local V222 = Vector2.new(2, 2)
local V233 = Vector2.new(3, 3)

local UniversalBodyParts = {
 "Head",
 "UpperTorso",
 "LowerTorso",
 "Torso",
 "Left Arm",
 "LeftUpperArm",
 "LeftLowerArm",
 "LeftHand",
 "Right Arm",
 "RightUpperArm",
 "RightLowerArm",
 "RightHand",
 "Left Leg",
 "LeftUpperLeg",
 "LeftLowerLeg",
 "LeftFoot",
 "Right Leg",
 "RightUpperLeg",
 "RightLowerLeg",
 "RightFoot"
}
local BBBodyParts = {
 "Head",
 "Neck",
 "Chest",
 "Abdomen",
 "Hips",
 "LeftHand",
 "LeftArm",
 "LeftForearm",
 "RightHand",
 "RightArm",
 "RightForearm",
 "LeftFoot",
 "LeftLeg",
 "LeftForeleg",
 "RightFoot",
 "RightLeg",
 "RightForeleg"
}
local R6BodyParts = {
 "Head",
 "Torso",
 "Left Arm",
 "Right Arm",
 "Left Leg",
 "Right Leg"
}
local AOSBodyParts = {
 "Head",
 "Shoulders",
 "Torso",
 "UpperTorso",
 "MidTorso",
 "LowerTorso",
 "UpperLeftArm",
 "LowerLeftArm",
 "LeftHandle",
 "UpperLeftLeg",
 "LowerLeftLeg",
 "LeftFoot",
 "UpperRightArm",
 "LowerRightArm",
 "RightHandle",
 "UpperRightLeg",
 "LowerRightLeg",
 "RightFoot"
}
local SOABodyParts = {
 "Head",
 "Base",
 "LeftArmUpper",
 "LeftArmMid",
 "LeftArmLower",
 "RightArmUpper",
 "RightArmMid",
 "RightArmLower",
 "LeftLegUpper",
 "LeftLegMid",
 "LeftLegLower",
 "RightLegUpper",
 "RighLegMid",
 "RightLegLower",
}
local UseBodyParts = GameTitle == "Bad Business" and BBBodyParts or GameTitle == "Phantom Forces" and R6BodyParts or GameTitle == "Ace Of Spadez" and AOSBodyParts or GameTitle == "State Of Anarchy" and SOABodyParts or UniversalBodyParts

--Get functions
local function GetHitboxFromChar(Character, BodyPart)
 BodyPart = BodyPart or "Head"
 if not Character then
  return
 end
 if GameTitle == "Bad Business" then
  return FFC(Character.Body, BodyPart) or FFC(Character.Body, "Chest")
 elseif GameTitle == "Project Lazarus" then
  BodyPart = BodyPart == "Head" and "HeadBox" or "Torso"
  return FFC(Character, BodyPart)
 else
  return FFC(Character, BodyPart) or FFC(Character, "UpperTorso")
 end
end

local RayParams = RaycastParams.new()
RayParams.FilterType = Enum.RaycastFilterType.Blacklist
RayParams.IgnoreWater = true
local function RayCheck(ClientChar, To, Distance)
 local Ignores = {
  Camera,
  ClientChar
 }
 if GameTitle == "Bad Business" then
  Ignores[3] = FFC(workspace, "Arms")
  --Ignores[#Ignores + 1] = ClientChar and FFC(workspace, ClientChar.Backpack.Equipped.Value.Name)
  Ignores[4] = workspace.NonProjectileGeometry
  Ignores[5] = workspace.Effects
  Ignores[6] = workspace.Spawns
  Ignores[7] = workspace.Ragdolls
  Ignores[8] = workspace.Gameplay
  Ignores[9] = workspace.Throwables
 elseif GameTitle == "Phantom Forces" then
  Ignores[3] = workspace.Ignore
 end
 RayParams.FilterDescendantsInstances = Ignores
 return workspace:Raycast(Camera.CFrame.p, (To - Camera.CFrame.p).Unit * Distance, RayParams)
end

local Sub = Vector3.new(- 0.1, - 0.1, - 0.1)
local function GetCorners(Object, Esp)
 local CF = Object.CFrame
 local Size = (Object.Size / 2)
 Size = Esp and Size or Size - Sub
 return {
  Vector3.new(CF.X + Size.X, CF.Y + Size.Y, CF.Z + Size.Z);
  Vector3.new(CF.X - Size.X, CF.Y + Size.Y, CF.Z + Size.Z);

  Vector3.new(CF.X - Size.X, CF.Y - Size.Y, CF.Z - Size.Z);
  Vector3.new(CF.X + Size.X, CF.Y - Size.Y, CF.Z - Size.Z);

  Vector3.new(CF.X - Size.X, CF.Y + Size.Y, CF.Z - Size.Z);
  Vector3.new(CF.X + Size.X, CF.Y + Size.Y, CF.Z - Size.Z);

  Vector3.new(CF.X - Size.X, CF.Y - Size.Y, CF.Z + Size.Z);
  Vector3.new(CF.X + Size.X, CF.Y - Size.Y, CF.Z + Size.Z);
 }
end

--Player data
local ESPObjects = {}

local function Track(Player)
 -- too lazy to add a proper check, discontinued anyway so
 if not (Player.ClassName == "Player" or Player.ClassName == "Folder") then
  return
 end

 for i, v in next, ESPObjects do
  if not v.Active then
   v.Active = true
   ESPObjects[Player] = v
   break
  end
 end
 if not ESPObjects[Player] then
  ESPObjects[Player] = {
   ChamsOutline = library:Create("Folder", {
    Parent = library.base
   }),
   Chams = library:Create("Folder", {
    Parent = library.base
   }),
   ChamsStep = 0,
   BoxOutline = library:Create("Square", {
    Thickness = 1
   }),
   BoxInline = library:Create("Square", {
    Thickness = 1
   }),
   Box = library:Create("Square", {
    Thickness = 1
   }),
   LookAt = library:Create("Line", {
    Thickness = 1
   }),
   NameText = library:Create("Text", {
    Size = 15,
    Font = 3,
    Center = true,
    Outline = true
   }),
   ToolText = library:Create("Text", {
    Size = 15,
    Font = 3,
    Center = true,
    Outline = true
   }),
   InventoryText = library:Create("Text", {
    Size = 15,
    Font = 3,
    Center = true,
    Outline = true
   }),
   DistanceText = library:Create("Text", {
    Size = 15,
    Font = 3,
    Center = true,
    Outline = true
   }),
   BarOutline = library:Create("Square", {
    Filled = true
   }),
   Bar = library:Create("Square", {
    Filled = true
   }),
   HealthText = library:Create("Text", {
    Color = Color3.new(1, 1, 1),
    Size = 14,
    Font = 3,
    Center = true,
    Outline = true
   }),
   DirectionLine = library:Create("Line", {
    Thickness = 1
   }),
   DirectionDot = library:Create("Square", {
    Size = Vector2.new(7, 7),
    Filled = true
   }),
   --RadarHeight = library:Create("TextLabel", {BackgroundTransparency = 1, Text = "T", TextColor3 = Color3.new(), Font = Enum.Font.SciFi, TextSize = 13}),
   RadarBlip = library:Create("Circle", {
    Radius = 4,
    Filled = true
   }),
   OOVArrow = library:Create"Triangle",
   Active = true,

   Invis = function()
    ESPObjects[Player].Visible = false
    ESPObjects[Player].BoxOutline.Visible = false
    ESPObjects[Player].BoxInline.Visible = false
    ESPObjects[Player].Box.Visible = false
    ESPObjects[Player].BarOutline.Visible = false
    ESPObjects[Player].Bar.Visible = false
    ESPObjects[Player].HealthText.Visible = false
    ESPObjects[Player].LookAt.Visible = false
    ESPObjects[Player].NameText.Visible = false
    ESPObjects[Player].ToolText.Visible = false
    ESPObjects[Player].InventoryText.Visible = false
    ESPObjects[Player].DistanceText.Visible = false
    ESPObjects[Player].DirectionLine.Visible = false
    ESPObjects[Player].DirectionDot.Visible = false
   end,

   InvisChams = function()
    ESPObjects[Player].ChamsVisible = false
    for _, Cham in next, ESPObjects[Player].Chams:GetChildren() do
     Cham.Transparency = 1
    end
   end,

   InvisChamsOutline = function()
    ESPObjects[Player].ChamsOutlineVisible = false
    for _, Cham in next, ESPObjects[Player].ChamsOutline:GetChildren() do
     Cham.Transparency = 1
    end
   end,

   InvisRadar = function()
    ESPObjects[Player].RadarVisible = false
    ESPObjects[Player].RadarBlip.Visible = false
   end
  }
 end

 local Character
 local MaxHealth
 Players[Player] = setmetatable({
  Priority = false,
  Whitelist = false,
  LastPosition = V3Empty
 }, {
  __index = function(self, index)
   if index == "Character" then
    if Player.ClassName == "Model" then
     Character = Player
    else
     if GameTitle == "Phantom Forces" then
      if Player == Client then
       Character = Client.Character and FFC(Client.Character, "HumanoidRootPart") and Client.Character
      else
       if NameRequest[Player] and NameRequest[Player].torso then
        Character = NameRequest[Player].torso.Parent
       end
      end
     elseif GameTitle == "Bad Business" then
      Character = NameRequest[Player]
      Character = Character and Character.Parent == workspace.Characters and Character
     elseif GameTitle == "Operation Scorpion" then
      Character = FFC(Player, "Vars") and Player.Vars["isAlive"].Value and Player.Character
     elseif GameTitle == "Hedgerows" then
      Character = Player.Character and Player.Character.Parent and Player.Character
     elseif GameTitle == "Recoil" then
      Character = FFC(workspace, Player.Name)
     else
      Character = Player.Character or FFC(workspace, Player.Name)
      if Character then
       if GameTitle == "Arsenal" then
        Character = FFC(Character, "Spawned") and Character
       elseif GameTitle == "MURDER" then
        Character = FFC(Player, "Status") and Player.Status.Alive.Value and Character
       elseif GameTitle == "Ace Of Spadez" then
        Character = Character.Parent and Character.Parent.Name ~= "Spectators" and Character
       elseif GameTitle == "Q-Clash" then
        Character = FFCoC(Character, "BillboardGui", true)
       end
      end
     end
    end
    if Character then
     if Player ~= Client and not library.flags["Aimbot Ignore Spawn Protection"] then
      if GameTitle == "Bad Business" then
       if FFC(Character, "ShieldEmitter", true) then
        if Character.Root.ShieldEmitter.Enabled then
         return
        end
       end
      elseif GameTitle ~= "Phantom Forces" then
       if FFC(Character, "ForceField") then
        return
       end
      end
     end
     return Character
    end
   else
    if not Character then
     return (index == "Health" or index == "MaxHealth" and 0)
    end
    if index == "Health" then
     local Health
     if GameTitle == "Bad Business" then
      Health, MaxHealth = FFC(Character, "Health") and Character.Health.Value, 150
     elseif GameTitle == "Phantom Forces" then
      Health, MaxHealth = HealthRequest:getplayerhealth(Player), 100
     elseif GameTitle == "MURDER" or GameTitle == "Arsenal" or GameTitle == "Unit: Classified" then
      Health, MaxHealth = FFC(Player, "NRPBS") and Player.NRPBS.Health.Value, Player.NRPBS.MaxHealth.Value
      --elseif GameTitle == "Q-Clash" then
      -- Health, MaxHealth = HealthRequest(Character)
     else
      local Humanoid = FFCoC(Character, "Humanoid")
      if Humanoid then
       Health, MaxHealth = Humanoid.Health, Humanoid.MaxHealth
      end
     end
     return Health and (Health > 0 and Health) or 0
    elseif index == "MaxHealth" then
     return MaxHealth or 0
    elseif index == "Enemy" then
     if Player.ClassName == "Model" then
      return GameTitle == "Blackhawk Rescue Mission" and (Player.Name:find("Infantry") and true or false) or true
     else
      if GameTitle == "Blackhawk Rescue Mission" or GameTitle == "R2DA" or GameTitle == "Resurrection" or GameTitle == "Project Lazarus" or GameTitle == "MMC Zombies Project" or GameTitle == "Zombie Rush" or GameTitle == "Zombie Attack" then
       return false
      elseif GameTitle == "Bad Business" then
       return TeamRequest({}, Client) ~= TeamRequest({}, Player)
      elseif GameTitle == "Q-Clash!" then
       local ClientChar = Client.Character
       return Character and ClientChar and Character.Parent ~= ClientChar.Parent
      elseif GameTitle == "Recoil" then
       return FFC(Player, "GameStats") and Client.GameStats.Team.value ~= Player.GameStats.Team.value
      elseif GameTitle == "Shoot Out" then
       return (Cowboys[Client] and Cowboys or Sheriffs) ~= (Cowboys[Player] and Cowboys or Sheriffs)
      else
       if Client.Team then
        return Client.Team ~= Player.Team
       else
        return true
       end
      end
     end
    end
   end
  end
 })
end

local function AddTracker(Tracking)
 for _, Player in next, Tracking:GetChildren() do
  if GameTitle == "Blackhawk Rescue Mission" then
   if Tracking == PlayerServ then
    Track(Player)
   else
    if Player.Name:find("Infantry") or Player.Name:find("Civilian") then
     Track(Player)
    end
   end
  else
   Track(Player)
  end
 end

 library:AddConnection(Tracking.ChildAdded, function(Player)
  wait(1)
  if Tracking == PlayerServ and library then
   library.options["Player List"]:AddValue(Player.Name)
  end
  if GameTitle == "Blackhawk Rescue Mission" then
   if Tracking == PlayerServ then
    Track(Player)
   else
    if Player.Name:find"Infantry" or Player.Name:find"Civilian" then
     Track(Player)
    end
   end
  else
   Track(Player)
  end
 end)

 library:AddConnection(Tracking.ChildRemoved, function(Player)
  if Players[Player] then
   if table.find(library.options["Player List"].values, Player.Name) then
    if library.hasInit then
     library.options["Player List"]:RemoveValue(Player.Name)
    end
   end
   Players[Player] = nil
   if ESPObjects[Player] then
    ESPObjects[Player].Active = false
    ESPObjects[Player].OOVArrow.Visible = false
    ESPObjects[Player].Invis()
    ESPObjects[Player].InvisChams()
    ESPObjects[Player].InvisChamsOutline()
    ESPObjects[Player].InvisRadar()
   end
  end
 end)
end

library:AddConnection(workspace.ChildAdded, function(Obj)
 if Obj.ClassName == "Camera" then
  Camera = Obj
  WTSP = Obj.WorldToScreenPoint
  WTVP = Obj.WorldToViewportPoint
 end
end)

--UI
--local RadarWindow = library:Create("Circle", {NumSides = 64, Radius = 100, Filled = true, Color = Color3.fromRGB(30, 30, 30)})
local Draw = library:Create("Circle", {
 NumSides = 64,
 Thickness = 1
})

local CrosshairTop = library:Create("Square", {
 Filled = true
})
local CrosshairLeft = library:Create("Square", {
 Filled = true
})
local CrosshairRight = library:Create("Square", {
 Filled = true
})
local CrosshairBottom = library:Create("Square", {
 Filled = true
})

--Aimbot Module
local AimbotRayParams = RaycastParams.new()
AimbotRayParams.FilterType = Enum.RaycastFilterType.Whitelist
AimbotRayParams.IgnoreWater = true

local AimbotHitboxes = {}

library.Aimbot = {
 Target = nil,
 Player = nil,
 Distance = nil,
 Position = nil,
 Position3d = nil,
 LastPosition = V3Empty,
 PositionOffset = nil,
 PositionOffset2d = nil,
 Part = nil,
 OnScreen = false,
 LastVisible = false,
 Step = 0,
 OldStep = 0,
 AutoShootStep = 0
}

library.Aimbot.Reset = function()
 library.Aimbot.Target = nil
 library.Aimbot.Player = nil
 library.Aimbot.Distance = 9e9
 library.Aimbot.Position = nil
 library.Aimbot.Position3d = nil
 library.Aimbot.LastPosition = V3Empty
 library.Aimbot.PositionOffset = nil
 library.Aimbot.PositionOffset2d = nil
 library.Aimbot.Part = nil
 library.Aimbot.OnScreen = false
 library.Aimbot.LastVisible = false
 library.Aimbot.Step = 0
 library.Aimbot.SwitchStep = 0
 library.Aimbot.AutoShootStep = 0
end

library.Aimbot.Check = function(Player, Steady, Step)
 if not Players[Player] then
  return
 end
 local Character, ClientChar = Players[Player].Character, Players[Client].Character
 if Players[Player].Health > 0.1 and Character and ClientChar then
  local MX, MY = Mouse.X, Mouse.Y
  if library.flags["Mouse Offset"] then
   MX = MX + library.flags["MXO Amount"]
   MY = MY + library.flags["MYO Amount"]
  end

  local Target
  local OldDist = 9e9
  if library.flags["Aimbot Randomize Hitbox"] then
   if library.Aimbot.Part then
    Target = GetHitboxFromChar(Character, library.Aimbot.Part)
   else
    if not Target then
     local PartName = AimbotHitboxes[math.random(1, # AimbotHitboxes)]
     Target = GetHitboxFromChar(Character, PartName)
     library.Aimbot.Part = PartName
    end
   end
  else
   for i, v in next, library.flags["Aimbot Hitboxes"] do
    if not v then
     continue
    end

    local Part = GetHitboxFromChar(Character, i)
    if not Part then
     continue
    end

    local ScreenPos = WTSP(Camera, Part.Position)
    local Dist = (Vector2.new(MX, MY) - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude

    if Dist > OldDist then
     continue
    end

    OldDist = Dist
    Target = Part   
   end
  end
  if not Target then
   return
  end

  local Position, OnScreen = WTSP(Camera, Target.Position)
  if library.flags["Aimbot Mode"] ~= "Silent" then
   if not OnScreen then
    return
   end
  end

  local DistanceFromCharacter = (Target.Position - Camera.CFrame.p).Magnitude
  if DistanceFromCharacter > library.flags["Aimbot Max Distance"] then
   return
  end

  local DistanceFromMouse = (Vector2.new(MX, MY) - Vector2.new(Position.X, Position.Y)).Magnitude
  if library.flags["Use FOV"] then
   local FoVSize = library.flags["FOV Size"]
   if DistanceFromMouse > FoVSize + (library.flags["Dynamic FOV"] and ((120 - Camera.FieldOfView) * 4) or FoVSize) then
    return
   end
  end

  local Hit
  if library.flags["Aimbot Vis Check"] or library.flags["Auto Shoot"] or library.flags["Aimbot Prioritize"] then
   Hit = RayCheck(ClientChar, Target.Position, library.flags["Aimbot Max Distance"])
   Hit = Hit and Hit.Instance and FFA(Hit.Instance, Character.Name) == Character
   if Hit then
    if library.flags["Auto Shoot"] then
     library.Aimbot.AutoShootStep = library.Aimbot.AutoShootStep + Step
     if library.Aimbot.AutoShootStep > library.flags["Auto Shoot Interval"] * 0.001 then
      library.Aimbot.AutoShootStep = 0
      if library.flags["Aimbot Mode"] == "Silent" then
       mouse1click()
      else
       AimbotRayParams.FilterDescendantsInstances = {
        Character
       }
       local Pos = Camera.CFrame.p
       if workspace:Raycast(Pos, (Camera:ScreenPointToRay(MX, MY, 10000).Origin - Pos).Unit * library.flags["Aimbot Max Distance"], AimbotRayParams) then
        mouse1click()
       end
      end
     end
    end
   else
    if library.flags["Aimbot Vis Check"] then
     return
    end
    if library.flags[GameTitle .. " Wallbang"] and library.flags["Auto Shoot"] then
     library.Aimbot.AutoShootStep = library.Aimbot.AutoShootStep + Step
     if library.Aimbot.AutoShootStep > library.flags["Auto Shoot Interval"] * 0.001 then
      library.Aimbot.AutoShootStep = 0
      mouse1click()
     end
    end
   end
  end

  library.Aimbot.PositionOffset = library.Aimbot.PositionOffset or V3Empty
  library.Aimbot.PositionOffset2d = library.Aimbot.PositionOffset2d or V3Empty
  if library.flags["Velocity Prediction"] then
   local Diff = (Target.Position - library.Aimbot.LastPosition)
   if Diff.Magnitude > (library.flags["Aimbot Mode"] == "Legit" and 0.05 or 0.01) then
    library.Aimbot.PositionOffset = Diff.Unit * library.flags["Velocity Prediction Multiplier"]
    library.Aimbot.PositionOffset2d = WTSP(Camera, Target.Position + library.Aimbot.PositionOffset) - Position
   else
    library.Aimbot.PositionOffset = V3Empty
    library.Aimbot.PositionOffset2d = V3Empty
   end
  end

  if Players[Player].Priority then
   library.Aimbot.Target = Target
   library.Aimbot.Player = Player
   library.Aimbot.Position3d = Target.Position + library.Aimbot.PositionOffset
   library.Aimbot.Position = Position + library.Aimbot.PositionOffset2d
   library.Aimbot.OnScreen = OnScreen
   return true
  end

  if not Steady then
   if library.flags["Aimbot Priority"] == "Mouse" then
    if DistanceFromMouse <= library.Aimbot.Distance then
     library.Aimbot.Distance = DistanceFromMouse
    else
     return
    end
   else
    if DistanceFromCharacter <= library.Aimbot.Distance then
     library.Aimbot.Distance = DistanceFromCharacter
    else
     return
    end
   end
  end

  if library.flags["Aimbot Prioritize"] then
   if not Hit then
    if library.Aimbot.LastVisible then
     return
    end
   end
  end

  library.Aimbot.Target = Target
  library.Aimbot.Player = Player
  library.Aimbot.Position3d = Target.Position + library.Aimbot.PositionOffset
  library.Aimbot.Position = Position + library.Aimbot.PositionOffset2d
  library.Aimbot.OnScreen = OnScreen
  return true
 end
end

library.Aimbot.Run = function(Step)
 if library.Aimbot.Check(library.Aimbot.Player, true, Step) then
  if library.flags["Aimbot Mode"] == "Legit" then
   local AimAtX, AimAtY = library.Aimbot.Position.X, library.Aimbot.Position.Y
   local MX, MY = Mouse.X, Mouse.Y

   if library.flags["Mouse Offset"] then
    MX = MX + library.flags["MXO Amount"]
    MY = MY + library.flags["MYO Amount"]
   end

   AimAtX, AimAtY = AimAtX - MX, AimAtY - MY

   --local MinDist = 10
   --local mouseSens = UserSettings():GetService"UserGameSettings".MouseSensitivity
   local Smoothness = library.flags["Aimbot Smoothness"]
   if library.flags["Aimbot Snap"] then
    if math.abs(AimAtX) >= Smoothness or math.abs(AimAtY) >= Smoothness then
     AimAtX = AimAtX / Smoothness
     AimAtY = AimAtY / Smoothness
    end
   else
    if Smoothness > 1 then
     AimAtX = AimAtX / Smoothness
     AimAtY = AimAtY / Smoothness
    end
   end

   mousemoverel(AimAtX, AimAtY)
  end

  library.Aimbot.LastPosition = library.Aimbot.Target.Position
  if library.flags["Aim Lock"] then
   return
  end
 else
  library.Aimbot.Reset()
 end
 library.Aimbot.SwitchStep = library.Aimbot.SwitchStep + Step
 if library.Aimbot.Player then
  if library.Aimbot.SwitchStep < library.flags["Aimbot Switch Delay"] * 0.001 then
   return
  end
 end
 library.Aimbot.SwitchStep = 0
 library.Aimbot.Distance = 9e9
 for Player, Data in next, Players do
  if Player == Client or Data.Whitelist then
   continue
  end
  if (library.flags["Aimbot At Teammates"] or Data.Enemy) then
   if library.Aimbot.Check(Player, false, 0) and Data.Priority then
    break
   end
  end
 end
end

local TriggerStep = 0
local function RunTriggerbot()
 local ClientChar = Players[Client].Character
 if not ClientChar then
  return
 end
 for _, Data in next, Players do
  local Character = Data.Character
  if Character and (library.flags["Triggerbot Teammates"] or Data.Enemy) then
   local MX, MY = Mouse.X, Mouse.Y
   if library.flags["Mouse Offset"] then
    MX = MX + library.flags["MXO Amount"]
    MY = MY + library.flags["MYO Amount"]
   end
   local Hit = RayCheck(ClientChar, Camera:ScreenPointToRay(MX, MY, 2000).Origin, 2000)
   if Hit and Hit.Instance then
    if library.flags["Triggerbot Hitbox"] == "Character" and Hit.Instance:IsDescendantOf(Character) or Hit.Instance.Name == library.flags["Triggerbot Hitbox"] then
     --if library.flags["Triggerbot Magnet"] then
     -- local ScreenPos = WTSP(Camera, Hit.Instance.Position)
     -- local AimAtX, AimAtY = (ScreenPos.X - Mouse.X) - MX, (ScreenPos.Y - Mouse.Y) - MY
     -- mousemoverel(AimAtX, AimAtY)
     --end
     --print"click"
     mouse1click()
    end
   end
  end
 end
end

local AimbotTab = library:AddTab"Aimbot"
local AimbotColumn = AimbotTab:AddColumn()
local AimbotColumn1 = AimbotTab:AddColumn()

local AimbotMain = AimbotColumn:AddSection"Main"
local AimbotTargeting = AimbotColumn:AddSection"Targeting"
local AimbotMisc = AimbotColumn1:AddSection"Misc"
local TriggerbotMain = AimbotColumn1:AddSection"Triggerbot"

AimbotMain:AddToggle({
 text = "Enabled",
 flag = "Aimbot",
 callback = function(State)
  Draw.Visible = State and library.flags["Use FOV"] and library.flags["Draw Circle"]
  if library.flags["Aimbot Always On"] then
   library.options["Aimbot Always On"]:SetState(true)
  end
 end
}):AddList({
 text = "Mode",
 flag = "Aimbot Mode",
 values = {
  "Legit",
  "Rage"
 },
 callback = function(Value)
  library.options["Aimbot Smoothness"].main.Visible = Value == "Legit"
  library.options["Aimbot Snap"].main.Visible = Value == "Legit"
  library.options["Mouse Offset"].main.Visible = Value == "Legit"
  library.options["MXO Amount"].main.Visible = Value == "Legit" and library.flags["Mouse Offset"]
  library.options["MYO Amount"].main.Visible = Value == "Legit" and library.flags["Mouse Offset"]
  library.options["Silent FieldOfView"].main.Visible = Value == "Silent"
  library.options["Silent HitChance"].main.Visible = Value == "Silent"
  library.options["Silent TargetPart"].main.Visible = Value == "Silent"
 end
}):AddBind({
 flag = "Aimbot Key",
 mode = "hold",
 callback = function(Ended, Step)
  if library.flags["Aimbot"] and not library.flags["Aimbot Always On"] then
   if library.open or Ended then
    library.Aimbot.Reset()
   else
    library.Aimbot.Step = library.Aimbot.Step + Step
    if library.Aimbot.Step > 0.016 then
     library.Aimbot.Step = 0
     library.Aimbot.Run(Step)
    end
   end
  end
 end
})
AimbotMain:AddToggle({
 text = "Always On",
 flag = "Aimbot Always On",
 callback = function(State)
  if not State then
   return
  end
  library:AddConnection(runService.RenderStepped, "Aimbot", function(Step)
   if library.open then
    library.Aimbot.Reset()
    return
   end
   if library.flags["Aimbot"] and library.flags["Aimbot Always On"] then
    library.Aimbot.Step = library.Aimbot.Step + Step
    if library.Aimbot.Step > 0.016 then
     library.Aimbot.Step = 0
     library.Aimbot.Run(Step)
    end
   else
    library.connections["Aimbot"]:Disconnect()
    library.Aimbot.Reset()
   end
  end)
 end
})
AimbotMain:AddSlider({
 text = "Smoothness",
 flag = "Aimbot Smoothness",
 min = 1,
 max = 40
})
AimbotMain:AddSlider({
 text = "FieldOfView",
 flag = "Silent FieldOfView",
 min = 1,
 value = 1,
 max = 360,
})
AimbotMain:AddSlider({
 text = "HitChance",
 flag = "Silent HitChance",
 min = 1,
 value = 1,
 max = 100,
})
AimbotMain:AddList({
 text = "TargetPart",
 flag = "Silent TargetPart",
 values = {
  "Random",
  "Head",
  "Torso"
 },
 value = "Random"
})
AimbotMain:AddToggle({
 text = "Velocity Prediction",
 state = false,
 callback = function(State)
  library.options["Velocity Prediction Multiplier"].main.Visible = State
 end
})
AimbotMain:AddSlider({
 text = "Multiplier",
 textpos = 2,
 flag = "Velocity Prediction Multiplier",
 min = 1,
 max = 5,
 float = 0.1
})
--AimbotMain:AddSlider({text = "Prediction Interval", min = 1, max = 1000})
AimbotMain:AddToggle({
 text = "Snap Near Target",
 flag = "Aimbot Snap"
})--:AddSlider({text = "Snap Range" flag = "Aimbot Snap Range", min = 5, max = 50})
--AimbotMain:AddToggle({text = "Curve", flag = "Aimbot Curve"}):AddSlider({text = "Size", flag = "Aimbot Curve Size", min = 1, max = 50})
AimbotMain:AddToggle({
 text = "Lock Target",
 flag = "Aim Lock"
})
AimbotMain:AddToggle({
 text = "Auto Shoot",
 callback = function(State)
  library.options["Auto Shoot Interval"].main.Visible = State
  if State then
   library.options["Triggerbot"]:SetState()
  end
 end
})
AimbotMain:AddSlider({
 text = "Interval",
 textpos = 2,
 flag = "Auto Shoot Interval",
 min = 16,
 max = 1000,
 suffix = "ms"
})
--AimbotMain:AddToggle({text = "Randomization"})
--AimbotMain:AddSlider({text = "Amount", flag = "Randomize Amount", min = 40, max = 100})
AimbotMain:AddSlider({
 text = "Target Switch Delay",
 flag = "Aimbot Switch Delay",
 min = 16,
 max = 500,
 suffix = "ms"
})
AimbotMain:AddToggle({
 text = "Ignore Spawn Protection",
 flag = "Aimbot Ignore Spawn Protection"
})

AimbotTargeting:AddToggle({
 text = "Visible Only",
 flag = "Aimbot Vis Check",
 callback = function(State)
  if State then
   --library.options["Aimbot Prioritize"]:SetState()
  end
 end
})
--AimbotTargeting:AddToggle({text = "Prioritize Visible", flag = "Aimbot Prioritize", callback = function(State)
-- if State then
--  library.options["Aimbot Vis Check"]:SetState()
-- end
--end})
AimbotTargeting:AddToggle({
 text = "At Teammates",
 flag = "Aimbot At Teammates"
})
AimbotTargeting:AddList({
 text = "Priority",
 flag = "Aimbot Priority",
 values = {
  "Mouse",
  "Distance"
 }
})
AimbotTargeting:AddList({
 text = "Hitboxes",
 flag = "Aimbot Hitboxes",
 max = 6,
 multiselect = true,
 values = UseBodyParts,
 callback = function(Values)
  for i, v in next, Values do
   if v then
    if table.find(AimbotHitboxes, i) then
     continue
    end
    table.insert(AimbotHitboxes, i)
   else
    local pos = table.find(AimbotHitboxes, i)
    if not pos then
     continue
    end
    table.remove(AimbotHitboxes, pos)
   end
  end
 end
})
AimbotTargeting:AddToggle({
 text = "Randomize Hitbox",
 flag = "Aimbot Randomize Hitbox"
})

AimbotTargeting:AddSlider({
 text = "Max Distance",
 flag = "Aimbot Max Distance",
 value = 10000,
 min = 0,
 max = 10000
})

AimbotMisc:AddToggle({
 text = "Mouse Offset",
 callback = function(State)
  if library.flags["Aimbot Mode"] == "Legit" then
   library.options["MXO Amount"].main.Visible = State
   library.options["MYO Amount"].main.Visible = State
  end
 end
})
AimbotMisc:AddSlider({
 text = "X",
 textpos = 2,
 flag = "MXO Amount",
 min = - 100,
 max = 100,
 value = 0
})
AimbotMisc:AddSlider({
 text = "Y",
 textpos = 2,
 flag = "MYO Amount",
 min = - 100,
 max = 100,
 value = 0
})
AimbotMisc:AddToggle({
 text = "Highlight Target"
}):AddColor({
 flag = "Aimbot Highlight Color",
 color = Color3.fromRGB(240, 20, 255)
})
AimbotMisc:AddToggle({
 text = "Use FOV",
 callback = function(State)
  Draw.Visible = State and library.flags["Aimbot"] and library.flags["Draw Circle"]
 end
}):AddSlider({
 text = "Size",
 flag = "FOV Size",
 min = 10,
 max = 300,
 callback = function(Value)
  if not library.flags["Dynamic FOV"] then
   Draw.Radius = Value * 2
  end
 end
})
AimbotMisc:AddToggle({
 text = "Dynamic",
 flag = "Dynamic FOV",
 callback = function(State)
  if State then
   library:AddConnection(runService.RenderStepped, "Dynamic FOV", function()
    if library and library.flags["Dynamic FOV"] then
     Draw.Radius = library.flags["FOV Size"] + ((120 - Camera.FieldOfView) * 4)
    else
     library.connections["Dynamic FOV"]:Disconnect()
     Draw.Radius = library.flags["FOV Size"] * 2
    end
   end)
  end
 end
})
AimbotMisc:AddToggle({
 text = "Draw Circle",
 callback = function(State)
  Draw.Visible = State and library.flags["Aimbot"] and library.flags["Use FOV"]
 end
}):AddColor({
 flag = "FOV Circle Color",
 Color3.fromRGB(240, 20, 255),
 trans = 1,
 callback = function(Color)
  Draw.Color = Color
 end,
 calltrans = function(Value)
  Draw.Transparency = Value
 end
})
AimbotMisc:AddToggle({
 text = "Fill",
 flag = "FOV Fill",
 callback = function(State)
  Draw.Filled = State
 end
})

TriggerbotMain:AddToggle({
 text = "Enabled",
 flag = "Triggerbot",
 callback = function(State)
  if State then
   library.options["Auto Shoot"]:SetState()
   if library.flags["Triggerbot Always On"] then
    library.options["Triggerbot Always On"]:SetState(true)
   end
  end
 end
}):AddSlider({
 text = "Delay",
 flag = "Triggerbot Delay",
 min = 16,
 max = 1000,
 suffix = "ms"
}):AddBind({
 flag = "Triggerbot Key",
 mode = "hold",
 callback = function(Ended, Step)
  if library.flags["Triggerbot"] and not library.flags["Triggerbot Always On"] then
   if not library.open then
    TriggerStep = TriggerStep + Step
    if TriggerStep > library.flags["Triggerbot Delay"] * 0.001 then
     TriggerStep = 0
     RunTriggerbot()
    end
   end
  end
 end
})
TriggerbotMain:AddToggle({
 text = "Always On",
 flag = "Triggerbot Always On",
 callback = function(State)
  if State then
   library:AddConnection(runService.RenderStepped, "Triggerbot", function(Step)
    if library.open then
     return
    end
    if library.flags["Triggerbot"] and library.flags["Triggerbot Always On"] then
     TriggerStep = TriggerStep + Step
     if TriggerStep > library.flags["Triggerbot Delay"] * 0.001 then
      TriggerStep = 0
      RunTriggerbot(Step)
     end
    else
     library.connections["Triggerbot"]:Disconnect()
    end
   end)
  end
 end
})
--TriggerbotMain:AddToggle({text = "Magnet", flag = "Triggerbot Magnet"})
TriggerbotMain:AddList({
 text = "Hitbox",
 flag = "Triggerbot Hitbox",
 values = {
  "Head",
  "Torso",
  "Character"
 }
})
TriggerbotMain:AddToggle({
 text = "At Teammates",
 flag = "Triggerbot Teammates"
})

--Esp module

local VisualsTab = library:AddTab"Visuals"
local VisualsColumn = VisualsTab:AddColumn()
local VisualsColumn1 = VisualsTab:AddColumn()
local VisualsColumn2 = VisualsTab:AddColumn()

local HealthBarAddon = Vector2.new(3)
local PlayerEspSection = VisualsColumn:AddSection"ESP"
local OldStep = 0
PlayerEspSection:AddToggle({
 text = "Enabled",
 flag = "Esp Enabled",
 callback = function(State)
  if not State then
   --RadarWindow.Visible = false
   if library.connections["Player ESP"] then
    library.connections["Player ESP"]:Disconnect()
    for _, v in next, ESPObjects do
     v.OOVArrow.Visible = false
     v.Invis()
     v.InvisChams()
     v.InvisChamsOutline()
    end
   end
   return
  end

  --RadarWindow.Visible = library.flags["Radar Enabled"]
  library:AddConnection(runService.RenderStepped, "Player ESP", function(Step)
   OldStep = OldStep + Step
   if OldStep < 0.016 then
    return
   end
   OldStep = 0
   for Player, Data in next, Players do
    if Player == Client then
     continue
    end
    local Objects = ESPObjects[Player]
    local Character = Data.Character
    local Show
    local Team = Data.Enemy
    if Data.Whitelist then
     Show = library.flags["Esp Show Whitelisted"]
    else
     Show = Data.Priority or library.flags["Esp Enabled For"][Team and "Enemies" or "Teammates"]
    end
    if Show and Character then
     local Health = Data.Health
     if Health > 0.1 then
      Team = Team and "Enemy" or "Team"
      local Pos, Size = GBB(Character)
      local RootPart = FFC(Character, "HumanoidRootPart")
      if RootPart and (Pos.Position - RootPart.Position).Magnitude > 5 then
       Pos = RootPart.CFrame
      end
      local Distance = (Camera.CFrame.p - Pos.Position).Magnitude
      if Distance < library.flags["Esp Max Distance"] then
       local ScreenPosition, OnScreen = WTVP(Camera, Pos.Position)
       local ClientChar = Players[Client].Character
       local Ignores = {
        Camera,
        ClientChar
       }
       if GameTitle == "Bad Business" then
        Ignores[3] = FFC(workspace, "Arms")
        --Ignores[4] = ClientChar and FFC(workspace, ClientChar.Backpack.Equipped.Value.Name)
        Ignores[5] = workspace.NonProjectileGeometry
        Ignores[6] = workspace.Effects
        Ignores[7] = workspace.Spawns
        Ignores[8] = workspace.Ragdolls
        Ignores[9] = workspace.Gameplay
        Ignores[10] = workspace.Throwables
       elseif GameTitle == "Phantom Forces" then
        Ignores[3] = workspace.Ignore
       end
       if library.flags[GameTitle .. " Visible Check"] then
        local Hit = RayCheck(ClientChar, Pos.Position, Distance)
        Hit = Hit and Hit.Instance and FFA(Hit.Instance, Character.Name)
        Hit = Hit and Hit == Character
       end
       local Occluded = Hit and " " or " Occluded "
       local Visible = true
       if library.flags[Team .. " Visible Only"] then
        Visible = Hit ~= nil
       end
       local Color = (library.flags["Highlight Target"] and library.Aimbot.Player == Player and library.flags["Aimbot Highlight Color"])
       Color = Color or (Data.Priority and library.flags["Player Priority Color"] or Data.Whitelist and library.flags["Player Whitelist Color"])
       Color = Color or (GameTitle == "KAT" and (workspace.Gamemode.Value == "Murder" and ((FFC(Player.Backpack, "Knife") or FFC(Character, "Knife")) and library.flags[GameTitle .. " Murderer Color"] or (FFC(Player.Backpack, "Revolver") or FFC(Character, "Revolver")) or library.flags[GameTitle .. " Sheriff Color"])) or GameTitle == "MURDER" and ((Player.Status.Role.Value == "Murderer" and library.flags[GameTitle .. " Murderer Color"]) or (Player.Status.HasRevolver.Value and library.flags[GameTitle .. " Detective Color"])) or GameTitle == "Arsenal" and Player.NRPBS.EquippedTool.Value:find("Golden") and library.flags[GameTitle .. " Golden Weapon Color"])

       --
       if library.flags["Radar Enabled"] and Distance < RadarWindow.Radius then
        Objects.RadarBlip.Visible = true
        local RelativePos = Camera.CFrame:Inverse() * Pos.Position
        local Middle = Camera.ViewportSize / 2
        local Degrees = math.deg(math.atan2(- RelativePos.Y, RelativePos.X)) * math.pi / 180
        local EndPos = Middle + (Vector2.new(math.cos(Degrees), math.sin(Degrees)) * Distance)
        Objects.RadarBlip.Position = EndPos
        Objects.RadarBlip.Color = Color or Color3.new(1, 1, 1)
        if not Objects.Visible then
         continue
        end
       else
        Objects.RadarBlip.Visible = false
       end
       --]]
       if Visible then
        local Transparency = (library.Aimbot.Player == Player or Data.Priority) and 1 or 1 - (Distance / library.flags["Esp Max Distance"])
        if OnScreen then
         Objects.Visible = true
         Objects.OOVArrow.Visible = false

         --local xMin, yMin = 9e9, 9e9
         --local xMax, yMax = 0, 0
         local BoxColor = Color or library.flags[Team .. Occluded .. "Box Color"]
         local TextColor = Color or library.flags[Team .. Occluded .. "Info Color"]
         local ToolColor = Color or library.flags[Team .. Occluded .. "Tool Color"]
         local InventoryColor = Color or library.flags[Team .. Occluded .. "Inventory Color"]
         local LookColor = Color or library.flags[Team .. Occluded .. "Look Color"]
         local ChamsColor = Color or library.flags[Team .. Occluded .. "Chams Color"]
         local ChamsOutlineColor = Color or library.flags[Team .. Occluded .. "Chams Outline Color"]
         local DirectionColor = Color or library.flags[Team .. Occluded .. "Direction Color"]

         --Chams
         if library.flags[Team .. " Chams Enabled"] and Distance < 600 then
          Objects.ChamsVisible = true
          Objects.Chams.Parent = library.base
          Objects.ChamsStep = Objects.ChamsStep + Step
          if Objects.ChamsStep > 0.2 then
           Objects.ChamsStep = 0
           for _, PartName in next, UseBodyParts do
            local Part = FFC((GameTitle == "Bad Business" and Character.Body or Character), PartName, true)
            if Part then
             local Cham = FFC(Objects.Chams, PartName) or (function()
              return library:Create("BoxHandleAdornment", {
               Name = PartName,
               AlwaysOnTop = true,
               ZIndex = 2,
               Parent = Objects.Chams
              })
             end)()
             Cham.Size = Part.Size
             Cham.Adornee = Part
             Cham.Transparency = library.flags[Team .. " Chams Transparency"]
             Cham.Color3 = ChamsColor
             if library.flags[Team .. " Chams Outline"] then
              Objects.ChamsOutlineVisible = true
              Objects.ChamsOutline.Parent = library.base
              Cham = FFC(Objects.ChamsOutline, PartName) or (function()
               return library:Create("BoxHandleAdornment", {
                Name = PartName,
                AlwaysOnTop = true,
                ZIndex = 1,
                Parent = Objects.ChamsOutline
               })
              end)()
              Cham.Size = Part.Size * 1.2
              Cham.Adornee = Part
              Cham.Transparency = library.flags[Team .. " Chams Transparency"]
              Cham.Color3 = ChamsOutlineColor
             else
              if Objects.ChamsOutlineVisible then
               Objects.InvisChamsOutline()
              end
             end
            else
             local Cham = FFC(Objects.Chams, PartName)
             if Cham then
              Cham.Visible = false
             end
             Cham = FFC(Objects.ChamsOutline, PartName)
             if Cham then
              Cham.Visible = true
             end
            end
           end
          end
         else
          if Objects.ChamsVisible then
           Objects.InvisChams()
           Objects.InvisChamsOutline()
          end
         end

         --ESP
         local Height = (Camera.CFrame - Camera.CFrame.p) * Vector3.new(0, (math.clamp(Size.Y, 1, 10) + 0.5) / 2, 0)
         Height = math.abs(WTSP(Camera, Pos.Position + Height).Y - WTSP(Camera, Pos.Position - Height).Y)
         --local ViewportSize = Camera.ViewportSize
         --local Size = ((ViewportSize.X + ViewportSize.Y) / Distance) * (1 - (Camera.FieldOfView / 200))
         Size = library.round(Vector2.new(Height / 2, Height))
         local Position = library.round(Vector2.new(ScreenPosition.X, ScreenPosition.Y) - (Size / 2))
         if library.flags[Team .. " Box Enabled"] then
          Objects.Box.Visible = true
          Objects.Box.Color = BoxColor
          Objects.Box.Size = Size
          Objects.Box.Position = Position
          Objects.Box.Transparency = Transparency
          Objects.BoxOutline.Visible = true
          Objects.BoxOutline.Size = Size + V222
          Objects.BoxOutline.Position = Position - V211
          Objects.BoxOutline.Transparency = Transparency
          Objects.BoxInline.Visible = true
          Objects.BoxInline.Size = Size - V222
          Objects.BoxInline.Position = Position + V211
          Objects.BoxInline.Transparency = Transparency
         else
          Objects.Box.Visible = false
          Objects.BoxOutline.Visible = false
          Objects.BoxInline.Visible = false
         end
         if library.flags[Team .. " Health Enabled"] then
          local MaxHealth = Data.MaxHealth
          local HealthPerc = Health / MaxHealth
          local Position = Position - HealthBarAddon
          local Size = Vector2.new(1, Size.Y)
          Objects.BarOutline.Visible = true
          Objects.BarOutline.Position = Position - V211
          Objects.BarOutline.Size = Size + V222
          Objects.BarOutline.Transparency = Transparency
          Objects.Bar.Visible = true
          Objects.Bar.Color = Color3.new(1 - HealthPerc, HealthPerc, 0.2)
          Objects.Bar.Position = Position + Vector2.new(0, Size.Y)
          Objects.Bar.Size = Vector2.new(1, - Size.Y * HealthPerc)
          Objects.Bar.Transparency = Transparency
          Objects.HealthText.Visible = HealthPerc < 0.99
          Objects.HealthText.Position = Objects.Bar.Position + Objects.Bar.Size - Vector2.new(0, 7)
          Objects.HealthText.Text = tostring(library.round(Health)) or ""
          Objects.HealthText.Transparency = Transparency
         else
          Objects.BarOutline.Visible = false
          Objects.Bar.Visible = false
          Objects.HealthText.Visible = false
         end
         if library.flags[Team .. " Info"] then
          Objects.NameText.Visible = true
          Objects.NameText.Text = GameTitle == "Blackhawk Rescue Mission" and (Player.ClassName == "Model" and (Player.Name:find("Infantry") and "Infantry" or "Civilian")) or Player.Name
          Objects.NameText.Position = Position + Vector2.new(Size.X / 2, - Objects.NameText.TextBounds.Y - 1)
          Objects.NameText.Color = TextColor
          Objects.NameText.Transparency = Transparency
          Objects.DistanceText.Visible = true
          Objects.DistanceText.Text = "[" .. library.round(Distance) .. "m]"
          Objects.DistanceText.Position = Position + Vector2.new(Size.X / 2, Size.Y + 2)
          Objects.DistanceText.Color = TextColor
          Objects.DistanceText.Transparency = Transparency
         else
          Objects.NameText.Visible = false
          Objects.DistanceText.Visible = false
         end
         if library.flags[Team .. " Tool"] then
          Objects.ToolText.Visible = true
          if Character:FindFirstChildOfClass("Tool") then
           Objects.ToolText.Text = "[" .. Character:FindFirstChildOfClass("Tool").Name .. "]"
          else
           Objects.ToolText.Visible = false
          end
          Objects.ToolText.Position = Position + Vector2.new(Size.X / 16, Size.Y + 16)
          Objects.ToolText.Color = ToolColor
          Objects.ToolText.Transparency = Transparency
         else
          Objects.ToolText.Visible = false
         end
         local function getPlayerFromCharacter(character)
          for _, player in pairs(game:GetService("Players"):GetPlayers()) do
           if player.Character == character then
            return player
           end
          end
         end
         local function getToolFromPlayer(player)
          local t = {}
          for _, Tool in next, player.Backpack:GetChildren() do
           if Tool:IsA("Tool") then
            table.insert(t, Tool.Name)
           end
          end
          if t[1] and not t[2] then
           return t[1]
          end
          if t[2] and not t[3] then
           return t[1] .. ", " .. t[2]
          end
          if t[3] and not t[4] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3]
          end
          if t[4] and not t[5] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4]
          end
          if t[5] and not t[6] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4] .. ", " .. t[5]
          end
          if t[6] and not t[7] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4] .. ", " .. t[5] .. ", " .. t[6]
          end
          if t[7] and not t[8] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4] .. ", " .. t[5] .. ", " .. t[6] .. ", " .. t[7]
          end
          if t[8] and not t[9] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4] .. ", " .. t[5] .. ", " .. t[6] .. ", " .. t[7] .. ", " .. t[8]
          end
          if t[9] and not t[10] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4] .. ", " .. t[5] .. ", " .. t[6] .. ", " .. t[7] .. ", " .. t[8] .. ", " .. t[9]
          end
          if t[10] and not t[11] then
           return t[1] .. ", " .. t[2] .. ", " .. t[3] .. ", " .. t[4] .. ", " .. t[5] .. ", " .. t[7] .. ", " .. t[7] .. ", " .. t[8] .. ", " .. t[9] .. ", " .. t[10]
          end
         end
         if library.flags[Team .. " Inventory"] then
          Objects.InventoryText.Visible = true
          if getPlayerFromCharacter(Character).Backpack:FindFirstChildOfClass("Tool") then
           Objects.InventoryText.Text = "[" .. getToolFromPlayer(getPlayerFromCharacter(Character)) .. "]"
          else
           Objects.InventoryText.Visible = false
          end
          Objects.InventoryText.Position = Position + Vector2.new(Size.X / 30, Size.Y + 30)
          Objects.InventoryText.Color = InventoryColor
          Objects.InventoryText.Transparency = Transparency
         else
          Objects.InventoryText.Visible = false
         end
         if library.flags[Team .. " Look Enabled"] then
          HeadPosition = GetHitboxFromChar(Character, "Head")
          if HeadPosition then
           Objects.LookAt.Visible = true
           HeadPosition1 = WTVP(Camera, HeadPosition.Position)
           local To = WTVP(Camera, HeadPosition.Position + (HeadPosition.CFrame.LookVector * 8))
           Objects.LookAt.From = Vector2.new(HeadPosition1.X, HeadPosition1.Y)
           Objects.LookAt.To = Vector2.new(To.X, To.Y)
           Objects.LookAt.Color = LookColor
           Objects.LookAt.Transparency = Transparency
          else
           Objects.LookAt.Visible = false
          end
         else
          Objects.LookAt.Visible = false
         end
         if library.flags[Team .. " Direction Enabled"] then
          Objects.DirectionLine.Visible = true
          Position = Position + (Size / 2)
          local PositionOffset2d = V2Empty
          local Diff = (Pos.Position - Data.LastPosition)
          if Diff.Magnitude > 0.01 then
           PositionOffset2d = library.round(Vector2.new(WTSP(Camera, Pos.Position + (Diff.Unit * 4)).X, Position.Y) - Position)
          end
          Objects.DirectionLine.From = Position
          Objects.DirectionLine.To = Position + PositionOffset2d
          Objects.DirectionLine.Color = DirectionColor
          Objects.DirectionLine.Transparency = Transparency
          if Distance < 600 then
           Objects.DirectionDot.Visible = true
           Objects.DirectionDot.Position = Objects.DirectionLine.To - V233
           Objects.DirectionDot.Color = DirectionColor
           Objects.DirectionDot.Transparency = Transparency
          else
           Objects.DirectionDot.Visible = false
          end
         else
          Objects.DirectionLine.Visible = false
          Objects.DirectionDot.Visible = false
         end
         Data.LastPosition = Pos.Position
         continue
        end
        if library.flags[Team .. " OOV Arrows"] then
         Objects.OOVArrow.Visible = true
         Objects.OOVArrow.Color = Color or library.flags[Team .. Occluded .. "OOV Arrows Color"]
         local RelativePos = Camera.CFrame:Inverse() * Pos.Position
         local Middle = Camera.ViewportSize / 2
         local Degrees = math.deg(math.atan2(- RelativePos.Y, RelativePos.X)) * math.pi / 180
         local EndPos = Middle + (Vector2.new(math.cos(Degrees), math.sin(Degrees)) * library.flags[Team .. " Out Of View Scale"])
         Objects.OOVArrow.PointB = EndPos + (- (Middle - EndPos).Unit * 15)
         Objects.OOVArrow.PointA = EndPos
         Objects.OOVArrow.PointC = EndPos
         Objects.OOVArrow.Transparency = Transparency
         if not Objects.Visible then
          continue
         end
        end
       end
      end
     end
    end
    Objects.OOVArrow.Visible = false
    if Objects.Visible then
     Objects.Invis()
     Objects.InvisChams()
     Objects.InvisChamsOutline()
     Objects.InvisRadar()
    end
   end
  end)
 end
}):AddList({
 flag = "Esp Enabled For",
 values = {
  "Enemies",
  "Teammates"
 },
 multiselect = true
}):AddBind({
 callback = function()
  library.options["Esp Enabled"]:SetState(not library.flags["Esp Enabled"])
 end
})
PlayerEspSection:AddSlider({
 text = "Max Distance",
 textpos = 2,
 flag = "Esp Max Distance",
 value = 10000,
 min = 0,
 max = 10000
})
PlayerEspSection:AddToggle({
 text = "Show Whitelisted Players",
 flag = "Esp Show Whitelisted"
})

--PlayerEspSection:AddDivider"Radar"
--PlayerEspSection:AddToggle({text = "Enabled", flag = "Radar Enabled", callback = function(State)
-- RadarWindow.Visible = State and library.flags["Esp Enabled"]
--end})
local VisualsWorld = VisualsColumn:AddSection"Lighting"
VisualsWorld:AddToggle({
 text = "Clock Time"
}):AddSlider({
 flag = "Clock Time Amount",
 min = 0,
 max = 24,
 float = 0.1,
 value = LightingSpoof.ClockTime
})
VisualsWorld:AddToggle({
 text = "Brightness"
}):AddSlider({
 flag = "Brightness Amount",
 min = 0,
 max = 100,
 float = 0.1,
 value = LightingSpoof.Brightness
})
VisualsWorld:AddToggle({
 text = "Ambient",
 flag = "Ambient Lighting"
}):AddColor({
 flag = "Outdoor Ambient",
 color = LightingSpoof.OutdoorAmbient
}):AddColor({
 flag = "Indoor Ambient",
 color = LightingSpoof.Ambient
})
VisualsWorld:AddToggle({
 text = "Color Shift"
}):AddColor({
 flag = "Color Shift Top",
 color = LightingSpoof.ColorShift_Top
})

local VisualsMiscSection = VisualsColumn:AddSection"Misc"

VisualsMiscSection:AddToggle({
 text = "FOV Changer",
 callback = function(State)
  library.options["Dynamic Custom FOV"].main.Visible = State
 end
}):AddSlider({
 flag = "FOV Amount",
 min = 0,
 max = 120
})
VisualsMiscSection:AddToggle({
 text = "Dynamic",
 flag = "Dynamic Custom FOV"
})
VisualsMiscSection:AddToggle({
 text = "Zoom",
 flag = "FOV Zoom Enabled"
}):AddSlider({
 flag = "FOV Zoom Amount",
 min = 5,
 max = 50
}):AddBind({
 flag = "FOV Zoom Key",
 mode = "hold"
})

VisualsMiscSection:AddDivider"Crosshair"
VisualsMiscSection:AddToggle({
 text = "Enabled",
 flag = "Crosshair Enabled",
 callback = function(State)
  library.options["Crosshair T-Shape"].main.Visible = State
  library.options["Crosshair Size"].main.Visible = State
  library.options["Crosshair Gap"].main.Visible = State
  library.options["Crosshair Thickness"].main.Visible = State
  CrosshairTop.Visible = State and not library.flags["Crosshair T-Shape"]
  CrosshairLeft.Visible = State
  CrosshairRight.Visible = State
  CrosshairBottom.Visible = State
 end
}):AddColor({
 callback = function(Color)
  CrosshairTop.Color = Color
  CrosshairLeft.Color = Color
  CrosshairRight.Color = Color
  CrosshairBottom.Color = Color
 end,
 trans = 1,
 calltrans = function(Transparency)
  CrosshairTop.Transparency = Transparency
  CrosshairLeft.Transparency = Transparency
  CrosshairRight.Transparency = Transparency
  CrosshairBottom.Transparency = Transparency
 end
})
VisualsMiscSection:AddToggle({
 text = "T-Shape",
 flag = "Crosshair T-Shape",
 callback = function(State)
  CrosshairTop.Visible = library.flags["Crosshair Enabled"] and not State
 end
})
VisualsMiscSection:AddSlider({
 text = "Size",
 textpos = 2,
 flag = "Crosshair Size",
 min = 1,
 max = 500,
 callback = function(Value)
  local Thickness = library.flags["Crosshair Thickness"]
  CrosshairTop.Size = Vector2.new(Thickness, - Value)
  CrosshairLeft.Size = Vector2.new(- Value, Thickness)
  CrosshairRight.Size = Vector2.new(Value, Thickness)
  CrosshairBottom.Size = Vector2.new(Thickness, Value)
 end
})
VisualsMiscSection:AddSlider({
 text = "Gap",
 textpos = 2,
 flag = "Crosshair Gap",
 min = 0,
 max = 20,
 float = 0.5
})
VisualsMiscSection:AddSlider({
 text = "Thickness",
 textpos = 2,
 flag = "Crosshair Thickness",
 min = 1,
 max = 20,
 float = 0.5,
 callback = function(Value)
  local Size = library.flags["Crosshair Size"]
  CrosshairTop.Size = Vector2.new(Value, - Size)
  CrosshairLeft.Size = Vector2.new(- Size, Value)
  CrosshairRight.Size = Vector2.new(Size, Value)
  CrosshairBottom.Size = Vector2.new(Value, Size)
 end
})

local PlayerEspEnemySection = VisualsColumn1:AddSection"Enemies"
PlayerEspEnemySection:AddToggle({
 text = "Visible Only",
 flag = "Enemy Visible Only"
})

PlayerEspEnemySection:AddToggle({
 text = "Visible Check",
})

PlayerEspEnemySection:AddToggle({
 text = "Box",
 flag = "Enemy Box Enabled"
}):AddColor({
 flag = "Enemy Occluded Box Color",
 color = Color3.fromRGB(245, 120, 65)
}):AddColor({
 flag = "Enemy Box Color",
 color = Color3.fromRGB(240, 40, 50)
})

PlayerEspEnemySection:AddToggle({
 text = "Info",
 flag = "Enemy Info"
}):AddColor({
 flag = "Enemy Occluded Info Color",
 color = Color3.fromRGB(255, 140, 30)
}):AddColor({
 flag = "Enemy Info Color",
 color = Color3.fromRGB(240, 30, 40)
})

PlayerEspEnemySection:AddToggle({
 text = "Tool",
 flag = "Enemy Tool"
}):AddColor({
 flag = "Enemy Occluded Tool Color",
 color = Color3.fromRGB(255, 140, 30)
}):AddColor({
 flag = "Enemy Tool Color",
 color = Color3.fromRGB(240, 30, 40)
})

PlayerEspEnemySection:AddToggle({
 text = "Inventory",
 flag = "Enemy Inventory"
}):AddColor({
 flag = "Enemy Occluded Inventory Color",
 color = Color3.fromRGB(255, 140, 30)
}):AddColor({
 flag = "Enemy Inventory Color",
 color = Color3.fromRGB(240, 30, 40)
})

PlayerEspEnemySection:AddToggle({
 text = "Health",
 flag = "Enemy Health Enabled"
})

PlayerEspEnemySection:AddToggle({
 text = "Out Of View",
 flag = "Enemy OOV Arrows",
 callback = function(State)
  library.options["Enemy Out Of View Scale"].main.Visible = State
 end
}):AddColor({
 flag = "Enemy Occluded OOV Arrows Color",
 color = Color3.fromRGB(255, 140, 30)
}):AddColor({
 flag = "Enemy OOV Arrows Color",
 color = Color3.fromRGB(240, 30, 40)
})
PlayerEspEnemySection:AddSlider({
 text = "Scale",
 textpos = 2,
 flag = "Enemy Out Of View Scale",
 min = 100,
 max = 500
})

PlayerEspEnemySection:AddToggle({
 text = "Look Direction",
 flag = "Enemy Look Enabled"
}):AddColor({
 flag = "Enemy Occluded Look Color",
 color = Color3.fromRGB(240, 120, 80)
}):AddColor({
 flag = "Enemy Look Color",
 color = Color3.fromRGB(240, 60, 20)
})

--PlayerEspEnemySection:AddToggle({text = "Velocity", flag = "Enemy Direction Enabled"}):AddColor({flag = "Enemy Occluded Direction Color", color = Color3.fromRGB(240, 120, 80)}):AddColor({flag = "Enemy Direction Color", color = Color3.fromRGB(240, 60, 20)})

PlayerEspEnemySection:AddToggle({
 text = "Chams",
 flag = "Enemy Chams Enabled"
}):AddSlider({
 text = "Transparency",
 flag = "Enemy Chams Transparency",
 min = 0,
 max = 1,
 float = 0.1
}):AddColor({
 flag = "Enemy Occluded Chams Color",
 color = Color3.fromRGB(245, 120, 65)
}):AddColor({
 flag = "Enemy Chams Color",
 color = Color3.fromRGB(240, 40, 50)
})
PlayerEspEnemySection:AddToggle({
 text = "Outline",
 flag = "Enemy Chams Outline"
}):AddColor({
 flag = "Enemy Occluded Chams Outline Color",
 color = Color3.fromRGB(245, 120, 65)
}):AddColor({
 flag = "Enemy Chams Outline Color",
 color = Color3.fromRGB(240, 40, 50)
})

local PlayerEspTeamSection = VisualsColumn1:AddSection"Teammates"
PlayerEspTeamSection:AddToggle({
 text = "Visible Only",
 flag = "Team Visible Only"
})

PlayerEspTeamSection:AddToggle({
 text = "Box",
 flag = "Team Box Enabled"
}):AddColor({
 flag = "Team Occluded Box Color",
 color = Color3.fromRGB(20, 50, 255)
}):AddColor({
 flag = "Team Box Color",
 color = Color3.fromRGB(40, 255, 180)
})

PlayerEspTeamSection:AddToggle({
 text = "Info",
 flag = "Team Info"
}):AddColor({
 flag = "Team Occluded Info Color",
 color = Color3.fromRGB(20, 120, 255)
}):AddColor({
 flag = "Team Info Color",
 color = Color3.fromRGB(40, 240, 130)
})

PlayerEspTeamSection:AddToggle({
 text = "Health",
 flag = "Team Health Enabled"
})

PlayerEspTeamSection:AddToggle({
 text = "Out Of View",
 flag = "Team OOV Arrows",
 callback = function(State)
  library.options["Team Out Of View Scale"].main.Visible = State
 end
}):AddColor({
 flag = "Team Occluded OOV Arrows Color",
 color = Color3.fromRGB(20, 120, 255)
}):AddColor({
 flag = "Team OOV Arrows Color",
 color = Color3.fromRGB(40, 240, 130)
})
PlayerEspTeamSection:AddSlider({
 text = "Scale",
 textpos = 2,
 flag = "Team Out Of View Scale",
 min = 100,
 max = 500
})

PlayerEspTeamSection:AddToggle({
 text = "Look Direction",
 flag = "Team Look Enabled"
}):AddColor({
 flag = "Team Occluded Look Color",
 color = Color3.fromRGB(40, 80, 230)
}):AddColor({
 flag = "Team Look Color",
 color = Color3.fromRGB(40, 250, 100)
})

--PlayerEspTeamSection:AddToggle({text = "Velocity", flag = "Team Direction Enabled"}):AddColor({flag = "Team Occluded Direction Color", color = Color3.fromRGB(240, 120, 80)}):AddColor({flag = "Team Direction Color", color = Color3.fromRGB(240, 60, 20)})

PlayerEspTeamSection:AddToggle({
 text = "Chams",
 flag = "Team Chams Enabled"
}):AddSlider({
 text = "Transparency",
 flag = "Team Chams Transparency",
 min = 0,
 max = 1,
 float = 0.1
}):AddColor({
 flag = "Team Occluded Chams Color",
 color = Color3.fromRGB(20, 50, 255)
}):AddColor({
 flag = "Team Chams Color",
 color = Color3.fromRGB(40, 255, 180)
})
PlayerEspTeamSection:AddToggle({
 text = "Outline",
 flag = "Team Chams Outline"
}):AddColor({
 flag = "Team Occluded Chams Outline Color",
 color = Color3.fromRGB(80, 100, 255)
}):AddColor({
 flag = "Team Chams Outline Color",
 color = Color3.fromRGB(80, 255, 200)
})

local VisualsViewModel = VisualsColumn2:AddSection"ViewModel"

VisualsViewModel:AddToggle({
 text = "ViewModel",
})

--Misc stuff
local MiscTab = library:AddTab"Misc"
local MiscColumn = MiscTab:AddColumn()
local MiscColumn1 = MiscTab:AddColumn()
local MiscMain = MiscColumn:AddSection"Main"
MiscMain:AddButton({
 text = "Copy Discord invite",
 callback = function()
  setclipboard("https://discord.gg/pEPKZS2Xc6")
 end
})
if syn then
 MiscMain:AddSlider({
  text = "Set FPS Cap",
  min = 60,
  value = 300,
  max = 300,
  callback = function(Value)
   setfpscap(Value)
  end
 })
end
local Lagging
MiscMain:AddToggle({
 text = "Lag Switch",
 callback = function()
  Lagging = false
  Settings.Network.IncomingReplicationLag = 0
 end
}):AddSlider({
 text = "Timeout",
 flag = "Lag Switch Timeout",
 min = 1,
 max = 10,
 float = 0.1,
 suffix = "s"
}):AddBind({
 callback = function()
  if library.flags["Lag Switch"] then
   Lagging = not Lagging
   Settings.Network.IncomingReplicationLag = Lagging and 1000 or 0
   if Lagging then
    local LagStart = tick()
    while Lagging do
     wait(1)
     if tick() - LagStart >= library.flags["Lag Switch Timeout"] then
      library.options["Lag Switch"].callback()
     end
    end
   end
  end
 end
})

local MiscClient = MiscColumn:AddSection"Client"

MiscClient:AddToggle({
 text = "Hide Name",
 callback = function(State)
  if State then
   for i, v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
     if v.Text == game:GetService("Players").LocalPlayer.Name then
      v.Text = "nil"
     end
    end
   end
  else
   for i, v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
     if v.Text == "nil" then
      v.Text = game:GetService("Players").LocalPlayer.Name
     end
    end
   end
  end
 end
})

local PlayerList = MiscColumn1:AddSection"Player List"
PlayerList:AddList({
 flag = "Player List",
 textpos = 2,
 skipflag = true,
 max = 10,
 values = (function()
  local t = {}
  for _, Player in next, PlayerServ:GetPlayers() do
   if Player ~= Client then
    table.insert(t, Player.Name)
   end
  end
  return t
 end)(),
 callback = function(Value)
  PlayerList = Value
  local Player = Players[FFC(PlayerServ, Value)]
  library.options["Set Player Priority"]:SetState(Player and Player.Priority, true)
  library.options["Set Player Whitelist"]:SetState(Player and Player.Whitelist, true)
 end
})
PlayerList:AddToggle({
 text = "Priority",
 skipflag = true,
 style = 2,
 flag = "Set Player Priority",
 callback = function(State)
  local Player = Players[FFC(PlayerServ, library.flags["Player List"])]
  if Player then
   Player.Priority = State
   if State then
    library.options["Set Player Whitelist"]:SetState(false)
   end
  end
 end
}):AddColor({
 flag = "Player Priority Color",
 color = Color3.fromRGB(255, 255, 0)
})
PlayerList:AddToggle({
 text = "Team",
 skipflag = true,
 style = 2,
 flag = "Set Player Whitelist",
 callback = function(State)
  local Player = Players[FFC(PlayerServ, library.flags["Player List"])]
  if Player then
   Player.Whitelist = State
   game:GetService("Players"):FindFirstChild(tostring(PlayerList)).Team = nil
   if State then
    library.options["Set Player Priority"]:SetState(false)
    if not game:GetService("Teams"):FindFirstChild("Whitelist") then
     local Whitelist = Instance.new("Team")
     Whitelist.Name = "Whitelist"
     Whitelist.AutoAssignable = false
     Whitelist.Parent = game:GetService("Teams")
    end
    game:GetService("Players"):FindFirstChild(tostring(PlayerList)).Team = game:GetService("Teams").Whitelist
   end
  end
 end
}):AddColor({
 flag = "Player Whitelist Color",
 color = Color3.fromRGB(0, 255, 255)
})


--Hooks
local OldCallingScript
OldCallingScript = hookfunction(getcallingscript, function()
 return OldCallingScript() or {}
end)

local Old_new
Old_new = hookmetamethod(game, "__newindex", function(t, i, v)
 if checkcaller() or not library then
  return Old_new(t, i, v)
 end

 if t == Camera then
  if i == "CFrame" then
   --CameraCF = v
   if library.flags["Freecam Enabled"] and library.flags["Freecam Key"] then
    --v = CFrame.new(FreecamPos, CameraCF.LookVector)
   else
    if library.flags["Aimbot Mode"] == "Rage" then
     if library.Aimbot.Position3d then
      v = CFrame.new(v.p, library.Aimbot.Position3d)
     end
    end
   end
  elseif i == "CameraSubject" then
   --CameraSubject = v
   --print("setting subject")
   --return not (library.flags["Freecam Enabled"] and library.flags["Freecam Key"]) and CameraSubject or nil
  elseif i == "CameraType" then
   --CameraType = v
   --print("setting type")
   --return (library.flags["Freecam Enabled"] and library.flags["Freecam Key"]) and "Scriptable" or CameraType
  end
 end

 if GameTitle == "Bad Business" then
  if i == "Velocity" then
   if library.flags["Jump Multiplier"] ~= 1 then
    if OldCallingScript().Name == "ControlScript" then
     v = Vector3.new(v.X, v.Y * library.flags[GameTitle .. " Jump Multiplier"], v.Z)
    end
   end
   if library.flags["Speed Multiplier"] ~= 1 then
    if t.Name == "Root" then
     local X, Y, Z = v.X * library.flags[GameTitle .. " Speed Multiplier"], v.Y, v.Z * library.flags[GameTitle .. " Speed Multiplier"]
     v = Vector3.new(X, Y, Z)
    end
   end
  end
 elseif GameTitle == "Ace Of Spadez" then
  if library.flags[GameTitle .. " No Recoil"] then
   if t == Camera and i == "CFrame" then
    if OldCallingScript().Name == "WeaponSystem" then
     return
    end
   end
  end
 elseif GameTitle == "Counter Blox" then
  if i == "WalkSpeed" then
   if library.flags[GameTitle .. " Bhop"] and not inputService:GetFocusedTextBox() then
    if inputService:IsKeyDown(Enum.KeyCode.Space) then
     v = library.flags[GameTitle .. " Bhop Speed"]
    end
   end
  end
 end

 if t == Lighting then
  if i == "ClockTime" then
   LightingSpoof[i] = v
   v = library.flags["ClockTime"] and library.flags["Clock Time Amount"] or v
  elseif i == "Brightness" then
   LightingSpoof[i] = v
   v = library.flags["Brightness"] and library.flags["Brightness Amount"] or v
  elseif i == "Ambient" or i == "OutdoorAmbient" then
   LightingSpoof[i] = v
   v = library.flags["Ambient Lighting"] and (i == "Ambient" and library.flags["Indoor Ambient"] or library.flags["Outdoor Ambient"]) or v
  elseif i == "ColorShift_Top" then
   LightingSpoof[i] = v
   v = library.flags["Color Shift"] and library.flags["Color Shift Top"] or v
  end
 elseif t == Camera then
  if i == "FieldOfView" then
   CameraSpoof[i] = v
   v = (library.flags["FOV Zoom Enabled"] and library.flags["FOV Zoom Key"] and (50 - library.flags["FOV Zoom Amount"])) or library.flags["FOV Changer"] and (library.flags["Dynamic Custom FOV"] and (CameraSpoof.FieldOfView + library.flags["FOV Amount"]) or library.flags["FOV Amount"]) or v
  end
 end

 return Old_new(t, i, v)
end)

local Old_index
Old_index = hookmetamethod(game, "__index", function(t, i)
 if checkcaller() or not library then
  return Old_index(t, i)
 end

 if t == Camera then
  if i == "CFrame" then
   if library.flags["Freecam Enabled"] and library.flags["Freecam Key"] then
    --return CameraCF
   end
   if library.Aimbot.Position3d then
    if library.flags["Aimbot Mode"] == "Silent" then
     if GameTitle == "Bad Business" then
      if OldCallingScript().Name == "ItemControlScript" then
       local OldCF = Old_index(t, i)
       return CFrame.new(OldCF.Position, library.Aimbot.Position3d)
      end
     end
    elseif library.flags["Aimbot Mode"] == "Rage" then
     return CFrame.new(Old_index(t, i).Position, library.Aimbot.Position3d)
    end
   end
  elseif i == "CameraSubject" then
   --return CameraSubject
  elseif i == "CameraType" then
   --return CameraType
  end
 end

 if t == Lighting then
  if i == "ClockTime" or i == "Brightness" or i == "Ambient" or i == "OutdoorAmbient" or i == "ColorShift_Top" then
   return LightingSpoof[i]
  end
 elseif t == Camera then
  if i == "FieldOfView" then
   return CameraSpoof[i]
  end
 end

 return Old_index(t, i)
end)

local Old_call
Old_call = hookmetamethod(game, "__namecall", function(self, ...)
 if checkcaller() or not library then
  return Old_call(self, ...)
 end

 local Args = {
  ...
 }
 local Method = getnamecallmethod()

 if Method == "FindPartOnRayWithWhitelist" then
  if GameTitle == "Bad Business" then
   if Args[2][1] and Args[2][2] and Args[2][1].Name == "Geometry" and Args[2][2].Name == "Terrain" then
    if library.flags[GameTitle .. " Wallbang"] then
     Args[2][1] = nil
     Args[2][2] = nil
    end
   end
  elseif GameTitle == "Ace Of Spadez" then
   if OldCallingScript().Name == "WeaponSystem" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * library.flags["Aimbot Max Distance"])
    end
    if library.flags[GameTitle .. " Wallbang"] then
     Args[2][1] = nil
    else
     Args[2][1] = workspace.Game.Map
    end
   end
  elseif GameTitle == "Zombie Attack" then
   if OldCallingScript().Name == "GunController" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * 1000)
    end
   end
  end
 elseif Method == "FindPartOnRayWithIgnoreList" then
  if GameTitle == "Arsenal" then
   if library.flags[GameTitle .. " Wallbang"] and Args[2][1].Name == "Clips" then
    local n = # Args[2]
    Args[2][n + 1] = workspace.Map
   end
   if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
    Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).Unit * library.flags["Aimbot Max Distance"])
   end
  elseif GameTitle == "Unit: Classified" then
   if # Args[2] > 15 then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * library.flags["Aimbot Max Distance"])
    end
    if library.flags[GameTitle .. " Wallbang"] then
     local n = # Args[2]
     Args[2][n + 1] = workspace.Map
     Args[2][n + 2] = workspace.Terrain
    end
   end
  elseif GameTitle == "MURDER" then
   if tostring(Args[2][3]) == "Debris" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * library.flags["Aimbot Max Distance"])
    end
    if library.flags[GameTitle .. " Wallbang"] then
     local n = # Args[2]
     Args[2][n + 1] = workspace.Map
    end
   end
  elseif GameTitle == "KAT" then
   if OldCallingScript().Name == "KnifeClient" or OldCallingScript().Name == "RevolverClient" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * library.flags["Aimbot Max Distance"])
    end
   end
  elseif GameTitle == "MMC Zombies Project" then
   if OldCallingScript().Name == "client_main" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * library.flags["Aimbot Max Distance"])
    end
    if library.flags[GameTitle .. " Wallbang"] then
     setnamecallmethod("FindPartOnRayWithWhitelist")
     Args[2] = {
      workspace.map.enemies,
     }
    end
   end
  elseif GameTitle == "Project Lazarus" then
   if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
    Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * library.flags["Aimbot Max Distance"])
   end
   if library.flags[GameTitle .. " Wallbang"] then
    local n = # Args[2]
    Args[2][n + 1] = workspace.Map
   end
  elseif GameTitle == "Zombie Rush" then
   if OldCallingScript().Name == "GunController" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * 1000)
    end
    if library.flags[GameTitle .. " Wallbang"] then
     local n = # Args[2]
     Args[2][n + 1] = workspace["Map Storage"]
    end
   end
  elseif GameTitle == "Resurrection" then
   if OldCallingScript().Name == "Client" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).unit * 1000)
    end
    if library.flags[GameTitle .. " Wallbang"] then
     local n = # Args[2]
     Args[2][n + 1] = workspace.Map
     Args[2][n + 2] = workspace.Terrain
    end
   end
  elseif GameTitle == "Blackhawk Rescue Mission" then
   if OldCallingScript().Name == "InputHandler" then
    if library.flags[GameTitle .. " Wallbang"] then
     local n = # Args[2]
     Args[2][n + 1] = workspace.Terrain
     Args[2][n + 2] = workspace.Custom["0"]
    end
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).Unit * library.flags["Aimbot Max Distance"])
    end
   end
  elseif GameTitle == "Shoot Out" then
   if OldCallingScript().Name == "Replication" then
    if library.flags[GameTitle .. " Wallbang"] then
     local n = # Args[2]
     Args[2][n + 1] = workspace.Map
    end
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).Unit * library.flags["Aimbot Max Distance"])
    end
   end
  elseif GameTitle == "Weaponry" then
   if OldCallingScript().Name == "Client_Major_Framework" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).Unit * library.flags["Aimbot Max Distance"])
    end
   end
  elseif GameTitle == "Counter Blox" then
   if # Args[2] > 10 then
    if library.flags[GameTitle .. " No Spread"] then
     local Char = Players[Client].Character
     if Char then
      Args[1] = Ray.new(Vector3.new(Char.HumanoidRootPart.Position.X, Char.Head.Position.Y, Char.HumanoidRootPart.Position.Z), Camera.CFrame.LookVector * 1000)
     end
    end
    if library.flags[GameTitle .. " Wallbang"] then
     Args[2][# Args[2] + 1] = workspace.Map
    end
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     local Char = Players[Client].Character
     if Char then
      local Origin = Vector3.new(Char.HumanoidRootPart.Position.X, Char.Head.Position.Y, Char.HumanoidRootPart.Position.Z)
      Args[1] = Ray.new(Origin, (library.Aimbot.Position3d - Origin).Unit * 1000)
     end
    end
   end
  elseif GameTitle == "Death Zone" then
   if OldCallingScript().Name == "GunScript" then
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     Args[1] = Ray.new(Camera.CFrame.p, (library.Aimbot.Position3d - Camera.CFrame.p).Unit * library.flags["Aimbot Max Distance"])
    end
   end
  end

 elseif Method == "FireServer" then
  if GameTitle == "Arsenal" then
   if self.Name == "CreateProjectile" or self.Name == "ReplicateProjectile" then
    local t = self.Name == "ReplicateProjectile" and Args[1] or Args
    if library.flags["Aimbot Mode"] == "Silent" and library.Aimbot.Position3d then
     t[3] = library.Aimbot.Position3d
     t[4] = CFrame.new(library.Aimbot.Position3d) + Vector3.new(0, 0.5, 0)
     t[10] = library.Aimbot.Position3d + Vector3.new(0, 0.5, 0)
    end
   end
  elseif GameTitle == "Zombie Attack" then
   if library.flags[GameTitle .. " Always Headshot"] and FFCoC(Args["Hit"].Parent, "Humanoid") then
    Args["Hit"] = Args["Hit"].Parent.Head
   end
  elseif GameTitle == "Counter Blox" then
   if self.Name == "ControlTurn" and library.flags[GameTitle .. " Anti-Aim"] then
    Args[1] = library.flags[GameTitle .. " Pitch"]
    --elseif string.len(self.Name) > 35 then
    -- if library.flags[GameTitle .. " Unlock Skins"] and not eF then
    --  eF = true
    --  for V, v in next, e4 do
    --   local eQ
    --   for eC, eD in next, Args[1] do
    --    if v[1] == eD[1] then
    --     eQ = true
    --    end
    --   end
    --   if not eQ then
    --    local n = #Args[1]
    --    Args[1][n + 1] = v
    --   end
    --  end
    -- end
    -- return
   elseif self.Name == "HitPart" and (library.flags[GameTitle .. " Hitsound"] or library.flags[GameTitle .. " Bullet Tracers"]) then
    spawn(function()
     if library.flags[GameTitle .. " Hitsound"] then
      if Args[1] and FFCoC(Args[1].Parent, "Humanoid") then
       local Target = FFC(game.Players, Args[1].Parent.Name)
       if Target and Target.Team ~= Client.Team then
        local Sounds = library.options[GameTitle .. " Hitsounds"].values
        local Sound = library.flags[GameTitle .. " Hitsounds"]
        library:Create("Sound", {
         PlayOnRemove = true,
         Volume = library.flags[GameTitle .. " Hitsound Volume"],
         SoundId = "rbxassetid://" .. (typeof(Sounds[Sound]) == "function" and Sounds[Sound]() or Sounds[Sound]),
         Parent = workspace
        }):Destroy()
       end
      end
     end
     if library.flags[GameTitle .. " Bullet Tracers"] then
      local Char = Client.Character
      local HumPart = FFC(Char, "HumanoidRootPart")
      local Flash = FFC(Camera, "Flash", true)
      if HumPart and Flash then
       local d1 = library:Create("Part", {
        Anchored = true,
        Parent = workspace
       })
       local eV = library:Create("Attachment", {
        WorldPosition = Flash.Position,
        Parent = d1
       })
       local eW = library:Create("Attachment", {
        WorldPosition = Args[2],
        Parent = d1
       })
       library:Create("Beam", {
        Color = ColorSequence.new(library.flags[GameTitle .. " Bullet Tracer Color"]),
        LightEmission = 1,
        LightInfluence = 0,
        Texture = "rbxassetid://967852047",
        Transparency = NumberSequence.new(0.6),
        TextureLength = 0.1,
        TextureSpeed = 1,
        Attachment0 = eV,
        Attachment1 = eW,
        Segments = 1,
        FaceCamera = true,
        Width0 = 0.15,
        Width1 = 0.15,
        Parent = d1
       })
       library:Create("Beam", {
        Color = ColorSequence.new(library.flags[GameTitle .. " Bullet Tracer Color"]),
        LightEmission = 1,
        LightInfluence = 0,
        Texture = "rbxassetid://967852047",
        Transparency = NumberSequence.new(0.6),
        TextureLength = 0.1,
        TextureSpeed = 1,
        Attachment0 = eV,
        Attachment1 = eW,
        Segments = 1,
        FaceCamera = true,
        Width0 = 0.2,
        Width1 = 0.2,
        Parent = d1
       })
       game:GetService"Debris":AddItem(d1, library.flags[GameTitle .. " Lifetime"])
      end
     end
    end)
   end
  elseif GameTitle == "Death Zone" then
   if self.Name == "Executioner" then
    return wait(9e9)
   end
  end

 elseif Method == "InvokeServer" then

 elseif Method == "SetPrimaryPartCFrame" then
  if GameTitle == "Counter Blox" then
   if self.Name == "Arms" then
    if library.flags[GameTitle .. " Viewmodel Changer"] then
     if library.flags[GameTitle .. " Flip Z"] then
      Args[1] = Args[1] * CFrame.new(1, 1, 1, 0, 0, 1, 0)
     end
     if library.flags[GameTitle .. " Flip Y"] then
      Args[1] = Args[1] * CFrame.new(1, 1, 1, 0.5, 0, 0, 0)
     end
     local X = library.flags[GameTitle .. " X Offset"] * 120 / 500
     local Y = library.flags[GameTitle .. " Y Offset"] * 120 / 500
     local dl = library.flags[GameTitle .. " Z Offset"] * 120 / 500
     Args[1] = Args[1] * CFrame.new(X, Y, library.flags[GameTitle .. " Flip Y"] and dl * 2 or dl)
    end
   end
  end
 end

 return Old_call(self, unpack(Args))
end)

--Games
local Loaded, LoadError = true
library.flagprefix = GameTitle

Loaded, LoadError = pcall(function()

 if GameTitle == "Criminality" then

  --[[ Anti Cheat Bypass ]]

  for i,v in pairs(getgc(true)) do
   if typeof(v) == 'table' and typeof(rawget(v, 'B')) == "function" then
    v.B = function()

    end
   end
  end

  --[[ Anti Cheat Bypass ]]

  --[[ Silent Aim ]]

  coroutine.resume(coroutine.create(function()

   repeat
    wait()
   until game:GetService("Players").LocalPlayer.Character and library.flags["Silent FieldOfView"] ~= nil and library.flags["Silent HitChance"] ~= nil and library.flags["Silent TargetPart"] ~= nil

   local Camera = workspace.CurrentCamera
   local Players = game:GetService("Players")
   local RunService = game:GetService("RunService")
   local GuiService = game:GetService("GuiService")
   local UserInputService = game:GetService("UserInputService")
   local HttpService = game:GetService("HttpService")

   local LocalPlayer = Players.LocalPlayer
   local Mouse = LocalPlayer:GetMouse()

   local GetChildren = game.GetChildren
   local GetPlayers = Players.GetPlayers
   local WorldToScreen = Camera.WorldToScreenPoint
   local WorldToViewportPoint = Camera.WorldToViewportPoint
   local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
   local FindFirstChild = game.FindFirstChild
   local RenderStepped = RunService.RenderStepped
   local GuiInset = GuiService.GetGuiInset
   local GetMouseLocation = UserInputService.GetMouseLocation

   local resume = coroutine.resume 
   local create = coroutine.create

   local ValidTargetParts = {
    "Head",
    "HumanoidRootPart"
   }
   local PredictionAmount = 0.165

   local ExpectedArguments = {
    Raycast = {
     ArgCountRequired = 3,
     Args = {
      "Instance",
      "Vector3",
      "Vector3",
      "RaycastParams"
     }
    }
   }

   function CalculateChance(Percentage)
    -- // Floor the percentage
    Percentage = math.floor(Percentage)

    -- // Get the chance
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    -- // Return
    return chance <= Percentage / 100
   end

   local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = WorldToScreen(Camera, Vector)
    return Vector2.new(Vec3.X, Vec3.Y), OnScreen
   end

   local function ValidateArguments(Args, RayMethod)
    local Matches = 0
    if # Args < RayMethod.ArgCountRequired then
     return false
    end
    for Pos, Argument in next, Args do
     if typeof(Argument) == RayMethod.Args[Pos] then
      Matches = Matches + 1
     end
    end
    return Matches >= RayMethod.ArgCountRequired
   end

   local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
   end

   local function getMousePosition()
    return GetMouseLocation(UserInputService)
   end

   local function IsPlayerVisible(Player)
    local PlayerCharacter = Player.Character
    local LocalPlayerCharacter = LocalPlayer.Character

    if not (PlayerCharacter or LocalPlayerCharacter) then
     return
    end 

    local PlayerRoot = FindFirstChild(PlayerCharacter, library.flags["Silent TargetPart"]) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")

    if not PlayerRoot then
     return
    end 

    local CastPoints, IgnoreList = {
     PlayerRoot.Position,
     LocalPlayerCharacter,
     PlayerCharacter
    }, {
     LocalPlayerCharacter,
     PlayerCharacter
    }
    local ObscuringObjects = # GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)

    return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
   end

   local function getClosestPlayer()
    if not library.flags["Silent TargetPart"] then
     return
    end
    local Closest
    local DistanceToMouse
    for _, Player in next, GetPlayers(Players) do
     if Player == LocalPlayer then
      continue
     end

     local Character = Player.Character
     if not Character then
      continue
     end

     local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
     local Humanoid = FindFirstChild(Character, "Humanoid")
     if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then
      continue
     end

     local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
     if not OnScreen then
      continue
     end

     local Distance = (getMousePosition() - ScreenPosition).Magnitude
     if Distance <= (DistanceToMouse or library.flags["Silent FieldOfView"] or 2000) then
      Closest = ((library.flags["Silent TargetPart"] == "Random" and Character[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or Character[library.flags["Silent TargetPart"]])
      DistanceToMouse = Distance
     end
    end
    return Closest
   end

   local oldNamecall
   oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local Method = getnamecallmethod()
    local Arguments = {
     ...
    }
    local self = Arguments[1]
    local chance = CalculateChance(library.flags["Silent HitChance"])
    if library and library.flags["Aimbot"] and library.flags["Aimbot Mode"] == "Silent" and self == workspace and not checkcaller() and chance == true then
     if Method == "Raycast" then
      if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
       local A_Origin = Arguments[2]

       local HitPart = getClosestPlayer()
       if HitPart then
        Arguments[3] = getDirection(A_Origin, HitPart.Position)

        return oldNamecall(unpack(Arguments))
       end
      end
     end
    end
    return oldNamecall(...)
   end))

  end))

  --[[ Silent Aim ]]

  --[[ Infinite Stamina ]]

  coroutine.resume(coroutine.create(function()

   repeat
    wait()
   until game:GetService("Players").LocalPlayer.Character and library.flags[GameTitle .. " Infinite Stamina"] ~= nil

   local StaminaTake = getrenv()._G.S_Take
   local StaminaFunc = getupvalue(StaminaTake, 2)
   for i, v in pairs(getupvalues(StaminaFunc)) do
    if type(v) == "function" and getinfo(v).name == "Upt_S" then
     local OldFunction;
     OldFunction = hookfunction(v, function(...)
      if library and library.flags[GameTitle .. " Infinite Stamina"] then
       local CharacterVar = game:GetService("Players").LocalPlayer.Character
       if not CharacterVar or not CharacterVar.Parent then
        local CharacterVar = game:GetService("Players").LocalPlayer.CharacterAdded:wait()
        getupvalue(StaminaFunc, 6).S = 100
       elseif CharacterVar then
        getupvalue(StaminaFunc, 6).S = 100
       end
      end
      return OldFunction(...)
     end)
    end
   end

  end))

  --[[ Infinite Stamina ]]

  --[[ Values ]]

  KillAuraTime = 0
  KillAuraAttempt = 0
  KillAuraWait = false
  SafeAutoFarm = false
  KillAuraCoolDown = false
  FinishAuraCoolDown = false
  ToolCoolDown = false
  CashCoolDown = false
  ScrapCoolDown = false
  UnLockCoolDown = false
  AutoBreakSafeCoolDown = false
  AutoBreakRegisterCoolDown = false
  AutoRePairAndReFillCoolDown = false
  SafeAutoFarmCoolDown = false
  AutoClaimAllowanceCoolDown = false
  PlayerList2 = nil
  PlayerList3 = nil
  Ping = 0
  FLYING = false
  QEfly = true
  iyflyspeed = 1
  vehicleflyspeed = 1

  --[[ Values ]]

  --[[ Functions ]]

  function GunModules()
   for i, v in pairs(getgc(true)) do
    if type(v) == 'table' and rawget(v, 'EquipTime') then
     if library and library.flags[GameTitle .. " Recoil"] then
      coroutine.resume(coroutine.create(function()
       v.Recoil = library.flags[GameTitle .. " Recoil Amount"]
       if library and library.flags[GameTitle .. " No Camera Recoil"] then
        v.CameraRecoilingEnabled = false
        v.AngleX_Min = 0
        v.AngleX_Max = 0
        v.AngleY_Min = 0
        v.AngleY_Max = 0
        v.AngleZ_Min = 0
        v.AngleZ_Max = 0
       end
      end))
     end
     if library and library.flags[GameTitle .. " Spread"] then
      coroutine.resume(coroutine.create(function()
       v.Spread = library.flags[GameTitle .. " Spread Amount"]
      end))
     end
     if library and library.flags[GameTitle .. " Drop Off"] then
      coroutine.resume(coroutine.create(function()
       v.Dropoff = library.flags[GameTitle .. " Drop Off Amount"]
      end))
     end
     if library and library.flags[GameTitle .. " Equip Time"] then
      coroutine.resume(coroutine.create(function()
       v.EquipTime = library.flags[GameTitle .. " Equip Time Amount"]
       if library and library.flags[GameTitle .. " No Equip Animation"] then
        v.EquipAnimSpeed = 10000000000
       end
      end))
     end
     if library and library.flags[GameTitle .. " Aim Speed"] then
      coroutine.resume(coroutine.create(function()
       v.AimSettings.AimSpeed = library.flags[GameTitle .. " Aim Speed Amount"]
       v.SniperSettings.AimSpeed = library.flags[GameTitle .. " Aim Speed Amount"]
       if library and library.flags[GameTitle .. " No Aim Animation"] then
        v.AimSettings.AimAnimSpeed = 10000000000
        v.SniperSettings.AimAnimSpeed = 10000000000
       end
      end))
     end
     if library and library.flags[GameTitle .. " Auto Mode"] then
      coroutine.resume(coroutine.create(function()
       v.FireModeSettings = {
        FireMode = "Semi",
        BurstAmount = library.flags[GameTitle .. " Burst Amount Amount"],
        BurstRate = library.flags[GameTitle .. " Burst Rate Amount"],
        CanSwitch = true,
        SwitchTo = "Auto"
       }
      end))
     end
    end
   end
  end

  function GetClosestHumanoidRootPart(currentMagnitude)
   local closestCurrent = nil
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game:GetService("Players").LocalPlayer then
     if v.Character ~= nil then
      if v.Character.Humanoid.Health ~= 0 then
       if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < currentMagnitude then
        currentMagnitude = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
        closestCurrent = v.Character.HumanoidRootPart
       end
      end
     end
    end
   end
   return closestCurrent
  end

  function GetRegister(Studs)
   local Part;
   for _, v in ipairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
    if v:FindFirstChild("MainPart") and string.find(v.Name, "Register") and v:FindFirstChild("Values").Broken.Value == false then
     local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
     if Distance < Studs then
      Studs = Distance
      Part = v:FindFirstChild("MainPart")
     end
    end
   end
   return Part
  end

  function GetSafe(Studs, Type)
   if Type then
    local Part;
    for _, v in ipairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
     if v:FindFirstChild("MainPart") and string.find(v.Name, "Safe") then
      local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
      if Distance < Studs then
       Studs = Distance
       Part = v:FindFirstChild("MainPart")
      end
     end
    end
    return Part
   else
    local Part;
    for _, v in ipairs(game:GetService("Workspace").Map.BredMakurz:GetChildren()) do
     if v:FindFirstChild("MainPart") and string.find(v.Name, "Safe") and v:FindFirstChild("Values").Broken.Value == false then
      local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
      if Distance < Studs then
       Studs = Distance
       Part = v:FindFirstChild("MainPart")
      end
     end
    end
    return Part
   end
  end

  function GetDoor(Studs, Type)
   if Type then
    local Part;
    for _, v in ipairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
     if v:FindFirstChild("DoorBase") then
      local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("DoorBase").Position).Magnitude
      if Distance < Studs then
       Studs = Distance
       Part = v:FindFirstChild("DoorBase")
      end
     end
    end
    return Part
   else
    local Part;
    for _, v in ipairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
     if v:FindFirstChild("DoorBase") and v:FindFirstChild("Values").Locked.Value == true and v:FindFirstChild("Values").Broken.Value == false then
      local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("DoorBase").Position).Magnitude
      if Distance < Studs then
       Studs = Distance
       Part = v:FindFirstChild("DoorBase")
      end
     end
    end
    return Part
   end
  end

  function GetDealer(Studs, Type, Require)
   local Part;
   for _, v in ipairs(game:GetService("Workspace").Map.Shopz:GetChildren()) do
    if SafeAutoFarm then
     if library and library.flags.AutoFarmMode == "Crowbar" then
      if v.Name == Type and v.CurrentStocks.Crowbar.Value > 0 and v:FindFirstChild("MainPart") then
       local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
       if Distance < Studs then
        Studs = Distance
        Part = v:FindFirstChild("MainPart")
       end
      end
     else
      if v.Name == Type and v.CurrentStocks.Lockpick.Value > 0 and v:FindFirstChild("MainPart") then
       local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
       if Distance < Studs then
        Studs = Distance
        Part = v:FindFirstChild("MainPart")
       end
      end
     end
    else
     if Require ~= nil then
      if v.Name == Type and v.CurrentStocks[Require].Value > 0 and v:FindFirstChild("MainPart") then
       local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
       if Distance < Studs then
        Studs = Distance
        Part = v:FindFirstChild("MainPart")
       end
      end
     else
      if v.Name == Type and v:FindFirstChild("MainPart") then
       local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
       if Distance < Studs then
        Studs = Distance
        Part = v:FindFirstChild("MainPart")
       end
      end
     end
    end
   end
   return Part
  end

  function GetATM(Studs)
   local Part;
   for _, v in ipairs(game:GetService("Workspace").Map.ATMz:GetChildren()) do
    if v:FindFirstChild("MainPart") then
     local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
     if Distance < Studs then
      Studs = Distance
      Part = v:FindFirstChild("MainPart")
     end
    end
   end
   return Part
  end

  function GetScrap(Studs)
   local Part;
   for _, v in ipairs(game:GetService("Workspace").Filter.SpawnedPiles:GetChildren()) do
    if v:FindFirstChild("MeshPart") then
     local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MeshPart").Position).Magnitude
     if Distance < Studs then
      Studs = Distance
      Part = v:FindFirstChild("MeshPart")
     end
    end
   end
   return Part
  end

  function GetCash(Studs)
   local Part;
   for _, v in ipairs(game:GetService("Workspace").Filter.SpawnedBread:GetChildren()) do
    local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
    if Distance < Studs then
     Studs = Distance
     Part = v
    end
   end
   return Part
  end

  function GetArmor()
   for _, v in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:FindFirstChild("BrokenM") then
     return v.Name
    end
   end
  end

  function getPlayer(ShortName)
   local Plr = nil
   for i, v in ipairs(game:GetService("Players"):GetPlayers()) do
    if string.find(string.lower(v.Name), string.lower(ShortName)) ~= nil then
     Plr = v
    end
   end
   return Plr
  end

  function Teleport(Position)
   if library and library.flags.TeleportationMode == "Normal" then
    for x = 1, 100 do
     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
     game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Position
     wait()
     game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
     game:GetService("ReplicatedStorage").Events.__DFfDD:FireServer("__--r", Vector3.new(0, 0, 0), CFrame.new(0, 0, 0))
    end
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Position    
   else
    
   end
  end

  function CheckStaff(Player)
   coroutine.resume(coroutine.create(function()
    if Player:GetRankInGroup(4165692) > 1 then
     if library.flags["Staff Detector"] == "Notify" then
      library:SendNotification(5, "Staff Detected, " .. Player.Name)
     else
      game:GetService("Players").LocalPlayer:Kick("Staff Detected, " .. Player.Name)
     end
    end
   end))
  end

  --[[ Connects ]]

  game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(Character)
   Character.ChildAdded:Connect(function(Object)
    if library and Object:IsA("Tool") then
     GunModules()
    end
    if library and Object:IsA("Tool") and library.flags[GameTitle .. " Kill Aura"] then
     KillAuraTime = require(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Config).Mains.E.SwingTime
    end
   end)
   if library and library.flags[GameTitle .. " Hide Name"] then
    for i, v in pairs(game:GetDescendants()) do
     if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
      if v.Text == game:GetService("Players").LocalPlayer.Name then
       v.Text = "nil"
      end
     end
    end
   end
   if library and library.flags[GameTitle .. " Hide Character"] then
    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
     if v.Name ~= "Head" or v.Name ~= "Torso" or v.Name ~= "Left Arm" or v.Name ~= "Right Arm" or v.Name ~= "Left Leg" or v.Name ~= "Right Leg" then
      v:Destroy()
     end
    end
   end
  end)

  if game:GetService("Players").LocalPlayer.Character ~= nil then
   game:GetService("Players").LocalPlayer.Character.ChildAdded:Connect(function(Object)
    if library and Object:IsA("Tool") then
     GunModules()
    end
    if library and Object:IsA("Tool") and library.flags[GameTitle .. " Kill Aura"] then
     KillAuraTime = require(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Config).Mains.E.SwingTime
    end
   end)
  end

  library:AddConnection(inputService.InputBegan, function(Input)
   if library and library.flags[GameTitle .. " Infinite Jump"] and not inputService:GetFocusedTextBox() then
    if Input.KeyCode == Enum.KeyCode.Space then
     if library then
      local Char = Players[Client].Character
      if Char then
       Char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
      end
     end
    end
   end
  end)

  game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function(Item)
   if library and library.flags[GameTitle .. " Auto Respawn"] then
    if Item.Name == "DeathGUI" then
     repeat
      wait(library.flags[GameTitle .. " Auto Respawn Delay"])
      game:GetService("ReplicatedStorage").Events.DeathRespawn:InvokeServer()
     until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DeathGUI") == nil
    end
   end
   if library and library.flags[GameTitle .. " Auto Lockpick"] then
    if Item.Name == "LockpickGUI" then
     Item.MF["LP_Frame"].Frames.B1.Bar.PosV.Value = 0
     Item.MF["LP_Frame"].Frames.B2.Bar.PosV.Value = 0
     Item.MF["LP_Frame"].Frames.B3.Bar.PosV.Value = 0
     repeat 
      wait(library.flags[GameTitle .. " Auto Lockpick Delay"])
      mouse1click()
     until not game.Players.LocalPlayer.PlayerGui.LockpickGUI
    end
   end
   game:GetService("ReplicatedStorage").Events2.UpdatePing.Event:Connect(function(Value)
    Ping = (math.floor(Value * 1000 + 0.5))
   end)
  end)

  game:GetService("RunService").RenderStepped:Connect(function()
   if library and library.flags[GameTitle .. " Disable Down"] then
    coroutine.resume(coroutine.create(function()
     game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].RagdollTime.RagdollSwitch.Value = false
    end))
   end
  end)

  game:GetService("Players").PlayerAdded:Connect(function(Player)
   CheckStaff(Player)
  end)

  local LegitTab = library:AddTab"Legit":AddColumn()

  local LegitGunModules = LegitTab:AddSection"Gun Modules"

  library.options["Aimbot Mode"]:AddValue"Silent"

  LegitGunModules:AddToggle({
   text = "Recoil",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "No Camera Recoil",
   callback = function(State)
    if library and library.flags[GameTitle .. " Recoil"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddSlider({
   text = "Recoil Amount",
   textpos = 2,
   min = 0,
   value = 0,
   max = 15,
   callback = function(State)
    if library and library.flags[GameTitle .. " Recoil"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "Spread",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  }):AddSlider({
   text = "Spread Amount",
   min = 0,
   value = 0,
   max = 15,
   callback = function(State)
    if library and library.flags[GameTitle .. " Spread"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "Drop Off",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  }):AddSlider({
   text = "Drop Off Amount",
   min = 0,
   value = 0,
   max = 15,
   callback = function(State)
    if library and library.flags[GameTitle .. " Drop Off"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "Equip Time",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "No Equip Animation",
   callback = function(State)
    if library and library.flags[GameTitle .. " No Equip Animation"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddSlider({
   text = "Equip Time Amount",
   textpos = 2,
   min = 0,
   value = 0,
   max = 15,
   callback = function(State)
    if library and library.flags[GameTitle .. " Equip Time"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "Aim Speed",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "No Aim Animation",
   callback = function(State)
    if library and library.flags[GameTitle .. " Aim Speed"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddSlider({
   text = "Aim Speed Amount",
   textpos = 2,
   min = 0,
   value = 0,
   max = 15,
   callback = function(State)
    if library and library.flags[GameTitle .. " Aim Speed"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddToggle({
   text = "Auto Mode",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  })

  LegitGunModules:AddSlider({
   text = "Burst Amount Amount",
   textpos = 2,
   min = 0,
   value = 0,
   max = 120,
   callback = function(State)
    if library and library.flags[GameTitle .. " Auto Mode"] then
     GunModules()
    end
   end
  })

  LegitGunModules:AddSlider({
   text = "Burst Rate Amount",
   textpos = 2,
   min = 0,
   value = 0,
   max = 120,
   callback = function(State)
    if library and library.flags[GameTitle .. " Auto Mode"] then
     GunModules()
    end
   end
  })

  local LegitMovement = LegitTab:AddSection"Movement"

  LegitMovement:AddToggle({
   text = "Sprint Speed",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Sprint Speed", function()
      if library and library.flags[GameTitle .. " Sprint Speed"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char and game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].Sprinting.Value then
        Char.WalkSpeed = library.flags[GameTitle .. " Sprint Speed Amount"]
       end
      end
     end)
    else
     library.connections["Sprint Speed"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      Char.WalkSpeed = 25
     end
    end
   end
  }):AddSlider({
   text = "Sprint Speed Amount",
   textpos = 2,
   min = 25,
   value = 25,
   max = 30,
   float = 1
  })

  LegitMovement:AddToggle({
   text = "Crouch Speed",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Crouch Speed", function()
      if library and library.flags[GameTitle .. " Crouch Speed"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char and game:GetService("ReplicatedStorage").CharStats[game:GetService("Players").LocalPlayer.Name].Crouching.Value then
        Char.WalkSpeed = library.flags[GameTitle .. " Crouch Speed Amount"]
       end
      end
     end)
    else
     library.connections["Crouch Speed"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      Char.WalkSpeed = 8
     end
    end
   end
  }):AddSlider({
   text = "Crouch Speed Amount",
   textpos = 2,
   min = 8,
   value = 8,
   max = 30,
   float = 0.1
  })

  LegitMovement:AddToggle({
   text = "Infinite Stamina",
  })

  LegitMovement:AddToggle({
   text = "Always Sprint",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Always Sprint", function()
      if library and library.flags[GameTitle .. " Always Sprint"] then
       game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftShift", false, game)
      end
     end)
    else
     library.connections["Always Sprint"]:Disconnect()
     game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftShift", false, game)
    end
   end
  })

  LegitMovement:AddToggle({
   text = "Always Crouch",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Always Crouch", function()
      if library and library.flags[GameTitle .. " Always Crouch"] then
       game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
      end
     end)
    else
     library.connections["Always Crouch"]:Disconnect()
     game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
    end
   end
  })

  local LegitMisc = LegitTab:AddSection"Misc"

  LegitMisc:AddToggle({
   text = "Chat",
   callback = function(State)
    if State then
     game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
     game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
    else
     game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
     game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(0, 0, 0, 0)
    end
   end
  })

  LegitMisc:AddToggle({
   text = "Auto Buy"
  }):AddList({
   flag = "Auto Buy",
   values = (function()
    local t = {}
    for _, v in next, game:GetService("Workspace").Map.Shopz.Dealer.CurrentStocks:GetChildren() do
     if v ~= Client then
      table.insert(t, v.Name)
     end
    end
    return t
   end)(),
   max = 10,
   callback = function(Value)
    library.flags["Auto Buy"] = Value
   end
  }):AddBind({
   callback = function()
    if library.flags[GameTitle .. " Auto Buy"] then
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Throwables", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Melees", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Guns", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Throwables", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
     coroutine.resume(coroutine.create(function()
      game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Misc", library.flags["Auto Buy"], GetDealer(math.huge, "Dealer"))
     end))
    end
   end
  })

  LegitMisc:AddToggle({
   text = "Auto Respawn"
  }):AddSlider({
   text = "Auto Respawn Delay",
   min = 0,
   value = 0,
   max = 1,
   float = 0.1,
   suffix = "s"
  })

  LegitMisc:AddToggle({
   text = "Auto Lockpick"
  }):AddSlider({
   text = "Auto Lockpick Delay",
   min = 0,
   value = 0,
   max = 5,
   float = 0.1,
   suffix = "s"
  })

  LegitMisc:AddToggle({
   text = "Staff Detector",
   callback = function(State)
    if State then
     for i, v in pairs(game:GetService("Players"):GetPlayers()) do
      CheckStaff(v)
     end
    end
   end
  }):AddList({
   flag = "Staff Detector",
   values = {
    "Notify",
    "Kick",
   },
   callback = function(Value)
    library.flags["Staff Detector"] = Value
   end
  })

  local RageTab = library:AddTab"Rage":AddColumn()

  local RageCombat = RageTab:AddSection"Combat"

  local ValidTargetParts = {
   "Head",
   "Torso"
  }

  RageCombat:AddToggle({
   text = "Kill Aura",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Kill Aura", function()
      if library and library.flags[GameTitle .. " Kill Aura"] then
       coroutine.resume(coroutine.create(function()
        local ClosestHumanoidRootPart = GetClosestHumanoidRootPart(library.flags[GameTitle .. " Kill Aura Range"])
        local ClosestHumanoidRootPart2 = GetClosestHumanoidRootPart(library.flags[GameTitle .. " Kill Aura Teleport Range"])
        if ClosestHumanoidRootPart and not KillAuraCoolDown then
         if ClosestHumanoidRootPart.Parent:FindFirstChild("Humanoid").Health > 15 and not ClosestHumanoidRootPart.Parent:FindFirstChildOfClass("ForceField") then
          KillAuraCoolDown = true
          coroutine.resume(coroutine.create(function()
           if library.flags["Kill Aura Mode"] == "Legit" then
            KillAuraAttempt = KillAuraAttempt + 1
            if KillAuraAttempt == 2 then
             KillAuraAttempt = 0
             KillAuraWait = true
            end
           end
          end))
          coroutine.resume(coroutine.create(function()
           if library.flags["Kill Aura Mode"] == "Legit" then
            local KillAuraValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "43TRFWJ", "Normal", tick(), true)
            if library.flags["Kill Aura Mode"] == "Legit" then
             if KillAuraAttempt == 0 then
              game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").AnimsFolder.Slash1):Play()
             elseif KillAuraAttempt == 1 then
              game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").AnimsFolder.Slash2):Play()
             end
            end
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name == "Fists" then
             game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", KillAuraValue, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], ((library.flags["Kill Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Kill Aura Target Part"]]), ClosestHumanoidRootPart.Parent, game:GetService("Players").LocalPlayer.Character["Right Arm"].Position, ((library.flags["Kill Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Kill Aura Target Part"]]).Position)
            else
             repeat
              wait()
             until game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Trail.Enabled
             game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", KillAuraValue, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], ((library.flags["Kill Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Kill Aura Target Part"]]), ClosestHumanoidRootPart.Parent, game:GetService("Players").LocalPlayer.Character["Right Arm"].Position, ((library.flags["Kill Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Kill Aura Target Part"]]).Position)
            end
           else
            local KillAuraValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "43TRFWJ", "Normal", tick(), true)
            wait(KillAuraTime)
            game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", KillAuraValue, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], ((library.flags["Kill Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Kill Aura Target Part"]]), ClosestHumanoidRootPart.Parent, game:GetService("Players").LocalPlayer.Character["Right Arm"].Position, ((library.flags["Kill Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Kill Aura Target Part"]]).Position)
           end
          end))
          if library.flags["Kill Aura Mode"] == "Legit" then
           if KillAuraWait then
            KillAuraWait = false
            wait(1.5)
            KillAuraCoolDown = false
           else
            wait(1)
            KillAuraCoolDown = false
           end
          elseif library.flags["Kill Aura Mode"] == "Rage" then
           wait(0.25)
           KillAuraCoolDown = false
          end
         end
        end
        if ClosestHumanoidRootPart2 and library.flags["Kill Aura Mode 2"] == "Teleport" then
         if ClosestHumanoidRootPart2.Parent:FindFirstChild("Humanoid").Health > 15 and not ClosestHumanoidRootPart2.Parent:FindFirstChildOfClass("ForceField") then
          if library.flags["Kill Aura Teleport Mode"] == "Behind" then
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = ClosestHumanoidRootPart2.Parent["HumanoidRootPart"].CFrame * CFrame.new(0, 0, -library.flags[GameTitle .. " Kill Aura Teleport Length"])
          else
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = ClosestHumanoidRootPart2.Parent["HumanoidRootPart"].Position + Vector3.new(0, library.flags[GameTitle .. " Kill Aura Teleport Length"], 0)
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Kill Aura"]:Disconnect()
    end
   end
  }):AddList({
   flag = "Kill Aura Mode",
   values = {
    "Legit",
    "Rage"
   },
   callback = function(Value)
    library.flags["Kill Aura Mode"] = Value
   end
  })

  RageCombat:AddList({
   flag = "Kill Aura Target Part",
   values = {
    "Random",
    "Head",
    "Torso"
   },
   callback = function(State)
    library.flags["Kill Aura Target Part"] = State
   end
  })

  RageCombat:AddList({
   flag = "Kill Aura Mode 2",
   values = {
    "Near",
    "Teleport"
   },
   callback = function(Value)
    library.flags["Kill Aura Mode 2"] = Value
   end
  })

  RageCombat:AddList({
   flag = "Kill Aura Teleport Mode",
   values = {
    "Above",
    "Behind"
   },
   callback = function(Value)
    library.flags["Kill Aura Teleport Mode"] = Value
   end
  })

  RageCombat:AddSlider({
   text = "Kill Aura Teleport Range",
   textpos = 2,
   min = 0,
   value = 0,
   max = 25
  })

  RageCombat:AddSlider({
   text = "Kill Aura Teleport Length",
   textpos = 2,
   min = 0,
   value = 0,
   max = 15
  })

  RageCombat:AddSlider({
   text = "Kill Aura Range",
   textpos = 2,
   min = 0,
   value = 0,
   max = 15
  })

  RageCombat:AddToggle({
   text = "Finish Aura",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Finish Aura", function()
      if library and library.flags[GameTitle .. " Finish Aura"] then
       coroutine.resume(coroutine.create(function()
        local ClosestHumanoidRootPart = GetClosestHumanoidRootPart(library.flags[GameTitle .. " Finish Aura Range"])
        local ClosestHumanoidRootPart2 = GetClosestHumanoidRootPart(library.flags[GameTitle .. " Finish Aura Teleport Range"])
        if ClosestHumanoidRootPart and not FinishAuraCoolDown then
         if ClosestHumanoidRootPart.Parent:FindFirstChild("Humanoid").Health < 15 and not ClosestHumanoidRootPart.Parent:FindFirstChildOfClass("ForceField") then
          FinishAuraCoolDown = true
          coroutine.resume(coroutine.create(function()
           if library.flags["Finish Aura Mode"] == "Legit" then
            local FinishAuraValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "EXECQQ")
            game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").AnimsFolder.Finish):Play(0.15, 1, require(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Config).Mains.S1.AnimSpeed * game:GetService("ReplicatedStorage").Values.FinishSpeedMulti.Value)
            wait(0.5)
            game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", FinishAuraValue, false, game:GetService("Players").LocalPlayer.Character["Right Leg"], ((library.flags["Finish Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Finish Aura Target Part"]]), ClosestHumanoidRootPart.Parent, game:GetService("Players").LocalPlayer.Character["Right Leg"].Position, ((library.flags["Finish Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Finish Aura Target Part"]]).Position)
           else
            local FinishAuraValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "EXECQQ")
            wait(0.5)
            game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", FinishAuraValue, false, game:GetService("Players").LocalPlayer.Character["Right Leg"], ((library.flags["Finish Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Finish Aura Target Part"]]), ClosestHumanoidRootPart.Parent, game:GetService("Players").LocalPlayer.Character["Right Leg"].Position, ((library.flags["Finish Aura Target Part"] == "Random" and ClosestHumanoidRootPart.Parent[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or ClosestHumanoidRootPart.Parent[library.flags["Finish Aura Target Part"]]).Position)
           end
          end))
          if library.flags["Finish Aura Mode"] == "Legit" then
           wait(2.5)
           FinishAuraCoolDown = false
          elseif library.flags["Finish Aura Mode"] == "Rage" then
           wait(0.25)
           FinishAuraCoolDown = false
          end
         end
        end
        if ClosestHumanoidRootPart2 and library.flags["Finish Aura Mode 2"] == "Teleport" then
         if ClosestHumanoidRootPart2.Parent:FindFirstChild("Humanoid").Health < 15 and not ClosestHumanoidRootPart2.Parent:FindFirstChildOfClass("ForceField") then
          if library.flags["Finish Aura Teleport Mode"] == "Behind" then
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = ClosestHumanoidRootPart2.Parent["HumanoidRootPart"].CFrame * CFrame.new(0, 0, -library.flags[GameTitle .. " Finish Aura Teleport Length"])
          else
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = ClosestHumanoidRootPart2.Parent["HumanoidRootPart"].Position + Vector3.new(0, library.flags[GameTitle .. " Finish Aura Teleport Length"], 0)
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Finish Aura"]:Disconnect()
    end
   end
  }):AddList({
   flag = "Finish Aura Mode",
   values = {
    "Legit",
    "Rage"
   },
   callback = function(Value)
    library.flags["Finish Aura Mode"] = Value
   end
  })

  RageCombat:AddList({
   flag = "Finish Aura Target Part",
   values = {
    "Random",
    "Head",
    "Torso"
   },
   callback = function(State)
    library.flags["Finish Aura Target Part"] = State
   end
  })

  RageCombat:AddList({
   flag = "Finish Aura Mode 2",
   values = {
    "Near",
    "Teleport"
   },
   callback = function(Value)
    library.flags["Finish Aura Mode 2"] = Value
   end
  })

  RageCombat:AddList({
   flag = "Finish Aura Teleport Mode",
   values = {
    "Above",
    "Behind"
   },
   callback = function(Value)
    library.flags["Finish Aura Teleport Mode"] = Value
   end
  })

  RageCombat:AddSlider({
   text = "Finish Aura Teleport Range",
   textpos = 2,
   min = 0,
   value = 0,
   max = 25
  })

  RageCombat:AddSlider({
   text = "Finish Aura Teleport Length",
   textpos = 2,
   min = 0,
   value = 0,
   max = 15
  })

  RageCombat:AddSlider({
   text = "Finish Aura Range",
   textpos = 2,
   min = 0,
   value = 0,
   max = 5
  })

  local RageMovement = RageTab:AddSection"Movement"

  RageMovement:AddToggle({
   text = "Walk Speed",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Walk Speed", function()
      if library and library.flags[GameTitle .. " Walk Speed"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char then
        Char.WalkSpeed = library.flags[GameTitle .. " Walk Speed Amount"]
       end
      end
     end)
    else
     library.connections["Walk Speed"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      Char.WalkSpeed = 16
     end
    end
   end
  }):AddSlider({
   text = "Walk Speed Amount",
   textpos = 2,
   min = 16,
   value = 16,
   max = 30
  })

  RageMovement:AddToggle({
   text = "Jump Power",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Jump Power", function()
      if library and library.flags[GameTitle .. " Jump Power"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char then
        Char.JumpPower = library.flags[GameTitle .. " Jump Power Amount"]
       end
      end
     end)
    else
     library.connections["Jump Power"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      Char.JumpPower = 50
     end
    end
   end
  }):AddSlider({
   text = "Jump Power Amount",
   min = 50,
   value = 50,
   max = 75
  })

  RageMovement:AddToggle({
   text = "Spin",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Spin", function()
      if library and library.flags[GameTitle .. " Spin"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char and Char.Parent.HumanoidRootPart then
        if not Char.Parent.HumanoidRootPart:FindFirstChild("Spinning") then
         for i, v in pairs(Char.Parent.HumanoidRootPart:GetChildren()) do
          if v.Name == "Spinning" then
           v.Parent = nil
          end
         end
         local Spin = Instance.new("BodyAngularVelocity")
         Spin.Name = "Spinning"
         Spin.Parent = Char.Parent.HumanoidRootPart
         Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        end
        Char.Parent.HumanoidRootPart.Spinning.AngularVelocity = Vector3.new(0, library.flags[GameTitle .. " Spin Amount"], 0)
       end
      end
     end)
    else
     library.connections["Spin"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      for i, v in pairs(Char.Parent.HumanoidRootPart:GetChildren()) do
       if v.Name == "Spinning" then
        v.Parent = nil
       end
      end
     end
    end
   end
  }):AddSlider({
   text = "Spin Amount",
   min = 20,
   value = 20,
   max = 50,
   callback = function(Value)
    local Character = Players[Client].Character
    if Character then
     for i, v in pairs(Character.HumanoidRootPart:GetChildren()) do
      if v.Name == "Spinning" then
       v.AngularVelocity = Vector3.new(0, library.flags[GameTitle .. " Spin Amount"], 0)
      end
     end
    end
   end
  })

  RageMovement:AddToggle({
   text = "Infinite Jump",
  })

  RageMovement:AddToggle({
   text = "No Clip",
  }):AddBind({
   mode = "hold",
   callback = function(Ended, Step)
    if library and library.flags[GameTitle .. " No Clip"] then
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      for _, child in pairs(Char.Parent:GetDescendants()) do
       if child:IsA("BasePart") and child.CanCollide == true then
        child.CanCollide = false
       end
      end
     end
    end
   end
  })

  RageMovement:AddToggle({
   text = "Float Fly",
  }):AddSlider({
   text = "Float Fly Speed Amount",
   min = 27,
   value = 27,
   max = 50,
  }):AddBind({
   mode = "hold",
   callback = function(Ended, Step)
    if library and library.flags[GameTitle .. " Float Fly"] and game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
     game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = (game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Unit * library.flags[GameTitle .. " Float Fly Speed Amount"]) + Vector3.new(0, 0.85 + (false and library.flags[GameTitle .. " Float Fly Speed Amount"] or 0) + (false and -library.flags[GameTitle .. " Float Fly Speed Amount"] or 0), 0)
    end
   end
  })

  local RageMisc = RageTab:AddSection"Misc"

  RageMisc:AddToggle({
   text = "Wall Bang",
   callback = function(State)
    if State then
     game:GetService("Workspace").Map.Parts["M_Parts"].Parent = game:GetService("Workspace").CurrentCamera.Bullets
    else
     if game:GetService("Workspace").CurrentCamera.Bullets:FindFirstChild("M_Parts") then
      game:GetService("Workspace").CurrentCamera.Bullets["M_Parts"].Parent = game:GetService("Workspace").Map.Parts
     end
    end
   end,
  })

  local MT = getrawmetatable(game)
  setreadonly(MT, false)
  local NameCall = MT.__namecall
  MT.__namecall = newcclosure(function(self, ...)
   local Method = getnamecallmethod()
   local Args = {
    ...
   }
   if Method == "FireServer" and Args[1] == "BHHh" then
    if library and library.flags[GameTitle .. " Disable BarbWire"] then
     return wait(9e9)
    end
   elseif Method == "FireServer" and Args[1] == "FlllD" or Args[1] == "FlllH" then
    if library and library.flags[GameTitle .. " Disable Fall Damage"] then
     return wait(9e9)
    end
   elseif Method == "FireServer" and Args[1] == "__--r" or Args[1] == "HITRGP" or Args[1] == "FllH" then
    if library and library.flags[GameTitle .. " Disable Ragdoll"] then
     return wait(9e9)
    end
   elseif Method == "FireServer" and Args[2] == "Drown" then
    if library and library.flags[GameTitle .. " Disable Drown"] then
     return wait(9e9)
    end
   end
   return NameCall(self, ...)
  end)

  RageMisc:AddToggle({
   text = "Disable Fall Damage",
  })

  RageMisc:AddToggle({
   text = "Disable BarbWire",
  })

  RageMisc:AddToggle({
   text = "Disable Ragdoll",
  })

  RageMisc:AddToggle({
   text = "Disable Drown",
  })

  RageMisc:AddToggle({
   text = "Disable Down",
  })

  RageMisc:AddToggle({
   text = "Auto Pick Scrap",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Pick Scrap", function()
      if library and library.flags[GameTitle .. " Auto Pick Scrap"] then
       coroutine.resume(coroutine.create(function()
        for i, v in pairs(game:GetService("Workspace").Filter.SpawnedPiles:GetChildren()) do
         if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
          if (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v:FindFirstChild("MeshPart").Position).Magnitude < library.flags[GameTitle .. " Auto Pick Scrap Range"] then
           if ScrapCoolDown == false then
            ScrapCoolDown = true
            game:GetService("ReplicatedStorage").Events.PIC_PU:FireServer(string.reverse(v:GetAttribute("zp")))
            wait(1)
            ScrapCoolDown = false
           end
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Pick Scrap"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto Pick Scrap Range",
   min = 0,
   value = 0,
   max = 10,
  })

  RageMisc:AddToggle({
   text = "Auto Pick Tool",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Pick Tool", function()
      if library and library.flags[GameTitle .. " Auto Pick Tool"] then
       coroutine.resume(coroutine.create(function()
        for i, v in pairs(game:GetService("Workspace").Filter.SpawnedTools:GetChildren()) do
         if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
          if (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v:FindFirstChildOfClass("MeshPart").Position).Magnitude < library.flags[GameTitle .. " Auto Pick Tool Range"] then
           if ToolCoolDown == false then
            ToolCoolDown = true
            game:GetService("ReplicatedStorage").Events.PIC_TLO:FireServer(v:FindFirstChildOfClass("MeshPart"))
            wait(1)
            ToolCoolDown = false
           end
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Pick Tool"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto Pick Tool Range",
   min = 0,
   value = 0,
   max = 10,
  })

  RageMisc:AddToggle({
   text = "Auto Pick Cash",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Pick Cash", function()
      if library and library.flags[GameTitle .. " Auto Pick Cash"] then
       coroutine.resume(coroutine.create(function()
        for i, v in pairs(game:GetService("Workspace").Filter.SpawnedBread:GetChildren()) do
         if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
          if (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v.Position).Magnitude < library.flags[GameTitle .. " Auto Pick Cash Range"] then
           if CashCoolDown == false then
            CashCoolDown = true
            game:GetService("ReplicatedStorage").Events.CZDPZUS:FireServer(v)
            wait(1)
            CashCoolDown = false
           end
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Pick Cash"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto Pick Cash Range",
   min = 0,
   value = 0,
   max = 10,
  })

  RageMisc:AddToggle({
   text = "Auto UnLock",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto UnLock", function()
      if library and library.flags[GameTitle .. " Auto UnLock"] then
       coroutine.resume(coroutine.create(function()
        for i, v in pairs(game:GetService("Workspace").Map.Doors:GetChildren()) do
         if (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v:FindFirstChild("DoorBase").Position).Magnitude <= library.flags[GameTitle .. " Auto UnLock Range"] then
          if v:FindFirstChild("Values"):FindFirstChild("Locked").Value == true then
           if UnLockCoolDown == false then
            UnLockCoolDown = true
            v:FindFirstChild("Events"):FindFirstChild("Toggle"):FireServer("Unlock", v.Lock)
            wait(0.5)
            UnLockCoolDown = false
           end
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto UnLock"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto UnLock Range",
   min = 0,
   value = 0,
   max = 10,
  })

  RageMisc:AddToggle({
   text = "Auto Break Door",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Break Door", function()
      if library and library.flags[GameTitle .. " Auto Break Door"] then
       coroutine.resume(coroutine.create(function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crowbar") then
         local ClosestDoor = GetDoor(library.flags[GameTitle .. " Auto Break Door Range"], false)
         if ClosestDoor and not AutoBreakDoorCoolDown then
          AutoBreakDoorCoolDown = true
          local AutoBreakDoorValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "DZDRRRKI", ClosestDoor.Parent, "Door")
          game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", AutoBreakDoorValue, false, game:GetService("Players").LocalPlayer.Character["Right Leg"], ClosestDoor, ClosestDoor.Parent, ClosestDoor.Position, ClosestDoor.Position)
          wait(0.5)
          AutoBreakDoorCoolDown = false
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Break Door"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto Break Door Range",
   min = 0,
   value = 0,
   max = 15,
  })

  RageMisc:AddToggle({
   text = "Auto Break Safe",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Break Safe", function()
      if library and library.flags[GameTitle .. " Auto Break Safe"] then
       coroutine.resume(coroutine.create(function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crowbar") then
         local ClosestSafe = GetSafe(library.flags[GameTitle .. " Auto Break Safe Range"], false)
         if ClosestSafe and not AutoBreakSafeCoolDown then
          AutoBreakSafeCoolDown = true
          local AutoBreakSafeValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "DZDRRRKI", ClosestSafe.Parent, "Register")
          game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", AutoBreakSafeValue, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], ClosestSafe, ClosestSafe.Parent, ClosestSafe.Position, ClosestSafe.Position)
          wait(0.5)
          AutoBreakSafeCoolDown = false
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Break Safe"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto Break Safe Range",
   min = 0,
   value = 0,
   max = 15,
  })

  RageMisc:AddToggle({
   text = "Auto Break Register",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Break Register", function()
      if library and library.flags[GameTitle .. " Auto Break Register"] then
       coroutine.resume(coroutine.create(function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fists") then
         local ClosestRegister = GetRegister(library.flags[GameTitle .. " Auto Break Register Range"])
         if ClosestRegister and not AutoBreakRegisterCoolDown then
          AutoBreakRegisterCoolDown = true
          local AutoBreakRegisterValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "DZDRRRKI", ClosestRegister.Parent, "Register")
          game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", AutoBreakRegisterValue, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], ClosestRegister, ClosestRegister.Parent, ClosestRegister.Position, ClosestRegister.Position)
          wait(0.5)
          AutoBreakRegisterCoolDown = false
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Break Register"]:Disconnect()
    end
   end
  }):AddSlider({
   text = "Auto Break Register Range",
   min = 0,
   value = 0,
   max = 15,
  })

  RageMisc:AddToggle({
   text = "Auto RePair And ReFill",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto RePair And ReFill", function()
      if library and library.flags[GameTitle .. " Auto RePair And ReFill"] then
       coroutine.resume(coroutine.create(function()
        if library.flags["Auto RePair And ReFill Mode"] == "Near" then
         local Dealer = GetDealer(library.flags[GameTitle .. " Auto RePair And ReFill Range"], "Dealer")
         if Dealer and not AutoRePairAndReFillCoolDown then
          AutoRePairAndReFillCoolDown = true
          if Dealer.Parent.Name == "Dealer" then
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name, Dealer, "ResupplyAmmo")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Armour", GetArmor(), Dealer, "ResupplyAmmo")
           end))
          elseif Dealer.Parent.Name == "ArmoryDealer" then
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Guns", game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name, Dealer, "ResupplyAmmo")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Armour", GetArmor(), Dealer, "ResupplyAmmo")
           end))
          end
          wait(0.5)
          AutoRePairAndReFillCoolDown = false
         end
        else
         if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
          if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Values.Ammo.Value == 0 and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Values.StoredAmmo.Value == 0 then
           local Dealer = GetDealer(math.huge, "Dealer")
           if Dealer and not AutoRePairAndReFillCoolDown then
            AutoRePairAndReFillCoolDown = true
            OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Dealer.CFrame + Vector3.new(0, 5, 0)
            wait(0.15)
            if Dealer.Parent.Name == "Dealer" then
             coroutine.resume(coroutine.create(function()
              for x = 1, 5 do
               wait(0.15)
               game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name, Dealer, "ResupplyAmmo")
              end
             end))
             wait(0.15)
             game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
            elseif Dealer.Parent.Name == "ArmoryDealer" then
             coroutine.resume(coroutine.create(function()
              for x = 1, 5 do
               wait(0.15)
               game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("LegalStore", "Guns", game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name, Dealer, "ResupplyAmmo")
              end
             end))
             wait(0.15)
             game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
            end
            wait(5)
            AutoRePairAndReFillCoolDown = false
           end
          end
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto RePair And ReFill"]:Disconnect()
    end
   end
  }):AddList({
   flag = "Auto RePair And ReFill Mode",
   values = {
    "Near",
    "Teleport",
   },
   callback = function(Value)
    library.flags["Auto RePair And ReFill Mode"] = Value
   end
  })

  RageMisc:AddSlider({
   text = "Auto RePair And ReFill Range",
   textpos = 2,
   min = 0,
   value = 0,
   max = 10,
  })

  RageMisc:AddToggle({
   text = "Auto Claim Allowance",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Auto Claim Allowance", function()
      if library and library.flags[GameTitle .. " Auto Claim Allowance"] and game:GetService("ReplicatedStorage").PlayerbaseData2[game:GetService("Players").LocalPlayer.Name].NextAllowance.Value == 0 then
       coroutine.resume(coroutine.create(function()
        if library.flags["Auto Claim Allowance Mode"] == "Near" then
         local ATM = GetATM(library.flags[GameTitle .. " Auto Claim Allowance Range"])
         if ATM and not AutoClaimAllowanceCoolDown then
          AutoClaimAllowanceCoolDown = true
          coroutine.resume(coroutine.create(function()
           game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(ATM)
          end))
          wait(0.5)
          AutoClaimAllowanceCoolDown = false
         end
        else
         local ATM = GetATM(math.huge)
         if ATM and not AutoClaimAllowanceCoolDown then
          AutoClaimAllowanceCoolDown = true
          OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = ATM.CFrame + Vector3.new(0, 5, 0)
          wait(0.15)
          coroutine.resume(coroutine.create(function()
           for x = 1, 5 do
            wait()
            game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(ATM)
           end
          end))
          wait(0.25)
          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
          wait(5)
          AutoClaimAllowanceCoolDown = false
         end
        end
       end))
      end
     end)
    else
     library.connections["Auto Claim Allowance"]:Disconnect()
    end
   end
  }):AddList({
   flag = "Auto Claim Allowance Mode",
   values = {
    "Near",
    "Teleport",
   },
   callback = function(Value)
    library.flags["Auto Claim Allowance Mode"] = Value
   end
  })

  RageMisc:AddSlider({
   text = "Auto Claim Allowance Range",
   textpos = 2,
   min = 0,
   value = 0,
   max = 10,
  })

  RageMisc:AddToggle({
   text = "Invisible Fling",
   callback = function(State)
    if State then
     coroutine.resume(coroutine.create(function()
      library:SendNotification(5, "Loading Invisible Fling, Please Wait")

      function GetName()
       for i, v in pairs(game:GetService("StarterPlayer").StarterPlayerScripts:GetChildren()) do
        if v:FindFirstChild("XIIX") then
         return v
        end
       end
      end

      game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild(tostring(GetName())):Destroy()

      local rs = game:GetService("RunService")

      local plrs = game:GetService("Players")
      local lp = plrs.LocalPlayer
      local mouse = lp:GetMouse()
      local ws = game:GetService("Workspace")
      local c = nil  

      local function resReq()
       local nm = Instance.new("Model")
       local nh = Instance.new("Humanoid", nm)
       nh.Health = 100
       lp.Character = nm
       nh.Health = 0
       nh:Destroy()
       nm:Destroy()
      end

      local function align(Part0, Part1)
       Part0.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
       local att1 = Instance.new("Attachment")
       att1.Orientation = Vector3.new(0, 0, 0)
       att1.Position = Vector3.new(0, 0, 0)
       att1.Archivable = true
       local att0 = att1:Clone()

       local ap = Instance.new("AlignPosition", att0)
       ap.ApplyAtCenterOfMass = true
       ap.MaxForce = 9e9
       ap.MaxVelocity = 9e9
       ap.ReactionForceEnabled = false
       ap.Responsiveness = 200
       ap.RigidityEnabled = false

       ap.Attachment1 = att1
       ap.Attachment0 = att0

       att1.Parent = Part1
       att0.Parent = Part0
      end

      c = lp.Character
      if not (c and c.Parent) then
       ibrary:SendNotification("error: character not found")
       return nil
      end
      local hum = c:FindFirstChildOfClass("Humanoid")
      if not (hum and hum.Parent) then
       ibrary:SendNotification("error: humanoid not found")
       return nil
      end
      if hum.Health == 0 then
       ibrary:SendNotification("error: humanoid health 0")
       return nil
      end
      resReq()
      lp.Character = c
      wait(5.1)
      if not (c and c.Parent) then
       ibrary:SendNotification("error: character removed")
       return nil
      end
      if not (hum and hum.Parent) then
       ibrary:SendNotification("error: humanoid removed")
       return nil
      end
      if hum.Health == 0 then
       ibrary:SendNotification("error: humanoid died")
       return nil
      end
      c:BreakJoints()
      hum.Health = 0
      wait()
      if not (c and c.Parent) then
       ibrary:SendNotification("error: character removed")
       return nil
      end
      parts = {}
      for i, v in pairs(c:GetDescendants()) do
       if v and v.Parent and v:IsA("BasePart") then
        if v.CanCollide then
         table.insert(parts, v)
        else
         v.Velocity = Vector3.new(0, -1000, 0)
        end
       end
      end
      local hrp = Instance.new("Part", c)
      hrp.Name = "hrp"
      hrp.Anchored = true
      hrp.Transparency = 1
      pcall(function()
       hrp.CFrame = parts[1].CFrame
      end)
      ws.CurrentCamera.CameraSubject = hrp
      for i, v in pairs(parts) do
       if v and v.Parent then
        align(v, hrp)
       end
      end
      spawn(function()
       local currentp = nil
       spawn(function()
        while rs.Stepped:Wait() and c and c.Parent and hrp and hrp.Parent do
         if currentp and currentp.Parent then
          local c1 = currentp.Character
          if c1 and c1.Parent then
           local hed1 = c1:FindFirstChild("Head") or c1:FindFirstChild("Torso") or c1:FindFirstChild("HumanoidRootPart") or c1:FindFirstChildWhichIsA("BasePart")
           if hed1 then
            hrp.CFrame = hed1.CFrame
           end
          end
         end
        end
       end)
       while rs.Heartbeat:Wait() and c and c.Parent and hrp and hrp.Parent do
        local delay = tonumber(0)
        if (not delay) or (delay < 0) then
         delay = 0
        end
        if delay == 0 then
         currentp = false
        else
         wait(delay)
         delay = tonumber(0)
         if (not delay) or (delay < 0) then
          delay = 0
         end
         if c and c.Parent and hrp and hrp.Parent and (delay ~= 0) then
          local getp = plrs:GetPlayers()
          local i1 = false
          for i, v in pairs(getp) do
           if (v == currentp) and (v ~= lp) then
            i1 = i
           end
          end
          if (not i1) then
           i1 = 1
          end
          local function nextp()
           if i1 == #getp then
            i1 = 1
           else
            i1 += 1
           end
           currentp = getp[i1]
          end
          local c1 = nil
          while wait() and not (c1 and c1.Parent) do
           nextp()
           if currentp == lp then
            nextp()
           end
           c1 = currentp.Character
          end
         end
        end
       end
      end)

      spawn(function()
       while c and c.Parent and rs.Heartbeat:Wait() do
        for i, v in pairs(parts) do
         if v and v.Parent then
          v.Velocity = Vector3.new(0, -25.05, 0)
          local s = tonumber(10000)
          v.RotVelocity = Vector3.new(s, s, s)
         end
        end
       end
      end)

      spawn(function()
       while rs.Stepped:Wait() and c and c.Parent do
        for i, v in pairs(parts) do
         if v and v.Parent then
          v.CanCollide = false
         end
        end
       end
      end)

      spawn(function()
       local ctrlf = {
        ["w"] = false,
        ["a"] = false,
        ["s"] = false,
        ["d"] = false
       }
       mouse.KeyDown:Connect(function(key)
        key = key:lower()
        if ctrlf[key] ~= nil then
         ctrlf[key] = true
        end
       end)
       mouse.KeyUp:Connect(function(key)
        key = key:lower()
        if ctrlf[key] ~= nil then
         ctrlf[key] = false
        end
       end)
       while rs.RenderStepped:Wait() and c and c.Parent do
        if hrp and hrp.Parent then
         local flyspeed = tonumber(1)
         local fb = ((ctrlf["w"] and flyspeed) or 0) + ((ctrlf["s"] and -flyspeed) or 0)
         local lr = ((ctrlf["a"] and -flyspeed) or 0) + ((ctrlf["d"] and flyspeed) or 0)
         local camcf = ws.CurrentCamera.CFrame
         local caX, caY, caZ, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9 = camcf:GetComponents()
         local flycf = hrp.CFrame
         flycf = CFrame.new(flycf.X, flycf.Y, flycf.Z, ca1, ca2, ca3, ca4, ca5, ca6, ca7, ca8, ca9)
         flycf += camcf.lookVector * fb
         flycf += camcf.rightVector * lr
         hrp.CFrame = flycf
        end
       end
      end)

      library:SendNotification(5, "Loaded Invisible Fling Successfully")
     end))
    else

    end
   end,
  })

  RageMisc:AddButton({
   text = "Melee God Mode",
   callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/Criminality-Semi-Godmode.lua"))()
   end,
  })

  local TeleportationTab = library:AddTab"Teleportation":AddColumn()

  local TeleportationSection = TeleportationTab:AddSection"Teleportation"

  local ClosestSection = TeleportationTab:AddSection"Closest"

  local PlayersSection = TeleportationTab:AddSection"Players"

  local CombatSection = TeleportationTab:AddSection"Combat"

  local StockSection = TeleportationTab:AddSection"Stock"

  local AutoFarmSection = TeleportationTab:AddSection"AutoFarm"

  local TeleportationModeSection = TeleportationTab:AddSection"Mode"

  TeleportationSection:AddList({
   flag = "Teleportation",
   values = {
    "Tower",
    "Illegal Pizza",
    "?",
    "Vibe-Check",
    "Cafe-Locker",
    "Hideout",
    "Thrift Store",
    "Gas Station",
    "Factory",
    "Warehouse",
    "Subway",
    "Junkyard"
   },
   max = 10,
   callback = function(Value)
    library.flags.Teleportation = Value
   end
  })

  TeleportationSection:AddButton({
   text = "Teleport",
   callback = function()
    if library and library.flags.Teleportation == "Tower" then
     Teleport(Vector3.new(- 4507.15, 105.564, - 820.79))
    elseif library and library.flags.Teleportation == "Illegal Pizza" then
     Teleport(Vector3.new(- 4421.7, 5.19914, - 137.65))
    elseif library and library.flags.Teleportation == "?" then
     Teleport(Vector3.new(- 4287.86, - 94.1664, - 813.529))
    elseif library and library.flags.Teleportation == "Vibe-Check" then
     Teleport(Vector3.new(- 4776.74, - 201.265, - 935.866))
    elseif library and library.flags.Teleportation == "Cafe-Locker" then
     Teleport(Vector3.new(- 4670.06, 5.9992, - 257.101))
    elseif library and library.flags.Teleportation == "Hideout" then
     Teleport(Vector3.new(- 4696.15, 16.9688, - 948.164))
    elseif library and library.flags.Teleportation == "Thrift Store" then
     Teleport(Vector3.new(- 4660.08, 4.09864, - 152.484))
    elseif library and library.flags.Teleportation == "Gas Station" then
     Teleport(Vector3.new(- 4431.49, 4.02059, 193.073))
    elseif library and library.flags.Teleportation == "Factory" then
     Teleport(Vector3.new(- 4410.92, 5.59988, - 554.302))
    elseif library and library.flags.Teleportation == "Warehouse" then
     Teleport(Vector3.new(- 4628.37, 6.69952, - 562.563))
    elseif library and library.flags.Teleportation == "Subway" then
     Teleport(Vector3.new(- 4707.42, - 32.3007, - 699.182))
    elseif library and library.flags.Teleportation == "Junkyard" then
     Teleport(Vector3.new(- 3838.04, 3.89476, - 507.173))
    end
   end,
  })

  TeleportationSection:AddButton({
   text = "Fix Air Stuck",
   callback = function()
    game:GetService("ReplicatedStorage").Events.__DFfDD:FireServer("-r__r2")
   end,
  })

  ClosestSection:AddButton({
   text = "Register",
   callback = function()
    Teleport(GetRegister(math.huge).Position)
   end,
  })

  ClosestSection:AddButton({
   text = "Safe",
   callback = function()
    Teleport(GetSafe(math.huge, false).Position)
   end,
  })

  ClosestSection:AddButton({
   text = "Dealer",
   callback = function()
    Teleport(GetDealer(math.huge, "Dealer").Position)
   end,
  })

  ClosestSection:AddButton({
   text = "Armory Dealer",
   callback = function()
    Teleport(GetDealer(math.huge, "ArmoryDealer").Position)
   end,
  })

  ClosestSection:AddButton({
   text = "ATM",
   callback = function()
    Teleport(GetATM(math.huge).Position)
   end,
  })

  ClosestSection:AddButton({
   text = "Scrap",
   callback = function()
    Teleport(GetScrap(math.huge).Position)
   end,
  })

  ClosestSection:AddButton({
   text = "Fix Air Stuck",
   callback = function()
    game:GetService("ReplicatedStorage").Events.__DFfDD:FireServer("-r__r2")
   end,
  })

  PlayersSection:AddBox({
   callback = function(Value)
    PlayerList2 = Value
   end
  })

  PlayersSection:AddButton({
   text = "Teleport",
   callback = function()
    Teleport(game:GetService("Players"):FindFirstChild(tostring(getPlayer(PlayerList2))).Character.HumanoidRootPart.Position)
   end,
  })

  PlayersSection:AddButton({
   text = "Fix Air Stuck",
   callback = function()
    game:GetService("ReplicatedStorage").Events.__DFfDD:FireServer("-r__r2")
   end,
  })

  CombatSection:AddBox({
   callback = function(Value)
    PlayerList3 = Value
   end
  })

  CombatSection:AddButton({
   text = "Hit",
   callback = function()
    if Ping <= 100 then
     if game:GetService("Players"):FindFirstChild(tostring(getPlayer(PlayerList3))).Character:FindFirstChildOfClass("ForceField") then
      library:SendNotification(5, "Failed To Load, Force Field")
     else
      OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
      local KillAuraValue = game:GetService("ReplicatedStorage").Events["XMHH.1"]:InvokeServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "43TRFWJ", "Normal", tick(), true)
      wait(KillAuraTime)
      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players"):FindFirstChild(tostring(getPlayer(PlayerList3))).Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
      wait(0.15)
      game:GetService("ReplicatedStorage").Events["XMHH2.1"]:FireServer("\240\159\154\168", tick(), game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"), "2389ZFX33", KillAuraValue, false, game:GetService("Players").LocalPlayer.Character["Right Arm"], game:GetService("Players"):FindFirstChild(tostring(getPlayer(PlayerList3))).Character.HumanoidRootPart.Parent:FindFirstChild("Head"), game:GetService("Players"):FindFirstChild(tostring(getPlayer(PlayerList3))).Character.HumanoidRootPart.Parent, game:GetService("Players").LocalPlayer.Character["Right Arm"].Position, game:GetService("Players"):FindFirstChild(tostring(getPlayer(PlayerList3))).Character.HumanoidRootPart.Parent:FindFirstChild("Head").Position)
      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
     end
    else
     library:SendNotification(5, "Failed To Load, Ping Too High")
    end
   end,
  })

  StockSection:AddList({
   flag = "Stock",
   values = (function()
    local t = {}
    for _, v in next, game:GetService("Workspace").Map.Shopz.Dealer.CurrentStocks:GetChildren() do
     if v ~= Client then
      table.insert(t, v.Name)
     end
    end
    return t
   end)(),
   max = 10,
   callback = function(Value)
    library.flags.Stock = Value
   end
  })

  StockSection:AddButton({
   text = "Teleport",
   callback = function()
    Teleport(GetDealer(math.huge, "Dealer", tostring(library.flags.Stock)).Position)
   end,
  })

  AutoFarmSection:AddToggle({
   text = "Safe Auto Farm",
   callback = function(State)
    SafeAutoFarm = State
    if State then
     library:AddConnection(runService.RenderStepped, "Safe Auto Farm", function()
      if library and SafeAutoFarm and not SafeAutoFarmCoolDown and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 15 then
       coroutine.resume(coroutine.create(function()
        coroutine.resume(coroutine.create(function()
         if library and library.flags.AutoFarmMode == "Crowbar" then
          wait(20)
          SafeAutoFarmCoolDown = false
         else
          wait(10)
          SafeAutoFarmCoolDown = false
         end
        end))
        SafeAutoFarmCoolDown = true
        if library and library.flags.AutoFarmMode == "Crowbar" then
         if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crowbar") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crowbar") then
          game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
          Teleport(GetSafe(math.huge, false).Position + Vector3.new(0, 5, 0))
          repeat wait() until GetSafe(15, false) ~= nil
          game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crowbar"))
         else
          Teleport(GetDealer(math.huge, "Dealer").Position)
          wait(5)
          coroutine.resume(coroutine.create(function()
           game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", "Crowbar", GetDealer(math.huge, "Dealer"))
          end))
         end
        else
         if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lockpick") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lockpick") then
          game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
          Teleport(GetSafe(math.huge, false).Position + Vector3.new(0, 5, 0))
          game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lockpick"))
          repeat wait() until GetSafe(15, false) ~= nil
          repeat wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Remote")
          local AutoLockPickValue = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Remote:InvokeServer("S", GetSafe(15, false).Parent, "s")
          game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Remote:InvokeServer("D", GetSafe(15, false).Parent, "s", AutoLockPickValue)
          game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Remote:InvokeServer("C")
         else
          Teleport(GetDealer(math.huge, "Dealer").Position)
          wait(5)
          coroutine.resume(coroutine.create(function()
           for x = 1, 10 do
            coroutine.resume(coroutine.create(function()
             game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", "Lockpick", GetDealer(math.huge, "Dealer"))
            end))
           end
          end))
         end
        end
       end))
      end
     end)
    else
     library.connections["Safe Auto Farm"]:Disconnect()
    end
   end
  })

  AutoFarmSection:AddList({
   flag = "AutoFarmMode",
   values = {
    "Crowbar",
    "Lockpick",
   },
   callback = function(Value)
    library.flags.AutoFarmMode = Value
   end
  })

  AutoFarmSection:AddToggle({
   text = "Scrap Auto Farm",
   callback = function(State)
    ScrapAutoFarm = State
    if State then
     library:AddConnection(runService.RenderStepped, "Scrap Auto Farm", function()
      if library and ScrapAutoFarm and not ScrapAutoFarmCoolDown and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 15 then
       coroutine.resume(coroutine.create(function()
        coroutine.resume(coroutine.create(function()
         wait(15)
         ScrapAutoFarmCoolDown = false
        end))
        ScrapAutoFarmCoolDown = true
        if game:GetService("Workspace").Filter.SpawnedPiles:FindFirstChildOfClass("Model") then
         Teleport(GetScrap(math.huge).Position)
         wait(5)
         Teleport(GetDealer(math.huge, "Dealer").Position)
         wait(5)
         for i, v in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
          if v:IsA("Tool") then
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Throwables", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
          end
         end 
         for i, v in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Melees", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Guns", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Throwables", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
           coroutine.resume(coroutine.create(function()
            game:GetService("ReplicatedStorage").Events.SSHPRMTE1:InvokeServer("IllegalStore", "Misc", v.Name, GetDealer(math.huge, "Dealer"), "Sell")
           end))
          end
         end 
        else
         Teleport(Vector3.new(-4714.2, 272.234, 53.5772))
        end
       end))
      end
     end)
    else
     library.connections["Scrap Auto Farm"]:Disconnect()
    end
   end
  })

  TeleportationModeSection:AddList({
   flag = "TeleportationMode",
   values = {
    "Normal",
    "Instantly",
   },
   callback = function(Value)
    library.flags.TeleportationMode = Value
   end
  })

 elseif GameTitle == "Combat Warriors" then

  --[[ Anti Cheat Bypass ]]

  local Remotes = {}
  local NetworkEnvironment = getmenv(rawget(rawget(require(game.ReplicatedStorage.Framework.Nevermore), '_lookupTable'), 'Network'))
  local EventsTable = debug.getupvalue(NetworkEnvironment.GetEventHandler, 1)
  local FunctionsTable = debug.getupvalue(NetworkEnvironment.GetFunctionHandler, 1)

  local function AddRemotes(StorageTable)
   for Name, Info in pairs(StorageTable) do
    if rawget(Info, 'Remote') then
     Remotes[rawget(Info, 'Remote')] = Name
    end
   end
  end
  AddRemotes(EventsTable)
  AddRemotes(FunctionsTable)

  local Index
  Index = hookmetamethod(game, '__index', function(Self, Key)
   if checkcaller() and (Key == 'Name' or Key == 'name') and Remotes[Self] then
    return Remotes[Self]
   end

   return Index(Self, Key)
  end)

  coroutine.resume(coroutine.create(function()

   repeat
    wait()
   until library.flags[GameTitle .. " Walk Speed"] ~= nil and library.flags[GameTitle .. " Jump Power"] ~= nil

   library:AddConnection(runService.RenderStepped, "Anti Cheat Bypass", function()
    if game:GetService("Players").LocalPlayer.Character then
     for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"))) do
      v:Disable()
     end
    end
   end)

  end))

  --[[ Anti Cheat Bypass ]]

  --[[ Values ]]

  FastRespawnCoolDown = false

  --[[ Values ]]

  --[[ Functions ]]

  function getEvent(name)
   for i, v in ipairs(game:GetService("ReplicatedStorage").Communication.Events:GetChildren()) do
    if v.Name == name then
     return v
    end
   end
  end

  function getFunction(name)
   for i, v in ipairs(game:GetService("ReplicatedStorage").Communication.Functions:GetChildren()) do
    if v.Name == name then
     return v
    end
   end
  end

  --[[ Functions ]]

  --[[ Connects ]]

  game:GetService("Lighting").ChildAdded:Connect(function(Item)
   if library and library.flags[GameTitle .. " Auto Respawn"] then
    if Item.Name == "Blur" and not FastRespawnCoolDown then
     FastRespawnCoolDown = true
     wait(0.25)
     getEvent("StartFastRespawn"):FireServer()
     wait(library.flags[GameTitle .. " Auto Respawn Delay"])
     getFunction("CompleteFastRespawn"):FireServer("74")
     wait(0.25)
     getFunction("SpawnCharacter"):FireServer("51")
     wait(0.5)
     FastRespawnCoolDown = false
    end
   end
  end)

  library:AddConnection(inputService.InputBegan, function(Input)
   if library and library.flags[GameTitle .. " Infinite Jump"] and not inputService:GetFocusedTextBox() then
    if Input.KeyCode == Enum.KeyCode.Space then
     if library then
      local Char = Players[Client].Character
      if Char then
       Char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
      end
     end
    end
   end
  end)

  --[[ Connects ]]

  local LegitTab = library:AddTab"Legit":AddColumn()

  library.options["Aimbot Mode"]:AddValue"Silent"

  local LegitMisc = LegitTab:AddSection"Misc"

  LegitMisc:AddToggle({
   text = "Auto Respawn"
  }):AddSlider({
   text = "Auto Respawn Delay",
   min = 0,
   value = 0,
   max = 1,
   float = 0.1,
   suffix = "s"
  })

  local RageTab = library:AddTab"Rage":AddColumn()

  local RageMovement = RageTab:AddSection"Movement"

  RageMovement:AddToggle({
   text = "Walk Speed",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Walk Speed", function()
      if library and library.flags[GameTitle .. " Walk Speed"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char then
        Char.WalkSpeed = library.flags[GameTitle .. " Walk Speed Amount"]
       end
      end
     end)
    else
     library.connections["Walk Speed"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      Char.WalkSpeed = 16
     end
    end
   end
  }):AddSlider({
   text = "Walk Speed Amount",
   textpos = 2,
   min = 16,
   value = 16,
   max = 36
  })

  RageMovement:AddToggle({
   text = "Jump Power",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Jump Power", function()
      if library and library.flags[GameTitle .. " Jump Power"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char then
        Char.JumpPower = library.flags[GameTitle .. " Jump Power Amount"]
       end
      end
     end)
    else
     library.connections["Jump Power"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      Char.JumpPower = 50
     end
    end
   end
  }):AddSlider({
   text = "Jump Power Amount",
   min = 50,
   value = 50,
   max = 100
  })

  RageMovement:AddToggle({
   text = "Spin",
   callback = function(State)
    if State then
     library:AddConnection(runService.RenderStepped, "Spin", function()
      if library and library.flags[GameTitle .. " Spin"] then
       local Char = Players[Client].Character
       Char = Char and FFCoC(Char, "Humanoid")
       if Char and Char.Parent.HumanoidRootPart then
        if not Char.Parent.HumanoidRootPart:FindFirstChild("Spinning") then
         for i, v in pairs(Char.Parent.HumanoidRootPart:GetChildren()) do
          if v.Name == "Spinning" then
           v.Parent = nil
          end
         end
         local Spin = Instance.new("BodyAngularVelocity")
         Spin.Name = "Spinning"
         Spin.Parent = Char.Parent.HumanoidRootPart
         Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        end
        Char.Parent.HumanoidRootPart.Spinning.AngularVelocity = Vector3.new(0, library.flags[GameTitle .. " Spin Amount"], 0)
       end
      end
     end)
    else
     library.connections["Spin"]:Disconnect()
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      for i, v in pairs(Char.Parent.HumanoidRootPart:GetChildren()) do
       if v.Name == "Spinning" then
        v.Parent = nil
       end
      end
     end
    end
   end
  }):AddSlider({
   text = "Spin Amount",
   min = 20,
   value = 20,
   max = 50,
   callback = function(Value)
    local Character = Players[Client].Character
    if Character then
     for i, v in pairs(Character.HumanoidRootPart:GetChildren()) do
      if v.Name == "Spinning" then
       v.AngularVelocity = Vector3.new(0, library.flags[GameTitle .. " Spin Amount"], 0)
      end
     end
    end
   end
  })

  RageMovement:AddToggle({
   text = "Infinite Stamina",
   callback = function(State)
    if State then
     for i,v in pairs(getgc(true)) do
      if typeof(v) == 'table' and rawget(v, '_setStamina') then
       v._setStamina = function(a, b)
        a.stamina = math.huge
        a._staminaChangedSignal:Fire(math.huge)
       end
      end
     end
    end
   end
  })

  RageMovement:AddToggle({
   text = "Infinite Jump",
  })

  RageMovement:AddToggle({
   text = "No Clip",
  }):AddBind({
   mode = "hold",
   callback = function(Ended, Step)
    if library and library.flags[GameTitle .. " No Clip"] then
     local Char = Players[Client].Character
     Char = Char and FFCoC(Char, "Humanoid")
     if Char then
      for _, child in pairs(Char.Parent:GetDescendants()) do
       if child:IsA("BasePart") and child.CanCollide == true then
        child.CanCollide = false
       end
      end
     end
    end
   end
  })

  RageMovement:AddToggle({
   text = "Fly",
   callback = function(State)
    if State then
     coroutine.resume(coroutine.create(function()
      library:SendNotification(5, "Loading Fly, Please Wait")

      game:GetService('RunService').Heartbeat:Connect(function()
       game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
      end)

      for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
       if v:IsA('Camera') then
        v:Destroy()
       end
      end

      local newcam = Instance.new('Camera',game.Workspace)
      newcam.Name = 'Camera'
      newcam.CameraType = 'Custom'
      newcam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
      newcam.HeadLocked = true
      newcam.HeadScale = 1

      wait(2)

      local Flying = true
      local Flymode = "Camera"
      local MaxSpeed = 2 -- speed 
      local Down = {['w'] = false, ['a'] = false, ['s'] = false, ['d'] = false, ['q'] = false, ['e'] = false}
      local KD = game.Players.LocalPlayer:GetMouse().KeyDown
      local KU = game.Players.LocalPlayer:GetMouse().KeyUp
      KD:Connect(function(K)
       if K == "w" or K == "a" or K == "s" or K == "d" or K == "q" or K == "e" then 
        Down[K] = true 
        print(Down[K])
       end
      end)

      KU:Connect(function(K)
       if K == "w" or K == "a" or K == "s" or K == "d" or K == "q" or K == "e" then 
        Down[K] = false 
       elseif K == "x" then 
        Flying = not Flying 
        EnableFly()
       end
      end)

      if workspace:FindFirstChild("CenterOfGravitationalForce") then 
       Flying = false 
       workspace:FindFirstChild("CenterOfGravitationalForce"):Destroy()
      end

      local Flyanimation = Instance.new('Animation', game.Workspace)
      Flyanimation.AnimationId = 'rbxassetid://3541044388'
      local Idleanimation = Instance.new('Animation', game.Workspace)
      Idleanimation.AnimationId = 'rbxassetid://3541114300'
      local HeroIdle = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Idleanimation)
      local HeroFly = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Flyanimation)

      local Inc = 0.1

      library:SendNotification(5, "Loaded Fly Successfully")

      function EnableFly()
       local Speed = 0.5
       local Part = Instance.new("Part")
       Part.Parent = workspace
       Part.Size = Vector3.new(5,5,5)
       Part.Transparency = 1
       Part.CanCollide = false 
       Part.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
       Part.Anchored = true
       Part.Name = "CenterOfGravitationalForce"

       local Att1 = Instance.new("Attachment")
       Att1.Name = "Att1"
       Att1.Visible = false 
       Att1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

       local Att2 = Instance.new("Attachment")
       Att2.Name = "Att2"
       Att2.Visible = false 
       Att2.Parent = Part

       local AlignPos = Instance.new("AlignPosition")
       local AlignGyro = Instance.new("AlignOrientation")

       AlignPos.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
       AlignPos.Attachment0 = Att1
       AlignPos.MaxForce = math.huge
       AlignPos.MaxVelocity = math.huge
       AlignPos.Mode = Enum.PositionAlignmentMode.TwoAttachment
       AlignPos.Attachment1 = Att2
       AlignPos.RigidityEnabled = false 

       AlignGyro.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
       AlignGyro.Mode = Enum.OrientationAlignmentMode.OneAttachment
       AlignGyro.CFrame = workspace.CurrentCamera.CFrame
       AlignGyro.MaxTorque = math.huge
       AlignGyro.Attachment0 = Att1
       AlignGyro.RigidityEnabled = false

       repeat wait() 
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
        if Down["w"] then 
         HeroFly:Play()
         HeroIdle:Stop()
         Part.CFrame = Part.CFrame + workspace.CurrentCamera.CFrame.lookVector * Speed
         Speed = Speed + Inc
        end
        if Down["s"] then 
         HeroFly:Play()
         HeroIdle:Stop()
         Part.CFrame = Part.CFrame - workspace.CurrentCamera.CFrame.lookVector * Speed
         Speed = Speed + Inc
        end
        if Down["q"] then 
         Part.CFrame = Part.CFrame * CFrame.new(0, Speed, 0)
        end 
        if Down["e"] then 
         Part.CFrame = Part.CFrame * CFrame.new(0, -Speed, 0)
        end
        if Speed > MaxSpeed then 
         Speed = MaxSpeed
        end
        if not Down["w"] and not Down["s"] then 
         HeroFly:Stop()
         HeroIdle:Play()
        end
        if Down["w"] then 
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(-math.rad(Speed*4), 0 ,0)
        elseif Down["s"] then 
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(math.rad(Speed*4), 0 ,0)
        elseif Down["q"] then 
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(math.rad(Speed*7), 0 ,0)
        elseif Down["e"] then 
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(-math.rad(Speed*7), 0 ,0)
        elseif Down["a"] then 
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(0, math.rad(Speed*50) ,0)
        elseif Down["d"] then 
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(0, -math.rad(Speed*50) ,0)
        else
         AlignGyro.CFrame = workspace.CurrentCamera.CFrame
        end
       until Flying == false
       game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
       AlignGyro:Destroy()
       AlignPos:Destroy()
       Part:Destroy()
       HeroIdle:Stop()
       HeroFly:Stop()
      end
      EnableFly()
     end))
    else

    end
   end
  })

  local RageMisc = RageTab:AddSection"Misc"

  local MT = getrawmetatable(game)
  setreadonly(MT, false)
  local NameCall = MT.__namecall
  MT.__namecall = newcclosure(function(self, ...)
   local Method = getnamecallmethod()
   local Args = {
    ...
   }
   if Method == "FireServer" and tostring(self) == "StartFallDamage" or tostring(self) == "TakeFallDamage" then
    if library and library.flags[GameTitle .. " Disable Fall Damage"] then
     return wait(9e9)
    end
   end
   if Method == "FireServer" and tostring(self) == "RagdollRemoteEvent" then
    if library and library.flags[GameTitle .. " Disable Ragdoll"] then
     return wait(9e9)
    end
   end
   return NameCall(self, ...)
  end)

  RageMisc:AddToggle({
   text = "Disable Fall Damage",
  })

  RageMisc:AddToggle({
   text = "Disable Ragdoll",
  })

 elseif GameTitle == "Randomizer" then

  --[[ Anti Cheat Bypass ]]

  --[[ Anti Cheat Bypass ]]

  --[[ Silent Aim ]]

  coroutine.resume(coroutine.create(function()

   repeat
    wait()
   until game:GetService("Players").LocalPlayer.Character and library.flags["Silent FieldOfView"] ~= nil and library.flags["Silent HitChance"] ~= nil and library.flags["Silent TargetPart"] ~= nil

   local Camera = workspace.CurrentCamera
   local Players = game:GetService("Players")
   local RunService = game:GetService("RunService")
   local GuiService = game:GetService("GuiService")
   local UserInputService = game:GetService("UserInputService")
   local HttpService = game:GetService("HttpService")

   local LocalPlayer = Players.LocalPlayer
   local Mouse = LocalPlayer:GetMouse()

   local GetChildren = game.GetChildren
   local GetPlayers = Players.GetPlayers
   local WorldToScreen = Camera.WorldToScreenPoint
   local WorldToViewportPoint = Camera.WorldToViewportPoint
   local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
   local FindFirstChild = game.FindFirstChild
   local RenderStepped = RunService.RenderStepped
   local GuiInset = GuiService.GetGuiInset
   local GetMouseLocation = UserInputService.GetMouseLocation

   local resume = coroutine.resume 
   local create = coroutine.create

   local ValidTargetParts = {
    "Head",
    "Torso"
   }
   local PredictionAmount = 0.165

   local ExpectedArguments = {
    FindPartOnRayWithIgnoreList = {
     ArgCountRequired = 3,
     Args = {
      "Instance", "Ray", "table", "boolean", "boolean"
     }
    },
   }

   function CalculateChance(Percentage)
    -- // Floor the percentage
    Percentage = math.floor(Percentage)

    -- // Get the chance
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    -- // Return
    return chance <= Percentage / 100
   end

   local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = WorldToScreen(Camera, Vector)
    return Vector2.new(Vec3.X, Vec3.Y), OnScreen
   end

   local function ValidateArguments(Args, RayMethod)
    local Matches = 0
    if # Args < RayMethod.ArgCountRequired then
     return false
    end
    for Pos, Argument in next, Args do
     if typeof(Argument) == RayMethod.Args[Pos] then
      Matches = Matches + 1
     end
    end
    return Matches >= RayMethod.ArgCountRequired
   end

   local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
   end

   local function getMousePosition()
    return GetMouseLocation(UserInputService)
   end

   local function IsPlayerVisible(Player)
    local PlayerCharacter = Player.Character
    local LocalPlayerCharacter = LocalPlayer.Character

    if not (PlayerCharacter or LocalPlayerCharacter) then
     return
    end 

    local PlayerRoot = FindFirstChild(PlayerCharacter, library.flags["Silent TargetPart"]) or FindFirstChild(PlayerCharacter, "HumanoidRootPart")

    if not PlayerRoot then
     return
    end 

    local CastPoints, IgnoreList = {
     PlayerRoot.Position,
     LocalPlayerCharacter,
     PlayerCharacter
    }, {
     LocalPlayerCharacter,
     PlayerCharacter
    }
    local ObscuringObjects = # GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)

    return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
   end

   local function getClosestPlayer()
    if not library.flags["Silent TargetPart"] then
     return
    end
    local Closest
    local DistanceToMouse
    for _, Player in next, GetPlayers(Players) do
     if Player == LocalPlayer then
      continue
     end

     local Character = Player.Character
     if not Character then
      continue
     end

     local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
     local Humanoid = FindFirstChild(Character, "Humanoid")
     if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then
      continue
     end

     local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
     if not OnScreen then
      continue
     end

     local Distance = (getMousePosition() - ScreenPosition).Magnitude
     if Distance <= (DistanceToMouse or library.flags["Silent FieldOfView"] or 2000) then
      Closest = ((library.flags["Silent TargetPart"] == "Random" and Character[ValidTargetParts[math.random(1, # ValidTargetParts)]]) or Character[library.flags["Silent TargetPart"]])
      DistanceToMouse = Distance
     end
    end
    return Closest
   end

   local oldNamecall
   oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {
     ...
    }

    local chance = CalculateChance(library.flags["Silent HitChance"])
    if library and library.flags["Aimbot"] and library.flags["Aimbot Mode"] == "Silent" and Arguments[1] == workspace and not checkcaller() and chance == true then
     if Method == "FindPartOnRayWithIgnoreList" then
      if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
       local A_Ray = Arguments[2]

       local HitPart = getClosestPlayer()
       if HitPart then
        local Origin = A_Ray.Origin
        local Direction = getDirection(Origin, HitPart.Position)
        Arguments[2] = Ray.new(Origin, Direction)

        return oldNamecall(unpack(Arguments))
       end
      end
     end
    end
    return oldNamecall(...)
   end))

  end))

  --[[ Silent Aim ]]

  --[[ Functions ]]

  function GetGunScript()
   for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
    if v.Name == "GunScript_Local" then
     return v
    end
   end
  end

  local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

  function GunModules()
   if library and library.flags[GameTitle .. " Infinite Ammo"] then
    coroutine.resume(coroutine.create(function()
     local scriptPath = GetGunScript()
     local closureName = "Reload"
     local upvalueIndex = 6
     local closureConstants = {
      [1] = "LimitedAmmoEnabled",
      [2] = "AmmoPerMag",
      [3] = "IsPlaying",
      [4] = "Stop",
      [5] = "TweenInfo",
      [6] = "new"
     }
     local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
     local value = math.huge
     debug.setupvalue(closure, upvalueIndex, value)
    end))
   end
   if library and not library.flags[GameTitle .. " Infinite Ammo"] then
    coroutine.resume(coroutine.create(function()
     local scriptPath = GetGunScript()
     local closureName = "Reload"
     local upvalueIndex = require(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Setting).AmmoPerMag
     local closureConstants = {
      [1] = "LimitedAmmoEnabled",
      [2] = "AmmoPerMag",
      [3] = "IsPlaying",
      [4] = "Stop",
      [5] = "TweenInfo",
      [6] = "new"
     }
     local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
     local value = math.huge
     debug.setupvalue(closure, upvalueIndex, value)
    end))
   end
  end

  function GetClosestHumanoidRootPart(currentMagnitude)
   local closestCurrent = nil
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game:GetService("Players").LocalPlayer then
     if v.Character ~= nil then
      if v.Character.Humanoid.Health ~= 0 then
       if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < currentMagnitude then
        currentMagnitude = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
        closestCurrent = v.Character.HumanoidRootPart
       end
      end
     end
    end
   end
   return closestCurrent
  end

  --[[ Connects ]]

  game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(Character)
   Character.ChildAdded:Connect(function(Object)
    if library and Object:IsA("Tool") then
     GunModules()
    end
   end)
  end)

  if game:GetService("Players").LocalPlayer.Character ~= nil then
   game:GetService("Players").LocalPlayer.Character.ChildAdded:Connect(function(Object)
    if library and Object:IsA("Tool") then
     GunModules()
    end
   end)
  end

  --[[ Connects ]]

  --[[ Functions ]]

  local LegitTab = library:AddTab"Legit":AddColumn()

  local LegitGunModules = LegitTab:AddSection"Gun Modules"

  library.options["Aimbot Mode"]:AddValue"Silent"

  LegitGunModules:AddToggle({
   text = "Infinite Ammo",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  })

  local LegitMisc = LegitTab:AddSection"Misc"

  LegitGunModules:AddToggle({
   text = "Infinite Ammo",
   callback = function(State)
    if State then
     GunModules()
    end
   end
  })
 end
end)

library.flagprefix = nil

if VisualsTab.canInit then
 AddTracker(PlayerServ)
end

--Always running
library:AddConnection(runService.RenderStepped, function()
 local MX, MY = Mouse.X, Mouse.Y + 36
 if library.flags["Mouse Offset"] then
  MX = MX + library.flags["MXO Amount"]
  MY = MY + library.flags["MYO Amount"]
 end

 if Draw.Visible then
  Draw.Position = Vector2.new(MX, MY)
 end

 --if RadarWindow.Visible then
 -- RadarWindow.Position = Vector2.new(MX, MY)
 --end

 if CrosshairBottom.Visible then
  local Thickness = library.flags["Crosshair Thickness"] / 2
  local TX, TY = MX - Thickness, MY - Thickness
  CrosshairTop.Position = Vector2.new(TX, MY - library.flags["Crosshair Gap"])
  CrosshairLeft.Position = Vector2.new(MX - library.flags["Crosshair Gap"], TY)
  CrosshairRight.Position = Vector2.new(MX + library.flags["Crosshair Gap"], TY)
  CrosshairBottom.Position = Vector2.new(TX, MY + library.flags["Crosshair Gap"])
 end

 Lighting.ClockTime = library.flags["Clock Time"] and library.flags["Clock Time Amount"] or LightingSpoof.ClockTime
 Lighting.Brightness = library.flags["Brightness"] and library.flags["Brightness Amount"] or LightingSpoof.Brightness
 Lighting.Ambient = library.flags["Ambient Lighting"] and library.flags["Indoor Ambient"] or LightingSpoof.Ambient
 Lighting.OutdoorAmbient = library.flags["Ambient Lighting"] and library.flags["Outdoor Ambient"] or LightingSpoof.OutdoorAmbient
 Lighting.ColorShift_Top = library.flags["Color Shift"] and library.flags["Color Shift Top"] or LightingSpoof.ColorShift_Top

 Camera.FieldOfView = (library.flags["FOV Zoom Enabled"] and library.flags["FOV Zoom Key"] and (50 - library.flags["FOV Zoom Amount"])) or library.flags["FOV Changer"] and (library.flags["Dynamic Custom FOV"] and (CameraSpoof.FieldOfView + library.flags["FOV Amount"]) or library.flags["FOV Amount"]) or CameraSpoof.FieldOfView
end)

library:Init()

delay(1, function()
 library:LoadConfig(tostring(getgenv().AutoLoad))
end)

if not getgenv().Silent then
 if Loaded then
  library:SendNotification(5, "Loaded " .. (GameTitle or "Universal") .. " Successfully In " .. tostring(tick() - getgenv().Start) .. " Seconds")
 else
  library:SendNotification(5, "Failed To Load " .. (GameTitle or "Universal") .. "Error Copied")
  setclipboard(LoadError)
 end
end