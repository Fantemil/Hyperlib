
local ScreenGui = Instance.new("ScreenGui")
local RaynoxHub_1 = Instance.new("ImageLabel")
local TitleHub_1 = Instance.new("TextLabel")
local close_1 = Instance.new("TextButton")
local TitleWalkspeed_1 = Instance.new("TextLabel")
local activeSpeed_1 = Instance.new("TextButton")
local activeSpeed_Roundify_12px_1 = Instance.new("ImageLabel")
local DisableSpeed_1 = Instance.new("TextButton")
local DisableSpeed_Roundify_12px_1 = Instance.new("ImageLabel")
local TitleFly_1 = Instance.new("TextLabel")
local activeFly_1 = Instance.new("TextButton")
local activeFly_Roundify_12px_1 = Instance.new("ImageLabel")
local TitleJumpBoost_1 = Instance.new("TextLabel")
local activeJumpBoost_1 = Instance.new("TextButton")
local activeJumpBoost_Roundify_12px_1 = Instance.new("ImageLabel")
local DisableJumpBoost_1 = Instance.new("TextButton")
local DisableJumpBoost_Roundify_12px_1 = Instance.new("ImageLabel")
local TitleDeco_1 = Instance.new("TextLabel")
local TitleKillAura_1 = Instance.new("TextLabel")
local ActiveKillAura_1 = Instance.new("TextButton")
local ActiveKillAura_Roundify_12px_1 = Instance.new("ImageLabel")
local open_1 = Instance.new("Frame")
local TextButton_1 = Instance.new("TextButton")
local openButton_Roundify_12px_1 = Instance.new("ImageLabel")
local OpenText_1 = Instance.new("TextLabel")
 
game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "RaynoxHub v1";
                Text = "More Update Soon !";
                Duration = 3.5;
            })
 
-- Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
 
RaynoxHub_1.Name = "RaynoxHub"
RaynoxHub_1.Parent = ScreenGui
RaynoxHub_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
RaynoxHub_1.BackgroundTransparency = 1
RaynoxHub_1.BorderColor3 = Color3.fromRGB(0,0,0)
RaynoxHub_1.Position = UDim2.new(0.241105556, 0,0.362222195, 0)
RaynoxHub_1.Size = UDim2.new(0, 441,0, 273)
RaynoxHub_1.Image = "rbxassetid://3570695787"
RaynoxHub_1.ImageColor3 = Color3.fromRGB(11,68,117)
RaynoxHub_1.ScaleType = Enum.ScaleType.Slice
RaynoxHub_1.SliceCenter = Rect.new(100, 100, 100, 100)
RaynoxHub_1.SliceScale = 0.11999999731779099
RaynoxHub_1.Active = true
RaynoxHub_1.Draggable = true
RaynoxHub_1.Visible = false
 
TitleHub_1.Name = "TitleHub"
TitleHub_1.Parent = RaynoxHub_1
TitleHub_1.BackgroundColor3 = Color3.fromRGB(255,0,0)
TitleHub_1.BackgroundTransparency = 1
TitleHub_1.BorderColor3 = Color3.fromRGB(255,0,0)
TitleHub_1.BorderSizePixel = 0
TitleHub_1.Position = UDim2.new(0.0158730168, 0,0, 0)
TitleHub_1.Size = UDim2.new(0, 200,0, 50)
TitleHub_1.Font = Enum.Font.FredokaOne
TitleHub_1.Text = "RaynoxHub"
TitleHub_1.TextColor3 = Color3.fromRGB(255,255,255)
TitleHub_1.TextSize = 41
 
close_1.Name = "close"
close_1.Parent = RaynoxHub_1
close_1.Active = true
close_1.BackgroundColor3 = Color3.fromRGB(255,0,4)
close_1.BorderColor3 = Color3.fromRGB(0,0,0)
close_1.Position = UDim2.new(0.878812551, 0,0, 0)
close_1.Size = UDim2.new(0, 53,0, 49)
close_1.Font = Enum.Font.FredokaOne
close_1.Text = "X"
close_1.TextSize = 51
close_1.TextWrapped = true
close_1.MouseButton1Down:connect(function()
 
open_1.Visible = true
RaynoxHub_1.Visible = false
 
end)
 
