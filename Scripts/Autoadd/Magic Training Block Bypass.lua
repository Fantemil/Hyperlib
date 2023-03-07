local alreadyExecuted = _G.BLOCK_BYPASS;
if alreadyExecuted then
 return;
end
_G.BLOCK_BYPASS = true;

--@services
local UserInputService = game:GetService("UserInputService");
local CoreGui = game:GetService("CoreGui");
local Debris = game:GetService("Debris");
local Players = game:GetService("Players");

--@client
local localPlayer = Players.LocalPlayer;

--@constants
local BoundKey = "C"

--@states
local active = false;

--@preload

--@ui
local RK_POLICE = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
 
RK_POLICE.Name = "RK_POLICE"
RK_POLICE.Parent = game:GetService("CoreGui")
RK_POLICE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
TextLabel.Parent = RK_POLICE
TextLabel.Active = true
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.300000006, 0, 1, 0)
TextLabel.Size = UDim2.new(0.100000001, 0, 0.0500000007, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "OFF"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

--@helpers
local function destroyBlock(blockObject)
 pcall(function()
  if blockObject:IsA("Model") then return end
  blockObject.CanCollide = false;
  blockObject.CanTouch = false;
  blockObject.CanQuery = false;
  task.delay(task.wait(), function()
   blockObject.Parent = nil;
  end)
  Debris:AddItem(blockObject, 3);
 end)
end

local function updateGui()
    print("Updating GUI...")
    local notActiveColor = Color3.fromRGB(252, 61, 3);
    local activeColor = Color3.fromRGB(0, 235, 66);
    if active then
        TextLabel.TextColor3 = activeColor;
        TextLabel.Text = "ON";
    else
        TextLabel.TextColor3 = notActiveColor;
        TextLabel.Text = "OFF";
    end
end

--@init
for i, block in pairs(workspace:GetChildren()) do
 if block.Name == "protegoShield" then
  destroyBlock(block);
 end
end

workspace.ChildAdded:Connect(function(child)
 if (child.Name == "protegoShield") then
  if not active then return end;
  destroyBlock(child);
 end
end)

--@binds
print("CONNECTED")
UserInputService.InputBegan:Connect(function(Input, _)
 if _ then return end;
 if (Input.KeyCode.Name == BoundKey 
    or tostring(Input.KeyCode) == "Enum.KeyCode." .. BoundKey
    or tostring(Input.KeyCode) == BoundKey) then
        print("TOGGLING");
  active = not active;
        updateGui()
 end
end)