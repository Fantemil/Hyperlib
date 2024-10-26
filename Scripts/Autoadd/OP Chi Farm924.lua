local library = loadstring(game:HttpGet("https://pastebin.com/raw/TYpU89g4", true))()
library.options.underlinecolor = "rainbow"

local main = library:CreateWindow('Farms')

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

--- Gets child from character
-- @treturn Part or nil
local function GetFromCharacter(Name)
  local Character = Player.Character or Player.CharacterAdded:Wait()
  local Part = Character:FindFirstChild(Name) or Character:WaitForChild(Name, 10)

  return Part
end

--- Touch ð
local function Touch(Parent, ChildName)
  local TouchPart = Parent:FindFirstChild(ChildName)

  if TouchPart then
    local HumanoidRootPart = GetFromCharacter("HumanoidRootPart")
    if not HumanoidRootPart then return end
    if firetouchinterest then
      firetouchinterest(HumanoidRootPart, TouchPart, 0)
      firetouchinterest(HumanoidRootPart, TouchPart, 1)
    else
      TouchPart.CFrame = HumanoidRootPart.CFrame
    end
  end
end

--- It'll get something
local function CollectOpStuff()
  local Parts = workspace.Hoops:GetChildren()

  for _, v in ipairs(Parts) do
    if not v:FindFirstChild("Cooldown") then
      Touch(v, "touchPart")
    end
  end
end

--- Toggleeee pp
local function ToggleGUI(To)
  local Guis = {Player.PlayerGui.statEffectsGui, Player.PlayerGui.hoopGui}

  for _, v in ipairs(Guis) do
    if v.Enabled ~= To then
      v.Enabled = not v.Enabled
    end
  end
end

ToggleGUI(false)

main:Toggle("Auto Chest", {flag = "AutoChest"}, function(toggle)
  if _G.Swing then _G.Swing:Disconnect() end
  local Chests = {"goldenChest","enchantedChest","magmaChest","mythicalChest","legendsChest"}

  if toggle then
    _G.Swing = RunService.Heartbeat:Connect(function()
      for _, v in ipairs(Chests) do
        local Chest = workspace:FindFirstChild(v)

        if Chest then
          Touch(Chest, "circleInner")
        end
      end
    end)
  end
end)

main:Toggle("Op Chi Farm", {flag = "OpFarm"}, function(toggle)
  if _G.CollectorOP then _G.CollectorOP:Disconnect() end

  if toggle then
    _G.CollectorOP = RunService.Heartbeat:Connect(CollectOpStuff)
  end
end)