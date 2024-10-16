-- Defines
local OrbitingLibrary                           = loadstring(game:HttpGet("https://raw.githubusercontent.com/firm0001/uwu/main/dependencies/orbit.lua"))()
local ReplicatedStorage                         = game:GetService("ReplicatedStorage")
local RunService                                = game:GetService("RunService")
local Players                                   = game:GetService("Players")
local Workspace                                 = game:GetService("Workspace")
local UserInputService                          = game:GetService("UserInputService")
local StarterGui                                = game:GetService("StarterGui")
local TweenService                              = game:GetService("TweenService")
local HttpService                               = game:GetService("HttpService")
local TeleportService                           = game:GetService("TeleportService")
local VirtualInputManager                       = game:GetService("VirtualInputManager")
local VirtualUser                               = game:GetService("VirtualUser")
local LocalPlayer                               = game.Players.LocalPlayer

local Mouse, CurrentCamera                      = LocalPlayer:GetMouse(), Workspace.CurrentCamera
local FOVCircle                                 = Drawing.new("Circle")
local EasingStyles                              = Enum.EasingStyle
local Inp                                       = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
getgenv().AntiLockEnabled                       = false
local function check()
    return ReplicatedStorage:FindFirstChild("MainEvent") or ReplicatedStorage:FindFirstChild("MAINEVENT")
end

local ME = check()
local EventN = nil
if ME then
    if ME.Name == "MAINEVENT" then
        EventN              = "STOMP"
    else
        EventN              = "Stomp"
    end
end
local task = task or coroutine
FOVCircle.Visible = false
UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and FOVCircle.Visible then
        local guiInset = game:GetService("GuiService"):GetGuiInset()
        
        FOVCircle.Position = Vector2.new(Mouse.X, Mouse.Y + guiInset.Y)
    end
end)
local TargetPlayer, TargetAimEnabled, SilentAimEnabled, CamlockToggle = nil, false, false, false
local SelectedPart = "HumanoidRootPart"
local ResolverEnabled = false
local repo = 'https://raw.githubusercontent.com/synfulangel/Linoria/main/'
local Library                       = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager                  = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager                   = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local AkaliNotif                    = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/InformantV1/main/libraries/Akali.lua"))()
local Akali                         = AkaliNotif.Notify
local Settings = {
Accent = Color3.fromHex("#6E699B"),
Font = Enum.Font.SourceSans,
IsBackgroundTransparent = true,
Rounded = false,
Dim = false,

ItemColor = Color3.fromRGB(30, 30, 30),
BorderColor = Color3.fromRGB(45, 45, 45),
MinSize = Vector2.new(680, 560),
MaxSize = Vector2.new(1212, 1212)
}

local Menu = {}
local Tabs = {}
local Items = {}
local EventObjects = {} -- For updating items on menu property change
local Notifications = {}

local Scaling = {True = false, Origin = nil, Size = nil}
local Dragging = {Gui = nil, True = false}
local Draggables = {}
local ToolTip = {Enabled = false, Content = "", Item = nil}

local HotkeyRemoveKey = Enum.KeyCode.RightControl
local Selected = {
Frame = nil,
Item = nil,
Offset = UDim2.new(),
Follow = false
}
local SelectedTab
local SelectedTabLines = {}


local wait = task.wait
local delay = task.delay
local spawn = task.spawn
local protect_gui = function(Gui, Parent)
if gethui and syn and syn.protect_gui then 
    Gui.Parent = gethui() 
elseif not gethui and syn and syn.protect_gui then 
    syn.protect_gui(Gui)
    Gui.Parent = Parent 
else 
    Gui.Parent = Parent 
end
end

local CoreGui = game:GetService("CoreGui")
local UserInput = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")


