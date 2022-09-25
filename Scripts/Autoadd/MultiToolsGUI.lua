-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local Script = Instance.new("TextButton")
local INfjump = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Script_2 = Instance.new("TextButton")
local SPEED = Instance.new("TextButton")
local Script_3 = Instance.new("TextButton")
local Script_4 = Instance.new("TextButton")
local Gravity = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local openframe = Instance.new("Frame")
local openbutton = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BackgroundTransparency = 0.38999998569489
main.Position = UDim2.new(0.277571321, 0, 0.151802659, 0)
main.Selectable = true
main.Size = UDim2.new(0, 388, 0, 292)
main.Visible = false
main.Draggable = true

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 0.83999997377396
TextLabel.Size = UDim2.new(0, 388, 0, 35)
TextLabel.Font = Enum.Font.Fantasy
TextLabel.Text = "scripts"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = main
Fly.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Fly.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Fly.Position = UDim2.new(0, 0, 0.119863003, 0)
Fly.Size = UDim2.new(0, 149, 0, 41)
Fly.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Fly.Font = Enum.Font.Cartoon
Fly.Text = "Fly"
Fly.TextColor3 = Color3.new(0, 0, 0)
Fly.TextScaled = true
Fly.TextSize = 14
Fly.TextWrapped = true
Fly.MouseButton1Down:connect(function()
repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 100 
local speed = 0 

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
if key:lower() == "e" then 
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

Script.Name = "Script"
Script.Parent = main
Script.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Script.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Script.Position = UDim2.new(0.615979373, 0, 0.260273963, 0)
Script.Size = UDim2.new(0, 149, 0, 41)
Script.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Script.Font = Enum.Font.Arcade
Script.Text = "More soon!"
Script.TextColor3 = Color3.new(0, 0, 0)
Script.TextScaled = true
Script.TextSize = 14
Script.TextWrapped = true

INfjump.Name = "INf jump"
INfjump.Parent = main
INfjump.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
INfjump.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
INfjump.Position = UDim2.new(0, 0, 0.260273963, 0)
INfjump.Size = UDim2.new(0, 149, 0, 41)
INfjump.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
INfjump.Font = Enum.Font.Cartoon
INfjump.Text = "Inf jump"
INfjump.TextColor3 = Color3.new(0, 0, 0)
INfjump.TextScaled = true
INfjump.TextSize = 14
INfjump.TextWrapped = true
INfjump.MouseButton1Down:connect(function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)
end)

Esp.Name = "Esp"
Esp.Parent = main
Esp.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Esp.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Esp.Position = UDim2.new(0.615979373, 0, 0.119863003, 0)
Esp.Size = UDim2.new(0, 149, 0, 41)
Esp.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Esp.Font = Enum.Font.Cartoon
Esp.Text = "Esp"
Esp.TextColor3 = Color3.new(0, 0, 0)
Esp.TextScaled = true
Esp.TextSize = 14
Esp.TextWrapped = true
Esp.MouseButton1Down:connect(function()
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

Noclip.Name = "Noclip"
Noclip.Parent = main
Noclip.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Noclip.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Noclip.Position = UDim2.new(0, 0, 0.681506753, 0)
Noclip.Size = UDim2.new(0, 149, 0, 41)
Noclip.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Noclip.Font = Enum.Font.Cartoon
Noclip.Text = "noclip"
Noclip.TextColor3 = Color3.new(0, 0, 0)
Noclip.TextScaled = true
Noclip.TextSize = 14
Noclip.TextWrapped = true
Noclip.MouseButton1Down:connect(function()
--This is not my script
wait(2)

nam = game.Players.LocalPlayer.Name

coroutine.wrap(function()
while wait() do
for a, b in pairs(Workspace[nam]:GetChildren()) do
if b:FindFirstChild('Handle') then
b.Handle.CanCollide = false
end
end
end
end)()

Workspace[nam].Humanoid.Changed:connect(function()
Workspace[nam].Humanoid.WalkSpeed = 16
end)

game:GetService('Players').LocalPlayer.PlayerGui.ChildAdded:connect(function(asd)
delay(0, function()
if asd.Name ~= 'OutputGUI' then
asd:Destroy()
end
end)
end)

game:GetService('RunService').Stepped:connect(function()
Workspace[nam].Torso.CanCollide = false
Workspace[nam].Head.CanCollide = false
end)

Workspace[nam].Torso.Changed:connect(function()
Workspace[nam].Torso.CanCollide = false
Workspace[nam].Head.CanCollide = false
end)
end)

Script_2.Name = "Script"
Script_2.Parent = main
Script_2.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Script_2.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Script_2.Position = UDim2.new(0.615979373, 0, 0.681506813, 0)
Script_2.Size = UDim2.new(0, 149, 0, 41)
Script_2.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Script_2.Font = Enum.Font.SourceSans
Script_2.Text = "Scripts"
Script_2.TextColor3 = Color3.new(0, 0, 0)
Script_2.TextScaled = true
Script_2.TextSize = 14
Script_2.TextWrapped = true

SPEED.Name = "SPEED"
SPEED.Parent = main
SPEED.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
SPEED.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
SPEED.Position = UDim2.new(0, 0, 0.541095853, 0)
SPEED.Size = UDim2.new(0, 149, 0, 41)
SPEED.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
SPEED.Font = Enum.Font.Cartoon
SPEED.Text = "Speed 70"
SPEED.TextColor3 = Color3.new(0, 0, 0)
SPEED.TextScaled = true
SPEED.TextSize = 14
SPEED.TextWrapped = true
SPEED.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 70
end)

