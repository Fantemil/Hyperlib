---@diagnostic disable: undefined-global

local isexecutorclosure = isexecutorclosure or is_synapse_function
assert(type(mousemoverel) == "function" and type(isexecutorclosure) == "function", "Unsupported exploit.")
local aimbot, esp, ffa, fov, sens = true, true, true, 4, 0.2

local ui = game:GetObjects("rbxassetid://10944586391")[1]:Clone()

local camera = { currentcamera = workspace.CurrentCamera }
camera.wtsp = camera.currentcamera.WorldToScreenPoint
local characters = {}
local ragdollgrounds = game.PlaceId == 3161739008

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
 camera.currentcamera = workspace.CurrentCamera
end)

local v2 = Vector2.new
local rbxclass = game.IsA
local rbxclasschild = game.FindFirstChildWhichIsA
local rbxdescendant = game.IsDescendantOf

local ui_frame = ui:WaitForChild("MainFrame")
local ui_circle = ui:WaitForChild("Circle")
local ui_content = ui_frame:WaitForChild("Content")

local ui_aimcontroller = ui_content:WaitForChild("AimbotController")
local ui_espcontroller = ui_content:WaitForChild("ESPController")
local ui_ffacontroller = ui_content:WaitForChild("FFAController")
local ui_fovcontroller = ui_content:WaitForChild("FOVController")
local ui_sencontroller = ui_content:WaitForChild("SensitivityController")

local placeid = game["PlaceId"]
local players = game:GetService("Players")
local run = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local startergui = game:GetService("StarterGui")
local localplayer = players.LocalPlayer
local playermouse = localplayer:GetMouse()
local raycast, ray = workspace.FindPartOnRayWithIgnoreList, Ray.new
local colorset = {
 tlockedcol = Color3.fromRGB(0, 172, 255),
 tinviewcol = Color3.fromRGB(38, 255, 99),
 toutviewcol = Color3.fromRGB(255, 37, 40),
}
local mousebutton1down = false
local mousebutton2down = false
local mousebutton1 = Enum.UserInputType.MouseButton1
local mousebutton2 = Enum.UserInputType.MouseButton2
local luaUtils = {}

do
 function luaUtils:Scan(content)
  for _, closure in pairs(debug.getregistry()) do
   if type(closure) == "function" and not isexecutorclosure(closure) then
    for _, upvalue in pairs(debug.getupvalues(closure)) do
     if type(upvalue) == "table" then
      local i = 0
      for _, v in pairs(content) do
       if rawget(upvalue, v) then
        i += 1
       end
      end
      if i == #content then
       return upvalue
      end
     end
    end
   end
  end
 end
end

if table.find({ 299659045, 292439477, 3568020459 }, placeid) then
 phantomforces = {
  network = luaUtils:Scan({ "add", "send", "fetch" }),
  camera = luaUtils:Scan({ "currentcamera", "setfirstpersoncam", "setspectate" }),
  replication = luaUtils:Scan({ "getbodyparts" }),
  hud = luaUtils:Scan({ "getplayerpos", "isplayeralive" }),
  characters = {},
 }
 phantomforces.characters = debug.getupvalue(phantomforces.replication.getbodyparts, 1)
end

startergui:SetCore(
 "SendNotification",
 { Title = "Thank You", Text = "Created by Paygammy", Duration = 10, Button1 = "OK" }
)
startergui:SetCore(
 "SendNotification",
 { Title = "Early Build", Text = "Expect some bugs", Duration = 10, Button1 = "OK" }
)

coroutine.resume(coroutine.create(function(dragging, dragInput, dragStart, startPos)
 local function update(input)
  local delta = input.Position - dragStart
  ui_frame.Position =
   UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
 end
 ui_frame.InputBegan:Connect(function(input)
  if
   input.UserInputType == Enum.UserInputType.MouseButton1
   or input.UserInputType == Enum.UserInputType.Touch
  then
   dragging = true
   dragStart = input.Position
   startPos = ui_frame.Position

   input.Changed:Connect(function()
    if input.UserInputState == Enum.UserInputState.End then
     dragging = false
    end
   end)
  end
 end)
 ui_frame.InputChanged:Connect(function(input)
  if
   input.UserInputType == Enum.UserInputType.MouseMovement
   or input.UserInputType == Enum.UserInputType.Touch
  then
   dragInput = input
  end
 end)
 uis.InputChanged:Connect(function(input)
  if input == dragInput and dragging then
   update(input)
  end
 end)
end))

do
 local textbox = ui_fovcontroller:WaitForChild("TextBox")
 textbox.FocusLost:Connect(function(enterPressed)
  if enterPressed then
   local n = tonumber(textbox.Text)
   if typeof(n) == "number" then
    fov = n
   else
    fov = 4
   end
  end
 end)
end

do
 local textbox = ui_sencontroller:WaitForChild("TextBox")
 textbox.FocusLost:Connect(function(enterPressed)
  if enterPressed then
   local n = tonumber(textbox.Text)
   if typeof(n) == "number" then
    sens = n
   else
    sens = 0.2
   end
  end
 end)