local __Menu = {}
setmetatable(Menu, {
__index = function(self, Key) return __Menu[Key] end,
__newindex = function(self, Key, Value)
    __Menu[Key] = Value
    
    if Key == "Hue" or Key == "ScreenSize" then return end

    for _, Object in pairs(EventObjects) do Object:Update() end
    for _, Notification in pairs(Notifications) do Notification:Update() end
end
})


Menu.Accent = Settings.Accent
Menu.Font = Settings.Font
Menu.IsBackgroundTransparent = Settings.IsBackgroundTransparent
Menu.Rounded = Settings.IsRounded
Menu.Dim = Settings.IsDim
Menu.ItemColor = Settings.ItemColor
Menu.BorderColor = Settings.BorderColor
Menu.MinSize = Settings.MinSize
Menu.MaxSize = Settings.MaxSize

Menu.Hue = 0
Menu.IsVisible = false
Menu.ScreenSize = Vector2.new()


local function AddEventListener(self: GuiObject, Update: any)
table.insert(EventObjects, {
    self = self,
    Update = Update
})
end


local function CreateCorner(Parent: Instance, Pixels: number): UICorner
local UICorner = Instance.new("UICorner")
UICorner.Name = "Corner"
UICorner.Parent = Parent
return UICorner
end


local function CreateStroke(Parent: Instance, Color: Color3, Thickness: number, Transparency: number): UIStroke
local UIStroke = Instance.new("UIStroke")
UIStroke.Name = "Stroke"
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
UIStroke.Color = Color or Color3.new()
UIStroke.Thickness = Thickness or 1
UIStroke.Transparency = Transparency or 0
UIStroke.Enabled = true
UIStroke.Parent = Parent
return UIStroke
end 


local function CreateLine(Parent: Instance, Size: UDim2, Position: UDim2, Color: Color3): Frame
local Line = Instance.new("Frame")
Line.Name = "Line"
Line.BackgroundColor3 = typeof(Color) == "Color3" and Color or Menu.Accent
Line.BorderSizePixel = 0
Line.Size = Size or UDim2.new(1, 0, 0, 1)
Line.Position = Position or UDim2.new()
Line.Parent = Parent

if Line.BackgroundColor3 == Menu.Accent then
    AddEventListener(Line, function() Line.BackgroundColor3 = Menu.Accent end)
end

return Line
end


local function CreateLabel(Parent: Instance, Name: string, Text: string, Size: UDim2, Position: UDim2): TextLabel
local Label = Instance.new("TextLabel")
Label.Name = Name
Label.BackgroundTransparency = 1
Label.Size = Size or UDim2.new(1, 0, 0, 15)
Label.Position = Position or UDim2.new()
Label.Font = Enum.Font.SourceSans
Label.Text = Text or ""
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.Parent = Parent
return Label
end


local function UpdateSelected(Frame: Instance, Item: Item, Offset: UDim2)
local Selected_Frame = Selected.Frame
if Selected_Frame then
    Selected_Frame.Visible = false
    Selected_Frame.Parent = nil
end

Selected = {}

if Frame then
    if Selected_Frame == Frame then return end
    Selected = {
        Frame = Frame,
        Item = Item,
        Offset = Offset
    }

    Frame.ZIndex = 3
    Frame.Visible = true
    Frame.Parent = Menu.Screen
end
end


local function SetDraggable(self: GuiObject)
table.insert(Draggables, self)
local DragOrigin
local GuiOrigin

self.InputBegan:Connect(function(Input: InputObject, Process: boolean)
    if (not Dragging.Gui and not Dragging.True) and (Input.UserInputType == Enum.UserInputType.MouseButton1) then
        for _, v in ipairs(Draggables) do
            v.ZIndex = 1
        end
        self.ZIndex = 2

        Dragging = {Gui = self, True = true}
        DragOrigin = Vector2.new(Input.Position.X, Input.Position.Y)
        GuiOrigin = self.Position
    end
end)

