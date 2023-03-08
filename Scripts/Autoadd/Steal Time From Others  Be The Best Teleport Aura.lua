--//Lazy code and messy
local KeyBind = Enum.KeyCode.RightShift --//You can edit keybind by replacing "RightShift" with your key



local ScreenGui = Instance.new("ScreenGui") --//Gui on bottem left side of you screen
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = (game:GetService("CoreGui") or gethui())
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.00698215654, 0, 0.937655866, 0)
Frame.Size = UDim2.new(0, 289, 0, 42)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0415224917, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 296, 0, 33)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "AutoAim: false"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local run = function(a,Called)
 local Error,Value = pcall(function()
  coroutine.wrap(a)(Called)
 end)
 coroutine.wrap(function()
  if Value and Error == false then
   warn("Error at: "..tostring(Value))
  end
 end)()
end
local Menus = {}
local UserInputService = game:GetService("UserInputService")


local States = {
 AutoAim = false,
}

--//https://create.roblox.com/docs/reference/engine/classes/UserInputServiceð
local UserInputService = game:GetService("UserInputService")

local function onInputBegan(input, _gameProcessed)
 if input.KeyCode == KeyBind then
  States.AutoAim = not States.AutoAim
  TextLabel.Text = "AutoAim: "..tostring(States.AutoAim)
  if States.AutoAim then
   TextLabel.TextColor3 = Color3.new(0.0431373, 1, 0.0431373)
  else
   TextLabel.TextColor3 = Color3.new(1, 0, 0.0156863)
  end
 end
end

UserInputService.InputBegan:Connect(onInputBegan)


function GetChars()
 local chars = {}
 for i,v in pairs(game:GetService("Players"):GetPlayers()) do
  if v and v ~= game.Players.LocalPlayer then
   chars[#chars+1] = v.Character
  end
 end
 return chars
end
function findNearestPlayer(Position)
 local List = GetChars()
 local Torso = nil
 local Distance = 15
 local Temp = nil
 local Human = nil
 local Temp2 = nil
 for x = 1, #List do
  Temp2 = List[x]
  if (Temp2.className == "Model") and (Temp2 ~= script.Parent) then
   Temp = Temp2:findFirstChild("HumanoidRootPart")
   Human = Temp2:findFirstChild("Humanoid")
   if (Temp ~= nil) and (Human ~= nil) and (Human.Health > 0) then
    if (Temp.Position - Position).magnitude < Distance then
     Torso = Temp
     Distance = (Temp.Position - Position).magnitude
    end
   end
  end
 end
 return Torso
end



local Player = game.Players.LocalPlayer
local Character = Player.Character


local Mouse = Player:GetMouse()
local RunService = game:GetService("RunService")
local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
local RootPos, MousePos = Root.Position, findNearestPlayer(Root.Position)
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(a)
 repeat task.wait() until a and a:FindFirstChildOfClass("Humanoid")
 Root =game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
 RootPos, MousePos = Root.Position, findNearestPlayer(Root.Position)
end)
RunService.RenderStepped:Connect(function()
 if States.AutoAim then
  RootPos, MousePos = Root.Position, findNearestPlayer(Root.Position)
  pcall(function()
   
   if MousePos then
    Root.CFrame = CFrame.new(RootPos, Vector3.new(MousePos.Position.X, RootPos.Y, MousePos.Position.Z))
   end
  end)
 end
end)
local stop = false
local cd1 = false
local startbypass = false
local changecd = false
task.spawn(function()
 while true do
  task.wait()
  pcall(function()
   if States.AutoAim then
    if MousePos and RootPos then
     if MousePos and States.AutoAim then
      Root.CFrame = MousePos.CFrame*CFrame.new(0,0,3)
      pcall(function()
       game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
      end)
     end
    end
   end
  end)
 end
end)