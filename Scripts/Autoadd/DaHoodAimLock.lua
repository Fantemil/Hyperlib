    repeat wait() until game:IsLoaded()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/murderspree/dhbal-crack/main/library"))()

local sex = true

local window = library:CreateWindow('RLX') do
 local folder = window:AddFolder('aimlock') do
        --[[
  folder:AddToggle({ text = 'ESP', flag = 'esp' })
        ]]
            
  folder:AddBox({text = "Prediction", flag = "predictionFlag", value = "7.11", callback = function(g) timetoaim = g end})
  folder:AddBox({text = "Long Range", flag = "aimheightFlag", value = "-0.88", callback = function(a) ballisticsboost = a end})
  folder:AddBox({text = "Close Range", flag = "aimHEIGHT2Flag", value = "-2.68", callback = function(b) ballisticsboost2 = b end})
  
  folder:AddBind({text = "Long Range Key", flag = "farBind", key = "Q", callback = function() end})
  folder:AddBind({text = "Close Range Key", flag = "closeBind", key = "C", callback = function() end})
  folder:AddBind({text = "Toggle GUI", flag = "keyHide", key = "RightShift", callback = function() 
          sex = not sex
          window.main.Visible = sex
      end})
 end
end
library:Init()
local plrs = game:GetService("Players")
local lplr = game:GetService("Players").LocalPlayer
local presskeytoaim = true; local aimkey = library.flags.farBind; local aimkey2 = library.flags.closeBind
local TeamBased = false;
aimbothider = true; aimbothiderspeed = .9
local Aim_Assist = false ; Aim_Assist_Key = {Enum.KeyCode.LeftControl, "z"}
local movementcounting = true
local movementcounting2 = true


local mouselock = false
local canaimat = true
local lockaim = true; local lockangle = 5
local cam = game.Workspace.CurrentCamera
local BetterDeathCount = true
local ballisticsboost = library.flags.aimheightFlag
local ballisticsboost2 = library.flags.aimHEIGHT2Flag

local mouse = lplr:GetMouse()
local switch = false
local aimatpart = nil
local aimatpart2 = nil

local abs = math.abs

--Properties:


local aimbotstatus = {"qc", "qr", "qe", "qd", "qi", "qt", "qs", "dd", "sp", "ql", "qa", "qd", "qs"}

local mousedown = false
local isonmovething = false
local mouseoffset = Vector2.new()
local mousedown = false
local aimbotoffset = {dd = ":", sp = " ", qa = "a", qb = "b",qc = "c", qd = "d", qe = "e", qf = "f", qg = "g" , qh = "h" , qi = "i", qj = "j", qk = "k", ql = "l", qm = "m", qn = "n", qo = "o", qp = "p", qq = "q", qr = "r", qs = "s", qt = "t", qu = "u", qv = "w", qx = "x", qy = "y", qz = "z"}



local plrsforaim = {}

local uis = game:GetService("UserInputService")
mouse.KeyDown:Connect(function(a)
    a = a:lower() and a:upper()
 if a == aimkey then
  if not aimatpart then
   local maxangle = math.rad(20)
   for i, plr in pairs(plrs:GetChildren()) do
    if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 then
     if TeamBased == true then
      if plr.Team.Name ~= lplr.Team.Name then
       local an = checkfov(plr.Character.Head)
       if an < maxangle then
        maxangle = an
        aimatpart = plr.Character.Head
       end
      end
     else
      local an = checkfov(plr.Character.Head)
      if an < maxangle then
       maxangle = an
       aimatpart = plr.Character.Head
      end
      --print(plr)
     end
     local old = aimatpart
     plr.Character.Humanoid.Died:Connect(function()
      --print("died")
      if aimatpart and aimatpart == old then
       aimatpart = nil
      end
     end)

    end
   end
  else
   aimatpart = nil
   canaimat = false
   delay(1.1, function()
    canaimat = true
   end)
  end
 end
 if a == aimkey2 then
  if not aimatpart2 then
   local maxangle = math.rad(20)
   for i, plr in pairs(plrs:GetChildren()) do
    if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 then

     local an = checkfov(plr.Character.Head)
     if an < maxangle then
      maxangle = an
      aimatpart2 = plr.Character.Head
     end
     local old = aimatpart2
     plr.Character.Humanoid.Died:Connect(function()
      if aimatpart2 and aimatpart2 == old then
       aimatpart2 = nil
      end
     end)

    end
   end
  else
   aimatpart2 = nil
   canaimat = false
   delay(1.1, function()
    canaimat = true
   end)
  end
 end
end)

function getfovxyz (p0, p1, deg)
 local x1, y1, z1 = p0:ToOrientation()
 local cf = CFrame.new(p0.p, p1.p)
 local x2, y2, z2 = cf:ToOrientation()
 local d = math.deg
 if deg then
  return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
 else
  return Vector3.new((x1-x2), (y1-y2), (z1-z2))
 end
end


function aimat(part)
 if part then
  --print(part)
  local d = (cam.CFrame.p - part.CFrame.p).magnitude
  local calculatedrop
  local timetoaim = library.flags.predictionFlag
  local pos2 = Vector3.new()
  if movementcounting == true then
   pos2 = part.Velocity/timetoaim
  end
  local minuseddrop = (ballisticsboost+50)/50
  if ballisticsboost ~= 0 then
   calculatedrop = d - (d/minuseddrop)

  else
   calculatedrop = 0
  end
  --print(calculatedrop)
  local addative = Vector3.new()
  if movementcounting then
   addative = pos2
  end
  local cf = CFrame.new(cam.CFrame.p, (addative + part.CFrame.p+ Vector3.new(0, calculatedrop, 0)))
  if aimbothider == true or Aim_Assist == true then
   cam.CFrame = cam.CFrame:Lerp(cf, aimbothiderspeed)
  else

   cam.CFrame = cf
  end
  --print(cf)
 end
