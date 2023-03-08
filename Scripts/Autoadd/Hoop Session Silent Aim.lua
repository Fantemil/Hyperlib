-- Made by mxkxkks

game:GetService("Players").Name = "Players"
local dist = math.huge
local hoop = math.huge
local changed = false

function closestHoop()
 local dist = math.huge
 local hoop = math.huge

 for i, v in next, game.Workspace.Courts:GetDescendants() do
  for k, s in next, v:GetDescendants() do
   if s:FindFirstChild("Score") and game.Players.LocalPlayer.Character then
    local net = s:FindFirstChild("Score")
    if net then
     local magnitude =
      (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - net.Position).Magnitude
     if magnitude < dist then
      hoop = net
     end
    end
   end
  end
 end
 return hoop.Position
end

for i, v in next, workspace.Courts:GetDescendants() do
 if game.Players.LocalPlayer.Character then
  local char = game.Players.LocalPlayer.Character
  if v:IsA("Part") then
   for k, s in next, v:GetDescendants() do
    local net = s:FindFirstChild("Score")
    if net then
     local magnitude = (char.HumanoidRootPart.Position - net.Position).Magnitude
     local dist = s
     if magnitude < dist then
      hoop2 = net
      dist2 = magnitude
     end
    end
   end
  end
  if dist < dist2 then
   return hoop.Position
  else
   return hoop2.Position
  end
 end
end

coroutine.resume(coroutine.create(function()
 while task.wait() do
  if game.Players.LocalPlayer.Character then
   local char = game.Players.LocalPlayer.Character
   _G.mag = (char.HumanoidRootPart.Position - closestHoop()).Magnitude * 1.25
  end
 end
end))
coroutine.resume(coroutine.create(function()
 while wait(0.1) do
  _G.hoop = closestHoop()
  _G.sp = workspace.CurrentCamera:WorldToViewportPoint(closestHoop())
 end
end))

coroutine.resume(coroutine.create(function()
 pcall(function()
  game:GetService("RunService").Stepped:Connect(function()
   if game.Players.LocalPlayer.Character then
    local char = game.Players.LocalPlayer.Character
    local magnitude = (char.HumanoidRootPart.Position - _G.hoop).Magnitude * 1.3
    if magnitude < 120 and magnitude > 71 then
     local function round (to_round)
      local divided = to_round
      local rounded = 5 * math.floor(divided)
      return rounded
     end
     changed = true
     game.Players.LocalPlayer.Power.Value = round(magnitude)
     task.wait(0.05)
    elseif magnitude < 120 and magnitude < 71 then
     local magnitude = (char.HumanoidRootPart.Position - _G.hoop).Magnitude * 1.41
     local function round(to_round)
      local divided = to_round / 5
      local rounded = 5 * math.floor(divided)
      return rounded
     end
     changed = true
     game.Players.LocalPlayer.Power.Value = round(magnitude)
     task.wait(0.05)
    end
   end
  end)
 end)
end))

local old
old = hookmetamethod(game,"__namecall",function(self,...)
 local method = getnamecallmethod()
 local args = {...}

 if method == "GetMouseLocation" then
  return Vector2.new(_G.sp.X, _G.mag)
 end
 return old(self,...)
end)