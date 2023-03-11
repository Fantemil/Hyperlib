-- made by rouxhaver/1+1=2
-- use any hats
-- make sure to run a netless/netbypass before running this script

local randomstr = tostring(math.random(100000000,999999999))

local randomize = Instance.new("ScreenGui")
local randomize_2 = Instance.new("Frame")
local randomize_3 = Instance.new("TextLabel")
local randomize_4 = Instance.new("TextLabel")
local randomize_5 = Instance.new("TextLabel")
local randomize_6 = Instance.new("TextButton")


randomize.Name = randomstr
randomize.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
randomize.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

randomize_2.Name = randomstr
randomize_2.Parent = randomize
randomize_2.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
randomize_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
randomize_2.BorderSizePixel = 10
randomize_2.Position = UDim2.new(0.41513592, 0, 0.377777755, 0)
randomize_2.Size = UDim2.new(0, 230, 0, 197)

randomize_3.Name = randomstr
randomize_3.Parent = randomize_2
randomize_3.Active = false
randomize_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
randomize_3.BackgroundTransparency = 1.000
randomize_3.Position = UDim2.new(0.0652173907, 0, 0.0913705602, 0)
randomize_3.Size = UDim2.new(0, 208, 0, 88)
randomize_3.Font = Enum.Font.SourceSans
randomize_3.Text = "Made by:"
randomize_3.TextColor3 = Color3.fromRGB(0, 0, 0)
randomize_3.TextSize = 33.000
randomize_3.TextWrapped = true

randomize_4.Name = randomstr
randomize_4.Parent = randomize_2
randomize_4.Active = false
randomize_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
randomize_4.BackgroundTransparency = 1.000
randomize_4.Position = UDim2.new(0.0652173907, 0, 0.370558381, 0)
randomize_4.Size = UDim2.new(0, 206, 0, 48)
randomize_4.Font = Enum.Font.SourceSans
randomize_4.Text = "(1+1=2 on roblox)"
randomize_4.TextColor3 = Color3.fromRGB(0, 0, 0)
randomize_4.TextSize = 33.000
randomize_4.TextWrapped = true

randomize_5.Name = randomstr
randomize_5.Parent = randomize_2
randomize_5.Active = false
randomize_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
randomize_5.BackgroundTransparency = 1.000
randomize_5.Position = UDim2.new(0.0652173907, 0, 0.558375657, 0)
randomize_5.Size = UDim2.new(0, 205, 0, 46)
randomize_5.Font = Enum.Font.SourceSans
randomize_5.Text = "(rouxhaver on github)"
randomize_5.TextColor3 = Color3.fromRGB(0, 0, 0)
randomize_5.TextScaled = true
randomize_5.TextSize = 33.000
randomize_5.TextWrapped = true

randomize_6.Name = randomstr.."2"
randomize_6.Parent = randomize_2
randomize_6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
randomize_6.BorderColor3 = Color3.fromRGB(170, 0, 0)
randomize_6.BorderSizePixel = 3
randomize_6.Position = UDim2.new(0.845000029, 0, 0.0149999997, 0)
randomize_6.Size = UDim2.new(0, 33, 0, 33)
randomize_6.Font = Enum.Font.SourceSans
randomize_6.Text = "X"
randomize_6.TextColor3 = Color3.fromRGB(255, 255, 255)
randomize_6.TextScaled = true
randomize_6.TextSize = 14.000
randomize_6.TextWrapped = true

local frame = Game.Players.LocalPlayer.PlayerGui[randomstr]
local close = frame[randomstr][randomstr.."2"]

close.MouseButton1Click:connect(function()
 frame.Enabled = false
end)

local ScreenGui = Instance.new("ScreenGui")
local Start = Instance.new("TextButton")


Start.Name = "Start"
Start.Parent = ScreenGui
Start.BackgroundColor3 = Color3.fromRGB(0, 220, 92)
Start.BorderColor3 = Color3.fromRGB(53, 53, 53)
Start.BorderSizePixel = 10
Start.Position = UDim2.new(0.418730646, 0, 0.760493815, 0)
Start.Size = UDim2.new(0.162538692, 0, 0.114814818, 0)
Start.Font = Enum.Font.SourceSans
Start.Text = "Start"
Start.TextColor3 = Color3.fromRGB(0, 0, 0)
Start.TextScaled = true
Start.TextSize = 14.000
Start.TextWrapped = true

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

player = game.Players.LocalPlayer

selectedhats = {}

ICantDoMathsCount = 0
ytime = 1
weirdcounter = 1