UserInput.InputChanged:Connect(function(Input: InputObject, Process: boolean)
    if Dragging.Gui ~= self then return end
    if not (UserInput:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)) then
        Dragging = {Gui = nil, True = false}
        return
    end
    if (Input.UserInputType == Enum.UserInputType.MouseMovement) then
        local Delta = Vector2.new(Input.Position.X, Input.Position.Y) - DragOrigin
        local ScreenSize = Menu.ScreenSize

        local ScaleX = (ScreenSize.X * GuiOrigin.X.Scale)
        local ScaleY = (ScreenSize.Y * GuiOrigin.Y.Scale)
        local OffsetX = math.clamp(GuiOrigin.X.Offset + Delta.X + ScaleX,   0, ScreenSize.X - self.AbsoluteSize.X)
        local OffsetY = math.clamp(GuiOrigin.Y.Offset + Delta.Y + ScaleY, -36, ScreenSize.Y - self.AbsoluteSize.Y)
        
        local Position = UDim2.fromOffset(OffsetX, OffsetY)
        self.Position = Position
    end
end)
end


Menu.Screen = Instance.new("ScreenGui")
Menu.Screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
protect_gui(Menu.Screen, CoreGui)
Menu.ScreenSize = Menu.Screen.AbsoluteSize

local Menu_Frame = Instance.new("Frame")
local MenuScaler_Button = Instance.new("TextButton")
local Title_Label = Instance.new("TextLabel")
local Icon_Image = Instance.new("ImageLabel")
local TabHandler_Frame = Instance.new("Frame")
local TabIndex_Frame = Instance.new("Frame")
local Tabs_Frame = Instance.new("Frame")

local Notifications_Frame = Instance.new("Frame")
local MenuDim_Frame = Instance.new("Frame")
local ToolTip_Label = Instance.new("TextLabel")
local Modal = Instance.new("TextButton")

Menu_Frame.Name = "Menu"
Menu_Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Menu_Frame.BorderColor3 = Color3.fromRGB(40, 40, 40)
Menu_Frame.BorderMode = Enum.BorderMode.Inset
Menu_Frame.Position = UDim2.new(0.5, -250, 0.5, -275)
Menu_Frame.Size = UDim2.new(0, 500, 0, 550)
Menu_Frame.Visible = false
Menu_Frame.Parent = Menu.Screen
CreateStroke(Menu_Frame, Color3.new(), 2)
CreateLine(Menu_Frame, UDim2.new(1, -8, 0, 1), UDim2.new(0, 4, 0, 15))
SetDraggable(Menu_Frame)

MenuScaler_Button.Name = "MenuScaler"
MenuScaler_Button.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MenuScaler_Button.BorderColor3 = Color3.fromRGB(40, 40, 40)
MenuScaler_Button.BorderSizePixel = 0
MenuScaler_Button.Position = UDim2.new(1, -15, 1, -15)
MenuScaler_Button.Size = UDim2.fromOffset(15, 15)
MenuScaler_Button.Font = Enum.Font.SourceSans
MenuScaler_Button.Text = ""
MenuScaler_Button.TextColor3 = Color3.new(1, 1, 1)
MenuScaler_Button.TextSize = 14
MenuScaler_Button.AutoButtonColor = false
MenuScaler_Button.Parent = Menu_Frame
MenuScaler_Button.InputBegan:Connect(function(Input, Process)
if Process then return end
if (Input.UserInputType == Enum.UserInputType.MouseButton1) then
    UpdateSelected()
    Scaling = {
        True = true,
        Origin = Vector2.new(Input.Position.X, Input.Position.Y),
        Size = Menu_Frame.AbsoluteSize - Vector2.new(0, 36)
    }
end
end)
MenuScaler_Button.InputEnded:Connect(function(Input, Process)
if (Input.UserInputType == Enum.UserInputType.MouseButton1) then
    UpdateSelected()
    Scaling = {
        True = false,
        Origin = nil,
        Size = nil
    }
end
end)