TitleWalkspeed_1.Name = "TitleWalkspeed"
TitleWalkspeed_1.Parent = RaynoxHub_1
TitleWalkspeed_1.BackgroundColor3 = Color3.fromRGB(11,69,117)
TitleWalkspeed_1.BorderColor3 = Color3.fromRGB(11,68,117)
TitleWalkspeed_1.Position = UDim2.new(0.0408163294, 0,0.307692319, 0)
TitleWalkspeed_1.Size = UDim2.new(0, 110,0, 37)
TitleWalkspeed_1.Font = Enum.Font.FredokaOne
TitleWalkspeed_1.Text = "WalkSpeed :"
TitleWalkspeed_1.TextColor3 = Color3.fromRGB(255,255,255)
TitleWalkspeed_1.TextSize = 26
 
activeSpeed_1.Name = "activeSpeed"
activeSpeed_1.Parent = RaynoxHub_1
activeSpeed_1.Active = true
activeSpeed_1.BackgroundColor3 = Color3.fromRGB(0,255,17)
activeSpeed_1.BackgroundTransparency = 1
activeSpeed_1.BorderColor3 = Color3.fromRGB(27,42,53)
activeSpeed_1.BorderSizePixel = 0
activeSpeed_1.Position = UDim2.new(0.369614512, 0,0.307692319, 0)
activeSpeed_1.Size = UDim2.new(0, 38,0, 31)
activeSpeed_1.Font = Enum.Font.SourceSans
activeSpeed_1.Text = ""
activeSpeed_1.TextSize = 14
 
activeSpeed_Roundify_12px_1.Name = "activeSpeed_Roundify_12px"
activeSpeed_Roundify_12px_1.Parent = activeSpeed_1
activeSpeed_Roundify_12px_1.Active = true
activeSpeed_Roundify_12px_1.AnchorPoint = Vector2.new(0.5, 0.5)
activeSpeed_Roundify_12px_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
activeSpeed_Roundify_12px_1.BackgroundTransparency = 1
activeSpeed_Roundify_12px_1.BorderColor3 = Color3.fromRGB(27,42,53)
activeSpeed_Roundify_12px_1.Position = UDim2.new(0.5, 0,0.5, 0)
activeSpeed_Roundify_12px_1.Size = UDim2.new(1, 0,1, 0)
activeSpeed_Roundify_12px_1.Image = "rbxassetid://3570695787"
activeSpeed_Roundify_12px_1.ImageColor3 = Color3.fromRGB(0,255,17)
activeSpeed_Roundify_12px_1.ScaleType = Enum.ScaleType.Slice
activeSpeed_Roundify_12px_1.SliceCenter = Rect.new(100, 100, 100, 100)
activeSpeed_Roundify_12px_1.SliceScale = 0.11999999731779099
 
DisableSpeed_1.Name = "DisableSpeed"
DisableSpeed_1.Parent = RaynoxHub_1
DisableSpeed_1.Active = true
DisableSpeed_1.BackgroundColor3 = Color3.fromRGB(255,0,0)
DisableSpeed_1.BackgroundTransparency = 1
DisableSpeed_1.BorderColor3 = Color3.fromRGB(27,42,53)
DisableSpeed_1.BorderSizePixel = 0
DisableSpeed_1.Position = UDim2.new(0.503401339, 0,0.307692319, 0)
DisableSpeed_1.Size = UDim2.new(0, 39,0, 31)
DisableSpeed_1.Font = Enum.Font.SourceSans
DisableSpeed_1.Text = ""
DisableSpeed_1.TextColor3 = Color3.fromRGB(255,162,0)
DisableSpeed_1.TextSize = 14
 
