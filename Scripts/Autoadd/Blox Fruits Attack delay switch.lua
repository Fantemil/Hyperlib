-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local hitDelayTextbox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.843647242, 0, 0.269043773, 0)
TextButton.Size = UDim2.new(0.0747384131, 0, 0.0810372755, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Instakill closest Enemy"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

hitDelayTextbox.Name = "hitDelayTextbox"
hitDelayTextbox.Parent = TextButton
hitDelayTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hitDelayTextbox.BackgroundTransparency = 0.500
hitDelayTextbox.BorderSizePixel = 0
hitDelayTextbox.Position = UDim2.new(0, 0, 1, 0)
hitDelayTextbox.Size = UDim2.new(0.998041987, 0, 0.200000003, 0)
hitDelayTextbox.Font = Enum.Font.SourceSans
hitDelayTextbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
hitDelayTextbox.PlaceholderText = "Type in your hit delay here"
hitDelayTextbox.Text = ""
hitDelayTextbox.TextColor3 = Color3.fromRGB(0, 0, 0)
hitDelayTextbox.TextScaled = true
hitDelayTextbox.TextSize = 14.000
hitDelayTextbox.TextWrapped = true

-- Scripts:

local function NWMBI_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)

 local plr = game.Players.LocalPlayer
 
 local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
 local CbFw2 = CbFw[2]
 
 function GetCurrentBlade()
  local p13 = CbFw2.activeController
  local ret = p13.blades[1]
  if not ret then return end
  while ret.Parent ~= game.Players.LocalPlayer.Character do ret = ret.Parent end
  return ret
 end
 function AttackNoCD()
  local AC = CbFw2.activeController
  for i = 1, 1 do
   local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
   plr.Character,
   {
    plr.Character.HumanoidRootPart
   },
   60
   )
   local cac = {}
   local hash = {}
   for k, v in pairs(bladehit) do
    if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
     table.insert(cac, v.Parent.HumanoidRootPart)
     hash[v.Parent] = true
    end
   end
   bladehit = cac
   if #bladehit > 0 then
    local u8 = debug.getupvalue(AC.attack, 5)
    local u9 = debug.getupvalue(AC.attack, 6)
    local u7 = debug.getupvalue(AC.attack, 4)
    local u10 = debug.getupvalue(AC.attack, 7)
    local u12 = (u8 * 798405 + u7 * 727595) % u9
    local u13 = u7 * 798405
    (function()
     u12 = (u12 * u9 + u13) % 1099511627776
     u8 = math.floor(u12 / u9)
     u7 = u12 - u8 * u9
    end)()
    u10 = u10 + 1
    debug.setupvalue(AC.attack, 5, u8)
    debug.setupvalue(AC.attack, 6, u9)
    debug.setupvalue(AC.attack, 4, u7)
    debug.setupvalue(AC.attack, 7, u10)
    pcall(function()
     for k, v in pairs(AC.animator.anims.basic) do
      v:Play()
     end
    end)
    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
     game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
     game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
     game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
    end
   end
  end
 end
 
 script.Parent.Active = true
 script.Parent.Draggable = true
 script.Parent.BackgroundColor3 = Color3.new(170,0,0)
 instakill = false
 attackDelay = 0.1
 
 script.Parent.hitDelayTextbox.InputChanged:Connect(function(input)
  num = tonumber(script.Parent.hitDelayTextbox.Text)
  if num then
   attackDelay = num
  else
   script.Parent.hitDelayTextbox.Text = ""
  end
 end)
 
 script.Parent.MouseButton1Click:Connect(function()
  if instakill == false then
   instakill = true
   script.Parent.BackgroundColor3 = Color3.new(0,170,0)
  elseif instakill == true then
   instakill = false
   script.Parent.BackgroundColor3 = Color3.new(170,0,0)
  end
 end)
 
 task.spawn(function()
  while task.wait(attackDelay) do
   pcall(function()
    if instakill == true then
     AttackNoCD()
    end
   end)
  end
 end)
end
coroutine.wrap(NWMBI_fake_script)()