Icon_Image.Name = "Icon"
Icon_Image.BackgroundTransparency = 1
Icon_Image.Position = UDim2.new(0, 5, 0, 0)
Icon_Image.Size = UDim2.fromOffset(15, 15)
Icon_Image.Image = "rbxassetid://"
Icon_Image.Visible = false
Icon_Image.Parent = Menu_Frame

Title_Label.Name = "Title"
Title_Label.BackgroundTransparency = 1
Title_Label.Position = UDim2.new(0, 5, 0, 0)
Title_Label.Size = UDim2.new(1, -10, 0, 15)
Title_Label.Font = Enum.Font.SourceSans
Title_Label.Text = ""
Title_Label.TextColor3 = Color3.new(1, 1, 1)
Title_Label.TextSize = 14
Title_Label.TextXAlignment = Enum.TextXAlignment.Left
Title_Label.RichText = true
Title_Label.Parent = Menu_Frame

TabHandler_Frame.Name = "TabHandler"
TabHandler_Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TabHandler_Frame.BorderColor3 = Color3.fromRGB(40, 40, 40)
TabHandler_Frame.BorderMode = Enum.BorderMode.Inset
TabHandler_Frame.Position = UDim2.new(0, 4, 0, 19)
TabHandler_Frame.Size = UDim2.new(1, -8, 1, -25)
TabHandler_Frame.Parent = Menu_Frame
CreateStroke(TabHandler_Frame, Color3.new(), 2)

TabIndex_Frame.Name = "TabIndex"
TabIndex_Frame.BackgroundTransparency = 1
TabIndex_Frame.Position = UDim2.new(0, 1, 0, 1)
TabIndex_Frame.Size = UDim2.new(1, -2, 0, 20)
TabIndex_Frame.Parent = TabHandler_Frame

Tabs_Frame.Name = "Tabs"
Tabs_Frame.BackgroundTransparency = 1
Tabs_Frame.Position = UDim2.new(0, 1, 0, 26)
Tabs_Frame.Size = UDim2.new(1, -2, 1, -25)
Tabs_Frame.Parent = TabHandler_Frame

Notifications_Frame.Name = "Notifications"
Notifications_Frame.BackgroundTransparency = 1
Notifications_Frame.Size = UDim2.new(1, 0, 1, 36)
Notifications_Frame.Position = UDim2.fromOffset(0, -36)
Notifications_Frame.ZIndex = 5
Notifications_Frame.Parent = Menu.Screen

ToolTip_Label.Name = "ToolTip"
ToolTip_Label.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ToolTip_Label.BorderColor3 = Menu.BorderColor
ToolTip_Label.BorderMode = Enum.BorderMode.Inset
ToolTip_Label.AutomaticSize = Enum.AutomaticSize.XY
ToolTip_Label.Size = UDim2.fromOffset(0, 0, 0, 15)
ToolTip_Label.Text = ""
ToolTip_Label.TextSize = 14
ToolTip_Label.Font = Enum.Font.SourceSans
ToolTip_Label.TextColor3 = Color3.new(1, 1, 1)
ToolTip_Label.ZIndex = 5
ToolTip_Label.Visible = false
ToolTip_Label.Parent = Menu.Screen
CreateStroke(ToolTip_Label, Color3.new(), 1)
AddEventListener(ToolTip_Label, function()
ToolTip_Label.BorderColor3 = Menu.BorderColor
end)

Modal.Name = "Modal"
Modal.BackgroundTransparency = 1
Modal.Modal = true
Modal.Text = ""
Modal.Parent = Menu_Frame


--SelectedTabLines.Top = CreateLine(nil, UDim2.new(1, 0, 0, 1), UDim2.new())
SelectedTabLines.Left = CreateLine(nil, UDim2.new(0, 1, 1, 0), UDim2.new(), Color3.new())
SelectedTabLines.Right = CreateLine(nil, UDim2.new(0, 1, 1, 0), UDim2.new(1, -1, 0, 0), Color3.new())
SelectedTabLines.Bottom = CreateLine(TabIndex_Frame, UDim2.new(), UDim2.new(0, 0, 1, 0), Color3.new())
SelectedTabLines.Bottom2 = CreateLine(TabIndex_Frame, UDim2.new(), UDim2.new(), Color3.new())