DisableSpeed_Roundify_12px_1.Name = "DisableSpeed_Roundify_12px"
DisableSpeed_Roundify_12px_1.Parent = DisableSpeed_1
DisableSpeed_Roundify_12px_1.Active = true
DisableSpeed_Roundify_12px_1.AnchorPoint = Vector2.new(0.5, 0.5)
DisableSpeed_Roundify_12px_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DisableSpeed_Roundify_12px_1.BackgroundTransparency = 1
DisableSpeed_Roundify_12px_1.BorderColor3 = Color3.fromRGB(27,42,53)
DisableSpeed_Roundify_12px_1.Position = UDim2.new(0.5, 0,0.5, 0)
DisableSpeed_Roundify_12px_1.Size = UDim2.new(1, 0,1, 0)
DisableSpeed_Roundify_12px_1.Image = "rbxassetid://3570695787"
DisableSpeed_Roundify_12px_1.ImageColor3 = Color3.fromRGB(255,0,0)
DisableSpeed_Roundify_12px_1.ScaleType = Enum.ScaleType.Slice
DisableSpeed_Roundify_12px_1.SliceCenter = Rect.new(100, 100, 100, 100)
DisableSpeed_Roundify_12px_1.SliceScale = 0.11999999731779099
 
TitleFly_1.Name = "TitleFly"
TitleFly_1.Parent = RaynoxHub_1
TitleFly_1.BackgroundColor3 = Color3.fromRGB(11,69,117)
TitleFly_1.BorderColor3 = Color3.fromRGB(11,69,117)
TitleFly_1.Position = UDim2.new(0.0408163257, 0,0.479853481, 0)
TitleFly_1.Size = UDim2.new(0, 109,0, 32)
TitleFly_1.Font = Enum.Font.FredokaOne
TitleFly_1.Text = "Fly : "
TitleFly_1.TextColor3 = Color3.fromRGB(255,255,255)
TitleFly_1.TextSize = 28
 
activeFly_1.Name = "activeFly"
activeFly_1.Parent = RaynoxHub_1
activeFly_1.Active = true
activeFly_1.BackgroundColor3 = Color3.fromRGB(0,255,0)
activeFly_1.BackgroundTransparency = 1
activeFly_1.BorderColor3 = Color3.fromRGB(27,42,53)
activeFly_1.BorderSizePixel = 0
activeFly_1.Position = UDim2.new(0.369614512, 0,0.490842491, 0)
activeFly_1.Size = UDim2.new(0, 104,0, 26)
activeFly_1.Font = Enum.Font.SourceSans
activeFly_1.Text = ""
activeFly_1.TextSize = 14
 
activeFly_Roundify_12px_1.Name = "activeFly_Roundify_12px"
activeFly_Roundify_12px_1.Parent = activeFly_1
activeFly_Roundify_12px_1.Active = true
activeFly_Roundify_12px_1.AnchorPoint = Vector2.new(0.5, 0.5)
activeFly_Roundify_12px_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
activeFly_Roundify_12px_1.BackgroundTransparency = 1
activeFly_Roundify_12px_1.BorderColor3 = Color3.fromRGB(27,42,53)
activeFly_Roundify_12px_1.Position = UDim2.new(0.5, 0,0.5, 0)
activeFly_Roundify_12px_1.Size = UDim2.new(1, 0,1, 0)
activeFly_Roundify_12px_1.Image = "rbxassetid://3570695787"
activeFly_Roundify_12px_1.ImageColor3 = Color3.fromRGB(0,255,0)
activeFly_Roundify_12px_1.ScaleType = Enum.ScaleType.Slice
activeFly_Roundify_12px_1.SliceCenter = Rect.new(100, 100, 100, 100)
activeFly_Roundify_12px_1.SliceScale = 0.11999999731779099
 
TitleJumpBoost_1.Name = "TitleJumpBoost"
TitleJumpBoost_1.Parent = RaynoxHub_1
TitleJumpBoost_1.BackgroundColor3 = Color3.fromRGB(11,69,117)
TitleJumpBoost_1.BorderColor3 = Color3.fromRGB(11,69,117)
TitleJumpBoost_1.Position = UDim2.new(0.0408163294, 0,0.619047642, 0)
TitleJumpBoost_1.Size = UDim2.new(0, 135,0, 41)
TitleJumpBoost_1.Font = Enum.Font.FredokaOne
TitleJumpBoost_1.Text = "JumpBoost :"
TitleJumpBoost_1.TextColor3 = Color3.fromRGB(255,255,255)
TitleJumpBoost_1.TextSize = 29
 
