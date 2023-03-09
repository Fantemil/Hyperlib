-- // services
local run_service = game:GetService("RunService")
local camera = workspace.CurrentCamera
local localplayer = game:GetService("Players").LocalPlayer
-- // tables
local settings = {
Ã  Ã  location = {enabled = true, color = Color3.new(1,1,1), distance = 1000},
Ã  Ã  zombie = {enabled = true, color = Color3.new(1,0,0), distance = 1000}
}
--
local location_drawings = {}
local zombie_drawings = {}
-- // functions
function draw(instance, properties)
Ã  Ã  local drawing = Drawing.new(instance)
Ã  Ã  for i,v in pairs(properties) do
Ã  Ã  Ã  Ã  drawing[i] = v
Ã  Ã  end
Ã  Ã  return drawing
end
--
function createtext(type, table)
Ã  Ã  if not table[type] then
Ã  Ã  Ã  Ã  table[type] = draw('Text', {Size = 13, Font = 2, Center = true, Outline = true, Color = Color3.new(1,1,1)})
Ã  Ã  end
end
--
function removetext(type, table)
Ã  Ã  if table[type] then
Ã  Ã  Ã  Ã  table[type]:Remove()
Ã  Ã  Ã  Ã  table[type] = nil
Ã  Ã  end
end
-- // location script
for _,v in next, workspace.Locations:GetChildren() do
Ã  Ã  createtext(v, location_drawings)
end
-- // zombie script
for _,v in next, workspace.Zombies.Mobs:GetChildren() do
Ã  Ã  createtext(v, zombie_drawings)
end
--
workspace.Zombies.Mobs.ChildAdded:Connect(function(v)
Ã  Ã  createtext(v, zombie_drawings)
end)
--
workspace.Zombies.Mobs.ChildRemoved:Connect(function(v)
Ã  Ã  removetext(v, zombie_drawings)
end)
-- // runservice shit (bad methods :sob:)
run_service.RenderStepped:Connect(function()
Ã  Ã  for _,v in next, location_drawings do
Ã  Ã  Ã  Ã  local pos, visible = camera:WorldToViewportPoint(_.CFrame.p)
Ã  Ã  Ã  Ã  local mag = math.floor((_.CFrame.p - camera.CFrame.p).magnitude)
Ã  Ã  Ã  Ã  v.Visible = visible and settings.location.enabled and (mag <= settings.location.distance) and localplayer.Character ~= nil or false
Ã  Ã  Ã  Ã  if v.Visible then
Ã  Ã  Ã  Ã  Ã  Ã  v.Position = Vector2.new(pos.X,pos.Y)
Ã  Ã  Ã  Ã  Ã  Ã  v.Text = tostring(_.Name ..' ['..mag..' studs]')
Ã  Ã  Ã  Ã  Ã  Ã  v.Color = settings.location.color or Color3.new(1,1,1)
Ã  Ã  Ã  Ã  end
Ã  Ã  end
Ã  Ã  --
Ã  Ã  for _,v in next, zombie_drawings do
Ã  Ã  Ã  Ã  if _:FindFirstChild("HumanoidRootPart") then
Ã  Ã  Ã  Ã  Ã  Ã  local pos, visible = camera:WorldToViewportPoint(_.HumanoidRootPart.Position)
Ã  Ã  Ã  Ã  Ã  Ã  local mag = math.floor((_.HumanoidRootPart.CFrame.p - camera.CFrame.p).magnitude)
Ã  Ã  Ã  Ã  Ã  Ã  v.Visible = visible and settings.zombie.enabled and (mag <= settings.zombie.distance) and localplayer.Character ~= nil or false
Ã  Ã  Ã  Ã  Ã  Ã  if v.Visible then
Ã  Ã  Ã  Ã  Ã  Ã  Ã  Ã  v.Position = Vector2.new(pos.X,pos.Y)
Ã  Ã  Ã  Ã  Ã  Ã  Ã  Ã  v.Text = tostring('Zombie' ..' ['..mag..' studs]')
Ã  Ã  Ã  Ã  Ã  Ã  Ã  Ã  v.Color = settings.zombie.color or Color3.new(1,0,0)
Ã  Ã  Ã  Ã  Ã  Ã  end
Ã  Ã  Ã  Ã  end
Ã  Ã  end
end)