local function GetDictionaryLength(Dictionary: table)
local Length = 0
for _ in pairs(Dictionary) do
    Length += 1
end
return Length
end


local function UpdateSelectedTabLines(Tab: Tab)
if not Tab then return end

if (Tab.Button.AbsolutePosition.X > Tab.self.AbsolutePosition.X) then
    SelectedTabLines.Left.Visible = true
else
    SelectedTabLines.Left.Visible = false
end

if (Tab.Button.AbsolutePosition.X + Tab.Button.AbsoluteSize.X < Tab.self.AbsolutePosition.X + Tab.self.AbsoluteSize.X) then
    SelectedTabLines.Right.Visible = true
else
    SelectedTabLines.Right.Visible = false
end

--SelectedTabLines.Top.Parent = Tab.Button
SelectedTabLines.Left.Parent = Tab.Button
SelectedTabLines.Right.Parent = Tab.Button

local FRAME_POSITION = Tab.self.AbsolutePosition
local BUTTON_POSITION = Tab.Button.AbsolutePosition
local BUTTON_SIZE = Tab.Button.AbsoluteSize
local LENGTH = BUTTON_POSITION.X - FRAME_POSITION.X
local OFFSET = (BUTTON_POSITION.X + BUTTON_SIZE.X) - FRAME_POSITION.X

SelectedTabLines.Bottom.Size = UDim2.new(0, LENGTH + 1, 0, 1)
SelectedTabLines.Bottom2.Size = UDim2.new(1, -OFFSET, 0, 1)
SelectedTabLines.Bottom2.Position = UDim2.new(0, OFFSET, 1, 0)
end


local function UpdateTabs()
for _, Tab in pairs(Tabs) do
    Tab.Button.Size = UDim2.new(1 / GetDictionaryLength(Tabs), 0, 1, 0)
    Tab.Button.Position = UDim2.new((1 / GetDictionaryLength(Tabs)) * (Tab.Index - 1), 0, 0, 0)
end
UpdateSelectedTabLines(SelectedTab)
end


local function GetTab(Tab_Name: string): Tab
assert(Tab_Name, "NO TAB_NAME GIVEN")
return Tabs[Tab_Name]
end

local function ChangeTab(Tab_Name: string)
assert(Tabs[Tab_Name], "Tab \"" .. tostring(Tab_Name) .. "\" does not exist!")
for _, Tab in pairs(Tabs) do
    Tab.self.Visible = false
    Tab.Button.BackgroundColor3 = Menu.ItemColor
    Tab.Button.TextColor3 = Color3.fromRGB(205, 205, 205)
end
local Tab = GetTab(Tab_Name)
Tab.self.Visible = true
Tab.Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Tab.Button.TextColor3 = Color3.new(1, 1, 1)

SelectedTab = Tab
UpdateSelected()
UpdateSelectedTabLines(Tab)
end


local function GetContainer(Tab_Name: string, Container_Name: string): Container
assert(Tab_Name, "NO TAB_NAME GIVEN")
assert(Container_Name, "NO CONTAINER NAME GIVEN")
return GetTab(Tab_Name)[Container_Name]
end