for i,v in pairs(player.Character:GetDescendants()) do
 if v:IsA("Accessory") then

  local opt = Instance.new("Frame")
  local view = Instance.new("ViewportFrame")
  local Select = Instance.new("TextButton")
  local cam = Instance.new("Camera")

  weirdcounter = weirdcounter + 1

  if weirdcounter == 7 then
   ytime = 2
   ICantDoMathsCount = 0
  end

  opt.Name = "opt"
  opt.Parent = ScreenGui
  opt.BackgroundColor3 = Color3.fromRGB(169, 196, 255)
  opt.BorderColor3 = Color3.fromRGB(53, 53, 53)
  opt.BorderSizePixel = 11
  opt.Position = UDim2.new(0.08 + ICantDoMathsCount, 0, 0.249382704 * ytime, 0)
  opt.Size = UDim2.new(0.112229101, 0, 0.213580251, 0)

  ICantDoMathsCount = ICantDoMathsCount + 0.15

  view.Name = "view"
  view.Parent = opt
  view.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  view.BackgroundTransparency = 1
  view.BorderSizePixel = 0
  view.Size = UDim2.new(1.00000024, 0, 0.729156077, 0)

  Select.Name = "Select"
  Select.Parent = opt
  Select.BackgroundColor3 = Color3.fromRGB(0, 220, 92)
  Select.BorderColor3 = Color3.fromRGB(75, 75, 75)
  Select.BorderSizePixel = 5
  Select.Position = UDim2.new(0.068965517, 0, 0.774566472, 0)
  Select.Size = UDim2.new(0.865517259, 0, 0.186705261, 0)
  Select.Font = Enum.Font.SourceSans
  Select.Text = "Select"
  Select.TextColor3 = Color3.fromRGB(0, 0, 0)
  Select.TextScaled = true
  Select.TextSize = 14.000
  Select.TextWrapped = true

  cam.Parent = opt
  cam.CFrame = CFrame.new(0,0,2.5)
  view.CurrentCamera = cam
  model = Instance.new("Model",view)

  local hat = v.Handle:Clone()
  hat.Parent = model
  hat.Anchored = true
  hat.Position = Vector3.new(0,0,0)

  coroutine.wrap(function()
   while hat ~= nil do
    wait()
    hat.Orientation = hat.Orientation + Vector3.new(0,1.5,0)
   end
  end)()

  Select.Activated:Connect(function()
   Select.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
   Select.Text = "Selected"
   Select.Active = false
   table.insert(selectedhats,v.Name)
  end)
 end
end


Start.MouseButton1Up:Connect(function()
 ScreenGui:Destroy()

 folder = Instance.new("Folder",workspace)

 for i,v in pairs(selectedhats) do

  local vispet = player.Character[v].Handle

  local pet = Instance.new("Part",folder)
  pet.Name = "pet"
  pet.Size = Vector3.new(1,1,1)
  pet.Transparency = 1
  pet.Position = player.Character.HumanoidRootPart.Position
  pet.Anchored = true
  pet.CanCollide = false

  vispet.AccessoryWeld:Destroy()


  local replicate = Instance.new("RopeConstraint",player.Character.Torso)
  replicate.Attachment0 = Instance.new("Attachment",player.Character.Torso)
  replicate.Attachment1 = Instance.new("Attachment",vispet)
  replicate.Length = math.huge


  local function customtwn(input, offset)
   local input = input or error("input is nil");
   local offset = offset or CFrame.new(0,0,0);
   local vec3, cframe;

   if typeof(input) == "table" then
    vec3 = Vector3.new(unpack(input)); cframe = CFrame.new(unpack(input));
   elseif typeof(input) ~= "Instance" then
    return error("wrong format used");
   end;

   local Time = 0.5
   local twn = game.TweenService:Create(pet, TweenInfo.new(Time,Enum.EasingStyle.Quad), {CFrame = (cframe or input.CFrame) * offset});
   twn:Play();
  end;

  local change = 0.01
  local high = 0
  local clock = 0
  local offX = math.random(-3,3)
  local offY = math.random(-2,3)
  local offZ = math.random(-3,3)
  local clkrst = math.random(100,300)

  coroutine.wrap(function()
   while task.wait() do
    vispet.CFrame = pet.CFrame

   end
  end)()

  coroutine.wrap(function()
   while wait(0.01) do
    clock = clock + 1
    if clock == clkrst then
     offX = math.random(-3,3)
     offY = math.random(-2,3)
     offZ = math.random(-3,3)
     clock = 0
     clkrst = math.random(100,300)
    end

    high = high + change

    if high > 0.5 then
     change = -0.02
    end

    if high < -0.5 then
     change = 0.02
    end
    customtwn(player.Character.HumanoidRootPart, CFrame.new(offX,offY + high,offZ))
   end
  end)()
 end
 while wait(0.1) do
  if player.Character.Humanoid.Health == 0 then
   folder:Destroy()
   script:Destroy()
  end
 end
end)