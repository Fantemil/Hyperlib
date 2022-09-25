local lPlayer = game:GetService("Players").LocalPlayer

local function GetPlayerTank(Player)
    local Char = Player:WaitForChild("Char")
    if not Char then return false end
    if not Char.Value then return false end
    return Char.Value.Parent.Parent.Parent
end

local function highlight(object, color, fill)
   local highlight = Instance.new('Highlight', object)
   highlight.FillColor = color
   highlight.FillTransparency = fill
   highlight.OutlineColor = color
   highlight.OutlineTransparency = .98
end

local Ammo = Instance.new("Model", Workspace)
highlight(Ammo, Color3.fromRGB(255, 0, 0), .7)
local Fuel = Instance.new("Model", Workspace)
highlight(Fuel, Color3.fromRGB(255, 255, 0), .9)
local Barrel = Instance.new("Model", Workspace)
highlight(Barrel, Color3.fromRGB(0, 0, 255), .7)
local HCrew = Instance.new("Model", Workspace)
highlight(HCrew, Color3.fromRGB(0, 255, 255), .8)
local TCrew = Instance.new("Model", Workspace)
highlight(TCrew, Color3.fromRGB(0, 255, 255), .8)
local Engine = Instance.new("Model", Workspace)
highlight(Engine, Color3.fromRGB(255, 255, 255), .2)

local parts = {
  ["Ammo rack"] = Ammo,
  ["Fuel tank"] = Fuel,
  ["Barrel"] = Barrel,
  ["Hull crew"] = HCrew, 
  ["Turret crew"] = TCrew,
  ["Drivetrain"] = Engine
}


Workspace.DescendantAdded:Connect(function(v)
  task.wait(5)
  if parts[v.Name] and ((GetPlayerTank(lPlayer) and not v:IsDescendantOf(GetPlayerTank(lPlayer))) or (not GetPlayerTank(lPlayer) and not v:IsDescendantOf(Workspace.Ignore))) then
    v.Transparency = 0
    v.Parent = parts[v.Name]
  end
end)

for _,v in pairs(Workspace:GetDescendants()) do
  if parts[v.Name] and ((GetPlayerTank(lPlayer) and not v:IsDescendantOf(GetPlayerTank(lPlayer))) or (not GetPlayerTank(lPlayer) and not v:IsDescendantOf(Workspace.Ignore))) then
    v.Transparency = 0
    v.Parent = parts[v.Name]
  end
end

local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
end)