local function CheckItemIndex(Item_Index: number, Method: string)
assert(typeof(Item_Index) == "number", "invalid argument #1 to '" .. Method .. "' (number expected, got " .. typeof(Item_Index) .. ")")
assert(Item_Index <= #Items and Item_Index > 0, "invalid argument #1 to '" .. Method .. "' (index out of range")
end


function Menu:GetItem(Index: number): Item
CheckItemIndex(Index, "GetItem")
return Items[Index]
end


function Menu:FindItem(Tab_Name: string, Container_Name: string, Class_Name: string, Name: string): Item
local Result
for Index, Item in ipairs(Items) do
    if Item.Tab == Tab_Name and Item.Container == Container_Name then
        if Item.Name == Name and (Item.Class == Class_Name) then
            Result = Index
            break
        end
    end
end

if Result then
    return Menu:GetItem(Result)
else
    return error("Item " .. tostring(Name) .. " was not found")
end
end


function Menu:SetTitle(Name: string)
Title_Label.Text = tostring(Name)
end


function Menu:SetIcon(Icon: string)
if typeof(Icon) == "string" or typeof(Icon) == "number" then
    Title_Label.Position = UDim2.fromOffset(20, 0)
    Title_Label.Size = UDim2.new(1, -40, 0, 15)
    Icon_Image.Image = "rbxassetid://" .. string.gsub(tostring(Icon), "rbxassetid://", "")
    Icon_Image.Visible = true
else
    Title_Label.Position = UDim2.fromOffset(5, 0)
    Title_Label.Size = UDim2.new(1, -10, 0, 15)
    Icon_Image.Image = ""
    Icon_Image.Visible = false
end
end


function Menu:SetSize(Size: Vector2)
local Size = typeof(Size) == "Vector2" and Size or typeof(Size) == "UDim2" and Vector2.new(Size.X, Size.Y) or Menu.MinSize
local X = Size.X
local Y = Size.Y

if (X > Menu.MinSize.X and X < Menu.MaxSize.X) then
    X = math.clamp(X, Menu.MinSize.X, Menu.MaxSize.X)
end
if (Y > Menu.MinSize.Y and Y < Menu.MaxSize.Y) then
    Y = math.clamp(Y, Menu.MinSize.Y, Menu.MaxSize.Y)
end

Menu_Frame.Size = UDim2.fromOffset(X, Y)
UpdateTabs()
end


function Menu:SetVisible(Visible: boolean)
local IsVisible = typeof(Visible) == "boolean" and Visible
Menu_Frame.Visible = IsVisible
Menu.IsVisible = IsVisible
if IsVisible == false then
    UpdateSelected()
end
end


function Menu:SetTab(Tab_Name: string)
ChangeTab(Tab_Name)
end


-- this function should be private
function Menu:SetToolTip(Enabled: boolean, Content: string, Item: Instance)
ToolTip = {
    Enabled = Enabled,
    Content = Content,
    Item = Item
}

ToolTip_Label.Visible = Enabled
end


function Menu.Line(Parent: Instance, Size: UDim2, Position: UDim2): Line
local Line = {self = CreateLine(Parent, Size, Position)}
Line.Class = "Line"
return Line
end


function Menu.Tab(Tab_Name: string): Tab
assert(Tab_Name and typeof(Tab_Name) == "string", "TAB_NAME REQUIRED")
if Tabs[Tab_Name] then return error("TAB_NAME '" .. tostring(Tab_Name) .. "' ALREADY EXISTS") end
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

local Tab = {self = Frame, Button = Button}
Tab.Class = "Tab"
Tab.Index = GetDictionaryLength(Tabs) + 1


local function CreateSide(Side: string)
    local Frame = Instance.new("ScrollingFrame")
    local ListLayout = Instance.new("UIListLayout")

    Frame.Name = Side
    Frame.Active = true
    Frame.BackgroundTransparency = 1
    Frame.BorderSizePixel = 0
    Frame.Size = Side == "Middle" and UDim2.new(1, -10, 1, -10) or UDim2.new(0.5, -10, 1, -10)
    Frame.Position = (Side == "Left" and UDim2.fromOffset(5, 5)) or (Side == "Right" and UDim2.new(0.5, 5, 0, 5) or Side == "Middle" and UDim2.fromOffset(5, 5))
    Frame.CanvasSize = UDim2.new(0, 0, 0, -10)
   