end

function aimat2(part)
 if part then
  --print(part)
  local d = (cam.CFrame.p - part.CFrame.p).magnitude
  local calculatedrop
  local timetoaim = library.flags.predictionFlag
  local pos2 = Vector3.new()
  if movementcounting == true then
   pos2 = part.Velocity/timetoaim
  end
  local minuseddrop = (ballisticsboost2+50)/50
  if ballisticsboost2 ~= 0 then
   calculatedrop = d - (d/minuseddrop)

  else
   calculatedrop = 0
  end
  --print(calculatedrop)
  local addative = Vector3.new()
  if movementcounting then
   addative = pos2
  end
  local cf = CFrame.new(cam.CFrame.p, (addative + part.CFrame.p+ Vector3.new(0, calculatedrop, 0)))
  if aimbothider == true or Aim_Assist == true then
   cam.CFrame = cam.CFrame:Lerp(cf, aimbothiderspeed)
  else

   cam.CFrame = cf
  end
  --print(cf)
 end
end
function checkfov (part)
 local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
 local angle = math.abs(fov.X) + math.abs(fov.Y)
 return angle
end
pcall(function()
 delay(0, function()
  while wait(.32) do
   if Aim_Assist and not aimatpart and canaimat and lplr.Character and lplr.Character.Humanoid and lplr.Character.Humanoid.Health > 0 then
    for i, plr in pairs(plrs:GetChildren()) do


     local minangle = math.rad(5.5)
     local lastpart = nil
     local function gg(plr)
      pcall(function()
       if plr.Name ~= lplr.Name and plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Character.Head then
        local raycasted = false
        local cf1 = CFrame.new(cam.CFrame.p, plr.Character.Head.CFrame.p) * CFrame.new(0, 0, -4)
        local r1 = Ray.new(cf1.p, cf1.LookVector * 9000)
        local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
        local dist = (plr.Character.Head.CFrame.p- pos).magnitude
        if dist < 4 then
         raycasted = true
        end
        if raycasted == true then
         local an1 = getfovxyz(cam.CFrame, plr.Character.Head.CFrame)
         local an = abs(an1.X) + abs(an1.Y)
         if an < minangle then
          minangle = an
          lastpart = plr.Character.Head
         end
        end
       end
      end)
     end
     if TeamBased then
      if plr.Team.Name ~= lplr.Team.Name then
       gg(plr)
      end
     else
      gg(plr)
     end
     --print(math.deg(minangle))
     if lastpart then
      aimatpart = lastpart
      aimatpart.Parent.Humanoid.Died:Connect(function()
       if aimatpart == lastpart then
        aimatpart = nil
       end
      end)

     end
    end
   
   end
  end
 end)
end)

local oldheadpos
local lastaimapart

local oldheadpos2
local lastaimapart2
game:GetService("RunService").RenderStepped:Connect(function(dt)
    ballisticsboost = library.flags.aimheightFlag
    ballisticsboost2 = library.flags.aimHEIGHT2Flag
    aimkey = library.flags.farBind
    aimkey2 = library.flags.closeBind
 if aimatpart and lplr.Character and lplr.Character.Head then
  if BetterDeathCount and lastaimapart and lastaimapart == aimatpart then
   local dist = (oldheadpos - aimatpart.CFrame.p).magnitude
   if dist > 40 then
    aimatpart = nil
   end
  end
  lastaimapart = aimatpart
  oldheadpos = lastaimapart.CFrame.p
  do 
   if aimatpart.Parent == plrs.LocalPlayer.Character then
    aimatpart = nil
   end
   aimat(aimatpart)
   pcall(function()
    if Aim_Assist == true then
     local cf1 = CFrame.new(cam.CFrame.p, aimatpart.CFrame.p) * CFrame.new(0, 0, -4)
     local r1 = Ray.new(cf1.p, cf1.LookVector * 1000)
     local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
     local dist = (aimatpart.CFrame.p- pos).magnitude
     if obj then
      --print(obj:GetFullName())
     end
     if not obj or dist > 6 then
      aimatpart = nil
      --print("ooof")
     end
     canaimat = false
     delay(.5, function()
      canaimat = true
     end)
    end
   end)
  end



 end
 
 if aimatpart2 and lplr.Character and lplr.Character.Head then
  if BetterDeathCount and lastaimapart2 and lastaimapart2 == aimatpart2 then
   local dist = (oldheadpos2 - aimatpart2.CFrame.p).magnitude
   if dist > 40 then
    aimatpart2 = nil
   end
  end
  lastaimapart2 = aimatpart2
  oldheadpos2 = lastaimapart2.CFrame.p
  do 
   if aimatpart2.Parent == plrs.LocalPlayer.Character then
    aimatpart2 = nil
   end
   aimat(aimatpart2)
   aimat2(aimatpart2)
   pcall(function()
    if Aim_Assist == true then
     local cf1 = CFrame.new(cam.CFrame.p, aimatpart2.CFrame.p) * CFrame.new(0, 0, -4)
     local r1 = Ray.new(cf1.p, cf1.LookVector * 1000)
     local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
     local dist = (aimatpart2.CFrame.p- pos).magnitude
     if obj then
      --print(obj:GetFullName())
     end
     if not obj or dist > 6 then
      aimatpart2 = nil
      --print("ooof")
     end
     canaimat = false
     delay(.5, function()
      canaimat = true
     end)
    end
   end)
  end



 end
end)