Script_3.Name = "Script"
Script_3.Parent = main
Script_3.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Script_3.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Script_3.Position = UDim2.new(0.615979373, 0, 0.537671268, 0)
Script_3.Size = UDim2.new(0, 149, 0, 41)
Script_3.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Script_3.Font = Enum.Font.SourceSans
Script_3.Text = "Scripts"
Script_3.TextColor3 = Color3.new(0, 0, 0)
Script_3.TextScaled = true
Script_3.TextSize = 14
Script_3.TextWrapped = true

Script_4.Name = "Script"
Script_4.Parent = main
Script_4.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Script_4.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Script_4.Position = UDim2.new(0.615979373, 0, 0.400684893, 0)
Script_4.Size = UDim2.new(0, 149, 0, 41)
Script_4.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Script_4.Font = Enum.Font.SourceSans
Script_4.Text = "Scripts"
Script_4.TextColor3 = Color3.new(0, 0, 0)
Script_4.TextScaled = true
Script_4.TextSize = 14
Script_4.TextWrapped = true

Gravity.Name = "Gravity"
Gravity.Parent = main
Gravity.BackgroundColor3 = Color3.new(0.666667, 0.333333, 1)
Gravity.BorderColor3 = Color3.new(0.666667, 0.333333, 1)
Gravity.Position = UDim2.new(0, 0, 0.400684893, 0)
Gravity.Size = UDim2.new(0, 149, 0, 41)
Gravity.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Gravity.Font = Enum.Font.Cartoon
Gravity.Text = "Gravity"
Gravity.TextColor3 = Color3.new(0, 0, 0)
Gravity.TextScaled = true
Gravity.TextSize = 14
Gravity.TextWrapped = true
Gravity.MouseButton1Down:connect(function()
wait()
game.workspace.Gravity = 70

end)

closebutton.Name = "close button"
closebutton.Parent = main
closebutton.BackgroundColor3 = Color3.new(1, 1, 1)
closebutton.Position = UDim2.new(0.819587588, 0, -0.0136986319, 0)
closebutton.Size = UDim2.new(0, 70, 0, 42)
closebutton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
closebutton.Font = Enum.Font.SourceSans
closebutton.Text = "X"
closebutton.TextColor3 = Color3.new(0, 0, 0)
closebutton.TextScaled = true
closebutton.TextSize = 14
closebutton.TextWrapped = true
closebutton.MouseButton1Down:connect(function()
openbutton.Visible = true
main.Visible = false
end)

openframe.Name = "open frame"
openframe.Parent = ScreenGui
openframe.BackgroundColor3 = Color3.new(1, 1, 1)
openframe.BackgroundTransparency = 1
openframe.Position = UDim2.new(0, 0, 0.635673642, 0)
openframe.Size = UDim2.new(0, 106, 0, 38)

openbutton.Name = "open button"
openbutton.Parent = openframe
openbutton.BackgroundColor3 = Color3.new(1, 1, 1)
openbutton.Size = UDim2.new(0, 107, 0, 37)
openbutton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
openbutton.Font = Enum.Font.Cartoon
openbutton.Text = "Open"
openbutton.TextColor3 = Color3.new(0, 0, 0)
openbutton.TextSize = 29
openbutton.TextWrapped = true
openbutton.MouseButton1Down:connect(function()
main.Visible      = true
openframe.Visible = true
end)