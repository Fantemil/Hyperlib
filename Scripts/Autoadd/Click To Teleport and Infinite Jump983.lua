local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local INFJUMP = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
 
main.Name = "main"
main.Parent = ScreenGui
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.119258665, 0, 0, 0)
main.Size = UDim2.new(0, 146, 0, 28)
main.Active = true
main.Draggable = false
 
TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 146, 0, 28)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Misc"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
TextLabel.TextWrapped = true
 
Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(0, 146, 0, 61)
 
INFJUMP.Name = "INFJUMP"
INFJUMP.Parent = main
INFJUMP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
INFJUMP.BorderSizePixel = 0
INFJUMP.Position = UDim2.new(0.794520497, 0, 1.6785717, 0)
INFJUMP.Size = UDim2.new(0, 21, 0, 21)
INFJUMP.Font = Enum.Font.SourceSans
INFJUMP.Text = ""
INFJUMP.TextColor3 = Color3.fromRGB(0, 0, 0)
INFJUMP.TextSize = 14.000
INFJUMP.MouseButton1Down:connect(function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)
 
TextLabel_2.Parent = main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0547945201, 0, 1.57142854, 0)
TextLabel_2.Size = UDim2.new(0, 94, 0, 28)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "Inf jump"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 17.000
TextLabel_2.TextWrapped = true
 
-- Scripts:
 
local function TKDWQ_fake_script() -- INFJUMP.LocalScript 
local script = Instance.new('LocalScript', INFJUMP)
 
function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
 
counter = 0
 
while wait(0.1)do
script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
 
counter = counter + 0.01
end
end



local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
 
Mouse.Button1Down:connect(
    function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
            return
        end
        if not Mouse.Target then
            return
        end
        Plr.Character:MoveTo(Mouse.Hit.p)
    end
)