end

local getenemychars = phantomforces
  and function()
   local l = {}
   if ffa then
    for _, player in pairs(players:GetPlayers()) do
     if player ~= localplayer then
      local character = player.Character
      local char = phantomforces.characters[player]
      if char and typeof(rawget(char, "head")) == "Instance" then
       character = char.head.Parent
      end
      local a
      for i, v in pairs(characters) do
       if v == character then
        a = true
        break
       end
      end
      if not a then
       loadcharacter(character)
      end
      if phantomforces.hud:getplayerhealth(player) > 0 then
       table.insert(l, character)
      end
     end
    end
   else
    local lt = localplayer.Team
    for _, player in pairs(players:GetPlayers()) do
     if player ~= localplayer then
      local character
      local char = phantomforces.characters[player]
      if char and typeof(rawget(char, "head")) == "Instance" then
       character = char.head.Parent
      end
      local a
      for i, v in pairs(characters) do
       if v == character then
        a = true
        break
       end
      end
      if not a then
       loadcharacter(character)
      end
      if lt ~= player.Team and phantomforces.hud:getplayerhealth(player) > 0 then
       table.insert(l, character)
      end
     end
    end
   end
   return l
  end
 or function()
  local l = {}
  if ffa then
   for _, player in pairs(players:GetPlayers()) do
    if player ~= localplayer then
     local character = player.Character
     local humanoid = character and rbxclasschild(character, "Humanoid")
     if phantomforces then
      if phantomforces.hud:getplayerhealth(player) > 0 then
       table.insert(l, character)
      end
     elseif humanoid and humanoid.Health > 0 then
      table.insert(l, character)
     end
    end
   end
  else
   local lt = localplayer.Team
   for _, player in pairs(players:GetPlayers()) do
    if player ~= localplayer then
     local character = player.Character
     local team = player.Team
     local humanoid = typeof(character) == "Instance" and rbxclasschild(character, "Humanoid")
     if phantomforces and lt ~= team then
      if phantomforces.hud:getplayerhealth(player) > 0 then
       table.insert(l, character)
      end
     elseif humanoid and humanoid.Health > 0 then
      if ragdollgrounds then
       local friendly = select(
        2,
        pcall(function()
         return localplayer.Group.Value == player.Group.Value
        end)
       )
       if friendly ~= true then
        table.insert(l, character)
       end
      elseif lt ~= team then
       table.insert(l, character)
      end
     end
    end
   end
  end
  return l
 end

local function getnearest()
 local closest_character, closest_screenpoint
 local distance_fovbased = 2048
 local position_camera = camera.currentcamera.CFrame.Position
 for _, character in pairs(getenemychars()) do
  local humanoid = rbxclasschild(character, "Humanoid")
  if phantomforces or typeof(humanoid) ~= "Instance" or (humanoid:IsA("Humanoid") and humanoid.Health > 0) then
   local tcol = colorset.toutviewcol
   local lock = false
   if character == target then
    tcol = colorset.tlockedcol
    lock = true
   end
   local head = character:FindFirstChild("Head")
   if typeof(head) == "Instance" and head:IsA("BasePart") then
    local fov_position, on_screen = camera.wtsp(camera.currentcamera, head.Position)
    local fov_distance = (v2(playermouse.X, playermouse.Y) - v2(fov_position.X, fov_position.Y)).Magnitude
    if
     on_screen
     and fov_distance <= camera.currentcamera.ViewportSize.X / (90 / fov)
     and fov_distance < distance_fovbased
    then
     local hit = raycast(
      workspace,
      ray(position_camera, (head.Position - position_camera).Unit * 2048),
      { camera.currentcamera, localplayer.Character }
     )
     if typeof(hit) == "Instance" and rbxdescendant(hit, character) then
      distance_fovbased = fov_distance
      closest_character = character
      closest_screenpoint = fov_position
      if lock == false then
       for h, c in pairs(characters) do
        if c == character then
         tcol = colorset.tinviewcol
         tcol = colorset.tinviewcol
         break
        end
       end
      end
     end
    end
   end
   for h, c in pairs(characters) do
    if c == character then
     h.FillColor = tcol
     h.OutlineColor = tcol
     break
    end
   end
  end
 end
 return closest_character, closest_screenpoint
end

uis.InputBegan:Connect(function(io, gpe)
 if typeof(uis:GetFocusedTextBox()) == "Instance" then
  return
 end
 if io.UserInputType == mousebutton1 then
  mousebutton1down = true
 elseif io.UserInputType == mousebutton2 then
  mousebutton2down = true
 end
end)

uis.InputEnded:Connect(function(io, gpe)
 if io.UserInputType == mousebutton1 and mousebutton1down then
  mousebutton1down = false
 elseif io.UserInputType == mousebutton2 and mousebutton2down then
  mousebutton2down = false
 end
end)

if syn then
 syn.protect_gui(ui)
end
local core
if type(gethui) == "function" then
 core = gethui()