activeJumpBoost_1.Name = "activeJumpBoost"
activeJumpBoost_1.Parent = RaynoxHub_1
activeJumpBoost_1.Active = true
activeJumpBoost_1.BackgroundColor3 = Color3.fromRGB(4,255,0)
activeJumpBoost_1.BackgroundTransparency = 1
activeJumpBoost_1.BorderColor3 = Color3.fromRGB(0,255,0)
activeJumpBoost_1.BorderSizePixel = 0
activeJumpBoost_1.Position = UDim2.new(0.399092972, 0,0.648351669, 0)
activeJumpBoost_1.Size = UDim2.new(0, 37,0, 33)
activeJumpBoost_1.Font = Enum.Font.SourceSans
activeJumpBoost_1.Text = ""
activeJumpBoost_1.TextSize = 14
 
activeJumpBoost_Roundify_12px_1.Name = "activeJumpBoost_Roundify_12px"
activeJumpBoost_Roundify_12px_1.Parent = activeJumpBoost_1
activeJumpBoost_Roundify_12px_1.Active = true
activeJumpBoost_Roundify_12px_1.AnchorPoint = Vector2.new(0.5, 0.5)
activeJumpBoost_Roundify_12px_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
activeJumpBoost_Roundify_12px_1.BackgroundTransparency = 1
activeJumpBoost_Roundify_12px_1.BorderColor3 = Color3.fromRGB(27,42,53)
activeJumpBoost_Roundify_12px_1.Position = UDim2.new(0.5, 0,0.5, 0)
activeJumpBoost_Roundify_12px_1.Size = UDim2.new(1, 0,1, 0)
activeJumpBoost_Roundify_12px_1.Image = "rbxassetid://3570695787"
activeJumpBoost_Roundify_12px_1.ImageColor3 = Color3.fromRGB(4,255,0)
activeJumpBoost_Roundify_12px_1.ScaleType = Enum.ScaleType.Slice
activeJumpBoost_Roundify_12px_1.SliceCenter = Rect.new(100, 100, 100, 100)
activeJumpBoost_Roundify_12px_1.SliceScale = 0.11999999731779099
 
DisableJumpBoost_1.Name = "DisableJumpBoost"
DisableJumpBoost_1.Parent = RaynoxHub_1
DisableJumpBoost_1.Active = true
DisableJumpBoost_1.BackgroundColor3 = Color3.fromRGB(255,0,4)
DisableJumpBoost_1.BackgroundTransparency = 1
DisableJumpBoost_1.BorderColor3 = Color3.fromRGB(255,0,4)
DisableJumpBoost_1.BorderSizePixel = 0
DisableJumpBoost_1.Position = UDim2.new(0.519274354, 0,0.648351669, 0)
DisableJumpBoost_1.Size = UDim2.new(0, 38,0, 33)
DisableJumpBoost_1.Font = Enum.Font.SourceSans
DisableJumpBoost_1.Text = ""
DisableJumpBoost_1.TextSize = 14
 
DisableJumpBoost_Roundify_12px_1.Name = "DisableJumpBoost_Roundify_12px"
DisableJumpBoost_Roundify_12px_1.Parent = DisableJumpBoost_1
DisableJumpBoost_Roundify_12px_1.Active = true
DisableJumpBoost_Roundify_12px_1.AnchorPoint = Vector2.new(0.5, 0.5)
DisableJumpBoost_Roundify_12px_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
DisableJumpBoost_Roundify_12px_1.BackgroundTransparency = 1
DisableJumpBoost_Roundify_12px_1.BorderColor3 = Color3.fromRGB(27,42,53)
DisableJumpBoost_Roundify_12px_1.Position = UDim2.new(0.5, 0,0.5, 0)
DisableJumpBoost_Roundify_12px_1.Size = UDim2.new(1, 0,1, 0)
DisableJumpBoost_Roundify_12px_1.Image = "rbxassetid://3570695787"
DisableJumpBoost_Roundify_12px_1.ImageColor3 = Color3.fromRGB(255,0,4)
DisableJumpBoost_Roundify_12px_1.ScaleType = Enum.ScaleType.Slice
DisableJumpBoost_Roundify_12px_1.SliceCenter = Rect.new(100, 100, 100, 100)
DisableJumpBoost_Roundify_12px_1.SliceScale = 0.11999999731779099
 
