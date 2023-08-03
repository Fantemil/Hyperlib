local lplayer = game:GetService('Players').LocalPlayer
 
local yeeting = false
function GetPlayer(String)
local Found = {}
local strl = String:lower()
if strl == "all" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
table.insert(Found,v)
end
elseif strl == "others" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= lplayer.Name then
table.insert(Found,v)
end
end
elseif strl == "me" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == lplayer.Name then
table.insert(Found,v)
end
end
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name:lower():sub(1, #String) == String:lower() then
table.insert(Found,v)
end
end
end
return Found
end
 
local yeetguiv4 = Instance.new("ScreenGui")
local onetwoseventhree = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local player = Instance.new("TextBox")
local yeet = Instance.new("TextButton")
local ultrayeet = Instance.new("TextButton")
local supernovayeet = Instance.new("TextButton")
local stop = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
yeetguiv4.Name = "yeetguiv4"
yeetguiv4.Parent = game:GetService('CoreGui')
yeetguiv4.ResetOnSpawn = false
onetwoseventhree.Name = "onetwoseventhree"
onetwoseventhree.Parent = yeetguiv4
onetwoseventhree.Active = true
onetwoseventhree.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
onetwoseventhree.BorderSizePixel = 0
onetwoseventhree.Position = UDim2.new(0.112530395, 0, 0.565217376, 0)
onetwoseventhree.Size = UDim2.new(0.239294425, 0, 0.260869563, 0)
TextLabel.Parent = onetwoseventhree
TextLabel.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(3.87869541e-08, 0, 0, 0)
TextLabel.Size = UDim2.new(1.00000048, 0, 0.190522879, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "fe yeet gui v4 | by scuba kermit"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18
player.Name = "player"
player.Parent = onetwoseventhree
player.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
player.BorderSizePixel = 0
player.Position = UDim2.new(0.162684351, 0, 0.266666681, 0)
player.Size = UDim2.new(0.674478829, 0, 0.194444448, 0)
player.Font = Enum.Font.SourceSans
player.PlaceholderText = "player name (can be shortened)"
player.Text = ""
player.TextColor3 = Color3.new(1, 1, 1)
player.TextSize = 14
yeet.Name = "yeet"
yeet.Parent = onetwoseventhree
yeet.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
yeet.BorderSizePixel = 0
yeet.Position = UDim2.new(0.0381292067, 0, 0.51111114, 0)
yeet.Size = UDim2.new(0.453329861, 0, 0.177777782, 0)
yeet.Font = Enum.Font.SourceSans
yeet.Text = "Yeet Player"
yeet.TextColor3 = Color3.new(1, 1, 1)
yeet.TextSize = 18
ultrayeet.Name = "ultrayeet"
ultrayeet.Parent = onetwoseventhree
ultrayeet.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
ultrayeet.BorderSizePixel = 0
ultrayeet.Position = UDim2.new(0.513472319, 0, 0.51111114, 0)
ultrayeet.Size = UDim2.new(0.453329861, 0, 0.177777782, 0)
ultrayeet.Font = Enum.Font.SourceSans
ultrayeet.Text = "Ultra Yeet Player"
ultrayeet.TextColor3 = Color3.new(1, 1, 1)
ultrayeet.TextSize = 18
supernovayeet.Name = "supernovayeet"
supernovayeet.Parent = onetwoseventhree
supernovayeet.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
supernovayeet.BorderSizePixel = 0
supernovayeet.Position = UDim2.new(0.0381291807, 0, 0.722222269, 0)
supernovayeet.Size = UDim2.new(0.453329861, 0, 0.177777782, 0)
supernovayeet.Font = Enum.Font.SourceSans
supernovayeet.Text = "Supernova Yeet Player"
supernovayeet.TextColor3 = Color3.new(1, 1, 1)
supernovayeet.TextSize = 18
stop.Name = "stop"
stop.Parent = onetwoseventhree
stop.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
stop.BorderSizePixel = 0
stop.Position = UDim2.new(0.513472319, 0, 0.722222269, 0)
stop.Size = UDim2.new(0.453329861, 0, 0.177777782, 0)
stop.Font = Enum.Font.SourceSans
stop.Text = "Stop Yeeting"
stop.TextColor3 = Color3.new(1, 1, 1)
stop.TextSize = 18
ImageLabel.Parent = onetwoseventhree
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0228774771, 0, 0, 0)
ImageLabel.Size = UDim2.new(0.104219697, 0, 0.190522939, 0)
ImageLabel.Image = "rbxassetid://2941043433"
yeet.MouseButton1Click:Connect(function()
    local target = unpack(GetPlayer(player.Text)).Character
 
    lplayer.Character.Humanoid.PlatformStand = true
    yeeting = true
    local coin = Instance.new('BodyThrust',lplayer.Character.HumanoidRootPart)
    coin.Force = Vector3.new(2590,2590,2590)
    coin.Name = "yeetforce"
    repeat lplayer.Character.HumanoidRootPart.CFrame = target.Head.CFrame;coin.Location = target.Head.Position game:GetService('RunService').Heartbeat:wait() until not target.Head or yeeting == false
end)
ultrayeet.MouseButton1Click:Connect(function()
    local target = unpack(GetPlayer(player.Text)).Character
 
    lplayer.Character.Humanoid.PlatformStand = true
    yeeting = true
    local coin = Instance.new('BodyThrust',lplayer.Character.HumanoidRootPart)
    coin.Force = Vector3.new(9999,9999,9999)
    coin.Name = "yeetforce"
    repeat lplayer.Character.HumanoidRootPart.CFrame = target.Head.CFrame;coin.Location = target.Head.Position game:GetService('RunService').Heartbeat:wait() until not target.Head or yeeting == false
end)
supernovayeet.MouseButton1Click:Connect(function()
    local target = unpack(GetPlayer(player.Text)).Character
 
    lplayer.Character.Humanoid.PlatformStand = true
    yeeting = true
    local coin = Instance.new('BodyThrust',lplayer.Character.HumanoidRootPart)
    coin.Force = Vector3.new(18000,18000,18000)
    coin.Name = "yeetforce"
    repeat lplayer.Character.HumanoidRootPart.CFrame = target.Head.CFrame;coin.Location = target.Head.Position game:GetService('RunService').Heartbeat:wait() until not target.Head or yeeting == false
end)
 
local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    dragSpeed = 1
    dragInput = nil
    dragStart = nil
    dragPos = nil
    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
                end
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
dragify(onetwoseventhree)