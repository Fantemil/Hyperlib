-- Snow Shoveling Simulator Hax Gui
-- Version: 1.0

local SSSHax = Instance.new("ScreenGui")
local TheSTUFF = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local WalkSpeed = Instance.new("TextButton")
local IceFarmer = Instance.new("TextButton")
local ModifyTool = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:
SSSHax.Name = "SSS Hax"
SSSHax.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TheSTUFF.Name = "TheSTUFF"
TheSTUFF.Parent = SSSHax
TheSTUFF.BackgroundColor3 = Color3.new(0, 0, 0)
TheSTUFF.Position = UDim2.new(0.666421771, 0, 0.422604412, 0)
TheSTUFF.Size = UDim2.new(0, 286, 0, 319)

Name.Name = "Name"
Name.Parent = TheSTUFF
Name.BackgroundColor3 = Color3.new(0.0901961, 0.0901961, 1)
Name.Position = UDim2.new(0.0247119162, 0, 0.0308686122, 0)
Name.Size = UDim2.new(0, 272, 0, 44)
Name.Font = Enum.Font.SourceSansItalic
Name.Text = "Snow Shoveling Sim Hax"
Name.TextColor3 = Color3.new(0.321569, 0.968628, 1)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = TheSTUFF
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(0.0244755745, 0, 0.779071391, 0)
Credits.Size = UDim2.new(0, 272, 0, 49)
Credits.ZIndex = 2
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Created By TrollMlgKing & Pure"
Credits.TextColor3 = Color3.new(0, 0, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true

ImageLabel.Parent = TheSTUFF
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.Position = UDim2.new(0.0249404907, 0, 0.167789847, 0)
ImageLabel.Size = UDim2.new(0, 272, 0, 257)
ImageLabel.Image = "rbxassetid://166028104"

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = TheSTUFF
WalkSpeed.BackgroundColor3 = Color3.new(1, 1, 1)
WalkSpeed.Position = UDim2.new(0.0784260035, 0, 0.592187762, 0)
WalkSpeed.Size = UDim2.new(0, 242, 0, 50)
WalkSpeed.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
WalkSpeed.Font = Enum.Font.SourceSans
WalkSpeed.Text = "Walk Speed"
WalkSpeed.TextColor3 = Color3.new(0, 0, 0)
WalkSpeed.TextScaled = true
WalkSpeed.TextSize = 14
WalkSpeed.TextWrapped = true

IceFarmer.Name = "IceFarmer"
IceFarmer.Parent = TheSTUFF
IceFarmer.BackgroundColor3 = Color3.new(1, 1, 1)
IceFarmer.Position = UDim2.new(0.0776913166, 0, 0.399661809, 0)
IceFarmer.Size = UDim2.new(0, 242, 0, 50)
IceFarmer.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
IceFarmer.Font = Enum.Font.SourceSans
IceFarmer.Text = "Ice Farmer"
IceFarmer.TextColor3 = Color3.new(0, 0, 0)
IceFarmer.TextScaled = true
IceFarmer.TextSize = 14
IceFarmer.TextWrapped = true

ModifyTool.Name = "ModifyTool"
ModifyTool.Parent = TheSTUFF
ModifyTool.BackgroundColor3 = Color3.new(1, 1, 1)
ModifyTool.Position = UDim2.new(0.0784260035, 0, 0.223996297, 0)
ModifyTool.Size = UDim2.new(0, 242, 0, 50)
ModifyTool.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
ModifyTool.Font = Enum.Font.SourceSans
ModifyTool.Text = "Modify Tool"
ModifyTool.TextColor3 = Color3.new(0, 0, 0)
ModifyTool.TextScaled = true
ModifyTool.TextSize = 14
ModifyTool.TextWrapped = true

TextBox.Parent = TheSTUFF
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(0.12937063, 0, 0.150470212, 0)
TextBox.Size = UDim2.new(0, 214, 0, 30)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "Knife Only"
TextBox.TextColor3 = Color3.new(1, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
-- Scripts:
function SCRIPT_GPRP74_FAKESCRIPT() -- WalkSpeed.Script3 
getfenv().script = Instance.new('Script', WalkSpeed)

button = script.Parent


button.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 110
end)

end
coroutine.resume(coroutine.create(SCRIPT_GPRP74_FAKESCRIPT))
function SCRIPT_URKN82_FAKESCRIPT() -- IceFarmer.Script 
getfenv().script = Instance.new('Script', IceFarmer)

button = script.Parent


button.MouseButton1Down:connect(function()
local iceTool = 'Kitchen Knife'; -- set this to whatever tool you're using


-- make sure you have your ice tool equipped
-- when you run the script, to stop the script,
-- just de-equip your ice tool


---------------DONT EDIT BELOW UNLESS YOU KNOW WHAT YOU'RE DOING----------------------------

local collected = function()
local pack = nil
for i, p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (p.Name:match'Pack') then
pack = p;
end
end
return tonumber(pack:FindFirstChild('TextLabel', true).Text:match'%d+');
end;

local maxIce = function()
local pack = nil
for i, p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (p.Name:match'Pack') then
pack = p;
end
end
return tonumber(pack:FindFirstChild('TextLabel', true).Text:match'/%d+':match'%d+');
end;

local sellingIce = false;

while wait(.075) do
if (not sellingIce) then
game.ReplicatedStorage.RemoteEvents.I.TT:FireServer(
game.Players.LocalPlayer.Character[iceTool],
{game.Players.LocalPlayer.Character[iceTool].Blade, workspace.IcePieces:GetChildren()[math.random(1, #workspace.IcePieces:GetChildren())]}
);
end
if (collected() >= maxIce()) then
sellingIce = true;
local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart;
local lastPosition = HRP.CFrame;
game.Players.LocalPlayer.Character:MoveTo(workspace:FindFirstChild('Mountain Hiker', true):FindFirstChild('Head').CFrame.p);
wait(.25)
game.Players.LocalPlayer.Character.Humanoid:MoveTo(workspace:FindFirstChild('Mountain Hiker', true):FindFirstChild('Head').CFrame.p + Vector3.new(4, 2, 4));
game.ReplicatedStorage.RemoteEvents.I.SellIce:FireServer(workspace.EXPANSION.MiddleMountain.IcePile, 
lastPosition.p,
false);
repeat wait(.1) until collected() < 1
sellingIce = false;
game.Players.LocalPlayer.Character:MoveTo(lastPosition.p);
end
end

end)

end
coroutine.resume(coroutine.create(SCRIPT_URKN82_FAKESCRIPT))
function SCRIPT_YVJQ70_FAKESCRIPT() -- ModifyTool.Script2 
getfenv().script = Instance.new('Script', ModifyTool)

button = script.Parent

button.MouseButton1Down:connect(function()
local LocalPlayer = game:GetService('Players').LocalPlayer
local RemoteEvents = game:GetService('ReplicatedStorage').RemoteEvents
local Shovel = function(Part)
if LocalPlayer.Character:FindFirstChildWhichIsA('Tool') then
RemoteEvents.Shovel:FireServer(Part)
end
end

local GetCloseSnow = function()
local Center = LocalPlayer.Character.HumanoidRootPart.CFrame.p
local Region = Region3.new(Center-Vector3.new(8,8,8), Center+Vector3.new(15,15,15))
local Parts  = workspace:FindPartsInRegion3(Region, LocalPlayer.Character, 500)
local Snow = {}
for i, v in pairs(Parts) do
if v.Name == 'Snow' then
table.insert(Snow, v)
end
end
return Snow
end

while wait() do
for i, v in pairs(GetCloseSnow()) do
Shovel(v)
end
end

end)

end
coroutine.resume(coroutine.create(SCRIPT_YVJQ70_FAKESCRIPT))
function SCRIPT_JTZU65_FAKESCRIPT() -- SSSHax.LocalScript 
getfenv().script = Instance.new('LocalScript', SSSHax)

Drag = script.Parent.Frame
Drag.Draggable = true
Drag.Active = true
Drag.Selectable = true
print ("Drag Set")

end
coroutine.resume(coroutine.create(SCRIPT_JTZU65_FAKESCRIPT))