TitleDeco_1.Name = "TitleDeco"
TitleDeco_1.Parent = RaynoxHub_1
TitleDeco_1.BackgroundColor3 = Color3.fromRGB(15,97,159)
TitleDeco_1.BorderColor3 = Color3.fromRGB(11,69,117)
TitleDeco_1.Position = UDim2.new(0, 0,0.183150187, 0)
TitleDeco_1.Size = UDim2.new(0, 440,0, 19)
TitleDeco_1.Font = Enum.Font.SourceSans
TitleDeco_1.Text = ""
TitleDeco_1.TextSize = 14
 
TitleKillAura_1.Name = "TitleKillAura"
TitleKillAura_1.Parent = RaynoxHub_1
TitleKillAura_1.BackgroundColor3 = Color3.fromRGB(11,69,117)
TitleKillAura_1.BorderColor3 = Color3.fromRGB(11,69,117)
TitleKillAura_1.Position = UDim2.new(0.03, 0,0.798534811, 0)
TitleKillAura_1.Size = UDim2.new(0, 141,0, 37)
TitleKillAura_1.Font = Enum.Font.FredokaOne
TitleKillAura_1.Text = "Esp Players :"
TitleKillAura_1.TextColor3 = Color3.fromRGB(255,255,255)
TitleKillAura_1.TextSize = 29
 
ActiveKillAura_1.Name = "ActiveKillAura"
ActiveKillAura_1.Parent = RaynoxHub_1
ActiveKillAura_1.Active = true
ActiveKillAura_1.BackgroundColor3 = Color3.fromRGB(18,255,5)
ActiveKillAura_1.BackgroundTransparency = 1
ActiveKillAura_1.BorderColor3 = Color3.fromRGB(0,255,17)
ActiveKillAura_1.BorderSizePixel = 0
ActiveKillAura_1.Position = UDim2.new(0.399092972, 0,0.831501842, 0)
ActiveKillAura_1.Size = UDim2.new(0, 104,0, 26)
ActiveKillAura_1.Font = Enum.Font.FredokaOne
ActiveKillAura_1.Text = ""
ActiveKillAura_1.TextSize = 14
 
ActiveKillAura_Roundify_12px_1.Name = "ActiveKillAura_Roundify_12px"
ActiveKillAura_Roundify_12px_1.Parent = ActiveKillAura_1
ActiveKillAura_Roundify_12px_1.Active = true
ActiveKillAura_Roundify_12px_1.AnchorPoint = Vector2.new(0.5, 0.5)
ActiveKillAura_Roundify_12px_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ActiveKillAura_Roundify_12px_1.BackgroundTransparency = 1
ActiveKillAura_Roundify_12px_1.BorderColor3 = Color3.fromRGB(27,42,53)
ActiveKillAura_Roundify_12px_1.Position = UDim2.new(0.5, 0,0.5, 0)
ActiveKillAura_Roundify_12px_1.Size = UDim2.new(1, 0,1, 0)
ActiveKillAura_Roundify_12px_1.Image = "rbxassetid://3570695787"
ActiveKillAura_Roundify_12px_1.ImageColor3 = Color3.fromRGB(18,255,5)
ActiveKillAura_Roundify_12px_1.ScaleType = Enum.ScaleType.Slice
ActiveKillAura_Roundify_12px_1.SliceCenter = Rect.new(100, 100, 100, 100)
ActiveKillAura_Roundify_12px_1.SliceScale = 0.11999999731779099
 
open_1.Name = "open"
open_1.Parent = ScreenGui
open_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
open_1.BorderColor3 = Color3.fromRGB(27,42,53)
open_1.Position = UDim2.new(0,0,0.4,-80)
open_1.Size = UDim2.new(0, 100,0, 50)
RaynoxHub_1.Active = true
RaynoxHub_1.Draggable = true
TextButton_1.MouseButton1Down:connect(function()
open_1.Visible = false
RaynoxHub_1.Visible = true
 
end) 
 
 
 
 
TextButton_1.Parent = open_1
TextButton_1.Active = true
TextButton_1.BackgroundColor3 = Color3.fromRGB(0,0,255)
TextButton_1.BorderColor3 = Color3.fromRGB(0,0,255)
TextButton_1.Position = UDim2.new(0,0,0.4,-20)
TextButton_1.Size = UDim2.new(0, 100,0, 50)
TextButton_1.Font = Enum.Font.FredokaOne
TextButton_1.Text = "Open"
TextButton_1.TextColor3 = Color3.fromRGB(255,255,255)
TextButton_1.TextSize = 46
TextButton_1.MouseButton1Down:connect(function()
 
open_1.visible = false
RaynoxHub_1.visible = true
 
end)
 