else
 core = game:GetService("CoreGui")
end
ui.Parent = core

do
 local player = {}
 local function getcharacter(player)
  local character = player.Character
  if phantomforces then
   local char = phantomforces.characters[player]
   if char and typeof(rawget(char, "head")) == "Instance" then
    character = char.head.Parent
   end
  end
  return character
 end
 function loadcharacter(character)
  if typeof(character) == "Instance" then
   local origchar = character
   for highlight, character in pairs(characters) do
    if typeof(character) ~= "Instance" or not rbxdescendant(character, workspace) then
     characters[highlight] = nil
     highlight:Destroy()
    elseif character == origchar then
     return
    end
   end
   local highlight = Instance.new("Highlight")
   highlight.Name = character:GetDebugId()
   highlight.Adornee = character
   highlight.Enabled = (
    ffa
    or select(
      2,
      pcall(function()
       return players:GetPlayerFromCharacter(character).Team == localplayer.Team
      end)
     )
     ~= true
   ) and esp
   highlight.FillColor = colorset.toutviewcol
   highlight.OutlineColor = colorset.toutviewcol
   highlight.Parent = ui
   characters[highlight] = character
   local player = players:GetPlayerFromCharacter(character)
   if typeof(player) == "Instance" then
    player:GetPropertyChangedSignal("Team"):Connect(function()
     highlight.Enabled = (
      ffa
      or select(
        2,
        pcall(function()
         return players:GetPlayerFromCharacter(character).Team == localplayer.Team
        end)
       )
       ~= true
     ) and esp
    end)
   end
  end
 end
 local function loadplayer(player)
  local c = getcharacter(player)
  if typeof(c) == "Instance" then
   loadcharacter(c)
  end
  player.CharacterAdded:Connect(function(c)
   local character = c or getcharacter(player)
   return loadcharacter(character)
  end)
 end
 for _, player in pairs(players:GetPlayers()) do
  if player ~= localplayer then
   loadplayer(player)
  end
 end
 players.PlayerAdded:Connect(loadplayer)
 ui_ffacontroller.ImageButton.MouseButton1Up:Connect(function()
  ffa = not ffa
  if ffa then
   ui_ffacontroller.ImageButton.TextLabel.Text = "✓"
  else
   ui_ffacontroller.ImageButton.TextLabel.Text = ""
  end
  for highlight, character in pairs(characters) do
   highlight.Enabled = (
    ffa
    or select(
      2,
      pcall(function()
       return players:GetPlayerFromCharacter(character).Team == localplayer.Team
      end)
     )
     ~= true
   ) and esp
  end
 end)
 ui_espcontroller.ImageButton.MouseButton1Up:Connect(function()
  esp = not esp
  if esp then
   ui_espcontroller.ImageButton.TextLabel.Text = "✓"
   for highlight, character in pairs(characters) do
    highlight.Enabled = (
     ffa
     or select(
       2,
       pcall(function()
        return players:GetPlayerFromCharacter(character).Team == localplayer.Team
       end)
      )
      ~= true
    ) and esp
   end
  else
   ui_espcontroller.ImageButton.TextLabel.Text = ""
   for highlight in pairs(characters) do
    highlight.Enabled = false
   end
  end
 end)
 ui_aimcontroller.ImageButton.MouseButton1Up:Connect(function()
  aimbot = not aimbot
  if aimbot then
   ui_aimcontroller.ImageButton.TextLabel.Text = "✓"
  else
   ui_aimcontroller.ImageButton.TextLabel.Text = ""
  end
  ui_circle.Visible = aimbot
 end)
 function updatemouse()
  local vpsize = camera.currentcamera.ViewportSize
  local x, y = playermouse.X, playermouse.Y
  ui_circle.Position = UDim2.fromOffset(x, y)
  ui_circle.Size = UDim2.fromOffset((vpsize.X / (90 / fov)) * 2, (vpsize.X / (90 / fov)) * 2)
 end
 playermouse.Move:Connect(updatemouse)
 uis:GetPropertyChangedSignal("MouseBehavior"):Connect(updatemouse)
 local c, s, h
 local lastt = 0
 local fdelt = 0.016666666666666666
 function player.onpostrender(deltaTime)
  local time = tick()
  if aimbot and time > lastt + fdelt or (1 / deltaTime < 60) then
   lastt = time
   c, s = getnearest()
   if c and s and mousebutton2down then
    target = c
    mousemoverel((s.X - playermouse.X) * sens, (s.Y - playermouse.Y) * sens)
    updatemouse()
    if esp then
     for i, v in pairs(characters) do
      if v == c then
       h = i
       if typeof(h) == "Instance" and rbxclass(h, "Highlight") then
        h.FillColor = colorset.tlockedcol
        h.OutlineColor = colorset.tlockedcol
       end
       break
      end
     end
    end
   else
    target = nil
   end
  else
   getnearest()
  end
 end
 lastt = run.Heartbeat:Wait()
 run.Heartbeat:Connect(player.onpostrender)
end