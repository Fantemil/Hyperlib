local library = loadstring(game.HttpGet(game, ('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local clr = Color3.fromRGB
_G.ESPDISABLE = true
_G.MainColor = clr(48,48,48)
_G.SecondaryColor = clr(48,48,48)
_G.TertiaryColor = clr(32,32,32)
_G.ArrowColor = clr(255,255,255)
_G.MainTextColor = clr(255,255,255)
_G.PointerColor = clr(255,255,255)
_G.ButtonTextColor = clr(255,255,255)
_G.SliderColor = clr(128,0,0)
_G.ButtonColor = clr(48,48,48)
_G.ToggleColor = clr(48,48,48)
_G.DraggerCircleColor = clr(255,255,255)
_G.BindColor = clr(48,48,48)
local w = library.CreateWindow(library, [==[Force Fucker]==])
local b = w.CreateFolder(w, [==[ESP]==])
local b2 = w.CreateFolder(w, [==[Extra]==])
local ffc = game.FindFirstChild
local ffc2 = game.FindFirstChildWhichIsA
local plrs = game.Players
local getc = game.GetChildren
local getd = game.GetDescendants
local rs = game.RunService
local cam = workspace.CurrentCamera
local vec = Vector2.new
local rgb = Color3.fromRGB
local rnd = math.round
local localp = plrs.LocalPlayer
local lpn = localp.Name

local esp = {}

local users = {
   "Early Access",
   "Member",
   "Guest"
}

local function rank()
   for i,v in next, getc(plrs) do
       if not table.find(users, v.GetRoleInGroup(v, 4840111))then
       print(v.Name, "their rank is:", v.GetRoleInGroup(v, 4840111))
       end
   end
   plrs.ChildAdded.Connect(plrs.ChildAdded, function(v)
       if not table.find(users, v.GetRoleInGroup(v, 4840111))then
       print(v.Name, "joined, their rank is:", v.GetRoleInGroup(v, 4840111))
       end
   end)
end

local function tptoPlanets()
   local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   local locations = {
       [1] = {x = -40, y = 1915, z = 801},
       [2] = {x = -1161, y = 1609, z = -514},
       [3] = {x = -6232, y = 1864, z = -3747},
       [4] = {x = -7013, y = 1947, z = -3117},
       [5] = {x = -194, y = 1650, z = -7149},
       [6] = {x = -647, y = 1680, z = -8573},
       [7] = {x = 7806, y = 1648, z = 5428},
       [8] = {x = 7769, y = 1674, z = 4810}
   }
   for i,v in next, locations do
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.x,v.y,v.z)
    wait(0.5)
   end
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

local function farm()
   local pos = localp.Character.HumanoidRootPart.CFrame
   for i,v in next, getc(workspace) do
       if ffc(v, "Rarity") and ffc2(v, "ProximityPrompt") and v.Rarity.Value ~= "Common" then
           local prox = ffc2(v, "ProximityPrompt")
           localp.Character.HumanoidRootPart.CFrame = v.CFrame
           wait(1.5)
           fireproximityprompt(prox, 10)
       end
   end
   localp.Character.HumanoidRootPart.CFrame = pos
end

local function updatePlease()
   local ct = 0
   local ct1 = 0
   local trinkets = {}
   local npcs = {}


   for i,v in next, getc(workspace) do
       if ffc(v, "Rarity") then
           ct = ct + 1
           trinkets[ct] = {v, v.Rarity.Value}
       end
   end

   for i,v in next, getc(workspace) do
       if ffc(v, "HumanoidRootPart") and not ffc(v, "KeyTester") then
           ct1 = ct1 + 1
           npcs[ct1] = {v}
       end
   end

   return trinkets, npcs
end

function esp:insert(part, name, col)
   local names = Drawing.new("Text")
   names.Text = tostring(name)
   names.Size = 16
   names.Color = col
   names.Center = true
   names.Visible = true
   names.Transparency = 1
   names.Position = vec(0, 0)
   names.Outline = true
   names.OutlineColor = rgb(0, 0, 0)
   names.Font = 2
   
   local dis = Drawing.new("Text")
   dis.Text = "[]"
   dis.Size = 12
   dis.Color = rgb(255, 255, 255)
   dis.Center = true
   dis.Visible = true
   dis.Transparency = 1
   dis.Position = vec(0, 0)
   dis.Outline = true
   dis.OutlineColor = rgb(0, 0, 0)
   dis.Font = 2
   local step
   step = rs.RenderStepped.Connect(rs.RenderStepped,function()
       if _G.ESPDISABLE == false and part.Parent ~= nil and part ~= nil and localp.Character.PrimaryPart and (localp.Character.PrimaryPart.Position - part.Position).magnitude <= 15000 then
           local pos, vis = cam.WorldToViewportPoint(cam, part.Position)
           if vis then
               names.Position = vec(pos.X, pos.Y)
               names.Visible = true
               dis.Text = "["..rnd((localp.Character.PrimaryPart.Position - part.Position).magnitude).."m]"
               dis.Position = names.Position + vec(0, names.TextBounds.Y/1.2)
               dis.Visible = true
           else
               names.Visible = false
               dis.Visible = false
           end
       else
           names.Visible = false
           dis.Visible = false
           if _G.ESPDISABLE == true or object ~= nil then
               names.Remove(names)
               dis.Remove(dis)
               step.Disconnect(step)
           end
       end
   end)
end


b.Button(b, "Trinket ESP",function()
   local trinket = updatePlease()
   _G.ESPDISABLE = false
   for i,v in next, trinket do
       if v[2] == "Common" then
           esp.insert(esp, v[1], v[2], rgb(150, 50, 0))
       elseif v[2] == "Uncommon" then
           esp.insert(esp, v[1], v[2], rgb(150, 100, 0))
       elseif v[2] == "Rare" then
           esp.insert(esp, v[1], v[2], rgb(0, 50, 255))
       else
           esp.insert(esp, v[1], v[2], rgb(204, 204, 0))
       end
   end
end)

b.Button(b, "NPC ESP",function()
   local trinket, npcs = updatePlease()
   _G.ESPDISABLE = false
   for i,v in next, npcs do
        esp.insert(esp, v[1].HumanoidRootPart, v[1].Name, rgb(255, 0, 0))
   end
end)

b.Button(b, "Disable ESP",function()
   _G.ESPDISABLE = true
end)

b2.Button(b2, "Staff Detector",function()
   rank()
end)

b2.Button(b2, "Pre-Farm",function()
   tptoPlanets()
end)

b2.Button(b2, "Farm",function()
   farm()
end)