activeSpeed_1.MouseButton1Down:connect(function()
 
    _G.WS = "250";
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = _G.WS;
    end)
    Humanoid.WalkSpeed = _G.WS;
 
end)
 
DisableSpeed_1.MouseButton1Down:connect(function()
 
    _G.WS = "70";
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = _G.WS;
    end)
    Humanoid.WalkSpeed = _G.WS;
 
end)
 
activeJumpBoost_1.MouseButton1Down:connect(function()
 
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
 
 
end)
 
DisableJumpBoost_1.MouseButton1Down:connect(function()
 
  
 
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
 
 
end)
 
ActiveKillAura_1.MouseButton1Down:connect(function()
 
  
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"
 
local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(4, 7, 4)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = true
Box.Visible = true
 
local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 20
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false
 
local LoadCharacter = function(v)
    repeat wait() until v.Character ~= nil
    v.Character:WaitForChild("Humanoid")
    local vHolder = Holder:FindFirstChild(v.Name)
    vHolder:ClearAllChildren()
    local b = Box:Clone()
    b.Name = v.Name .. "Box"
    b.Adornee = v.Character
    b.Parent = vHolder
    local t = NameTag:Clone()
    t.Name = v.Name .. "NameTag"
    t.Enabled = true
    t.Parent = vHolder
    t.Adornee = v.Character:WaitForChild("Head", 5)
    if not t.Adornee then
        return UnloadCharacter(v)
    end
    t.Tag.Text = v.Name
    b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
    t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
    local Update
    local UpdateNameTag = function()
        if not pcall(function()
            v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            local maxh = math.floor(v.Character.Humanoid.MaxHealth)
            local h = math.floor(v.Character.Humanoid.Health)
            t.Tag.Text = v.Name .. "\n" .. ((maxh ~= 0 and tostring(math.floor((h / maxh) * 100))) or "0") .. "%  " .. tostring(h) .. "/" .. tostring(maxh)
        end) then
            Update:Disconnect()
        end
    end
    UpdateNameTag()
    Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end
 
local UnloadCharacter = function(v)
    local vHolder = Holder:FindFirstChild(v.Name)
    if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
        vHolder:ClearAllChildren()
    end
end
 
local LoadPlayer = function(v)
    local vHolder = Instance.new("Folder", Holder)
    vHolder.Name = v.Name
    v.CharacterAdded:Connect(function()
        pcall(LoadCharacter, v)
    end)
    v.CharacterRemoving:Connect(function()
        pcall(UnloadCharacter, v)
    end)
    v.Changed:Connect(function(prop)
        if prop == "TeamColor" then
            UnloadCharacter(v)
            wait()
            LoadCharacter(v)
        end
    end)
    LoadCharacter(v)
end
 
local UnloadPlayer = function(v)
    UnloadCharacter(v)
    local vHolder = Holder:FindFirstChild(v.Name)
    if vHolder then
        vHolder:Destroy()
    end
end
 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    spawn(function() pcall(LoadPlayer, v) end)
end
 
game:GetService("Players").PlayerAdded:Connect(function(v)
    pcall(LoadPlayer, v)
end)
 
game:GetService("Players").PlayerRemoving:Connect(function(v)
    pcall(UnloadPlayer, v)
end)
 
game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
 
 
end)
 
 
 
--fly
 
activeFly_1.MouseButton1Down:connect(function()
 
game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Fly enable";
                Text = "Press G to active the fly";
                Duration = 3.5;
            })
 
repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 5000 
 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "g" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
 
end)
 
ActiveKillAura_1.MouseButton1Down:connect(function()
 
game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Esp Player activated";
                Text = "restart your game to disable it";
                Duration = 3.5;
            })
 
            end)
 