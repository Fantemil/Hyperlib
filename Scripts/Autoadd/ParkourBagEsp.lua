-- stolen from Bitc h boat, Sory hole cream
local NotifLogs = {}
local CreateNotification
do
   local function map(N, OldMin, OldMax, Min, Max)
   return (N - OldMin) / (OldMax - OldMin) * (Max - Min) + Min
   end
local notes = {}
local function DrawingObject(t, col)
local d = Drawing.new(t)

d.Visible = true
d.Transparency = 1
d.Color = col

return d
end

local function Rectangle(sizex, sizey, fill, col)
local s = DrawingObject("Square", col)

s.Filled = fill
s.Thickness = 1
s.Position = Vector2.new()
s.Size = Vector2.new(sizex, sizey)

return s
end

local function Text(text)
local s = DrawingObject("Text", Color3.new(1, 1, 1))

s.Text = text
s.Size = 13
s.Center = false
s.Outline = true
s.Position = Vector2.new()
s.Font = 2

return s
end

CreateNotification = function(t, customcolor) -- TODO i want some kind of prioritized message to the notification list, like a warning or something. warnings have icons too maybe? idk??
table.insert(NotifLogs, string.format("[%s]: %s", os.date("%X"), t))
local gap = 25
local width = 18

local alpha = 255
local time = 0
local estep = 0
local eestep = 0.02

local insety = 0

local Note = {

enabled = true,

targetPos = Vector2.new(50, 50),

size = Vector2.new(200, width),

drawings = {
outline = Rectangle(202, width + 2, false, Color3.new(0, 0, 0)),
fade = Rectangle(202, width + 2, false, Color3.new(0, 0, 0)),
},

Remove = function(self, d)
if d.Position.x < d.Size.x then
for k, drawing in pairs(self.drawings) do
drawing:Remove()
drawing = false
end
self.enabled = false
end
end,

Update = function(self, num, listLength, dt)
local pos = self.targetPos

local indexOffset = (listLength - num) * gap
if insety < indexOffset then
insety -= (insety - indexOffset) * 0.2
else
insety = indexOffset
end
local size = self.size

local tpos = Vector2.new(pos.x - size.x / time - map(alpha, 0, 255, size.x, 0), pos.y + insety)
self.pos = tpos

local locRect = {
x = math.ceil(tpos.x),
y = math.ceil(tpos.y),
w = math.floor(size.x - map(255 - alpha, 0, 255, 0, 70)),
h = size.y,
}
--pos.set(-size.x / fc - map(alpha, 0, 255, size.x, 0), pos.y)

local fade = math.min(time * 12, alpha)
fade = fade > 255 and 255 or fade < 0 and 0 or fade

if self.enabled then
local linenum = 1
for i, drawing in pairs(self.drawings) do
drawing.Transparency = fade / 255

if type(i) == "number" then
drawing.Position = Vector2.new(locRect.x + 1, locRect.y + i)
drawing.Size = Vector2.new(locRect.w - 2, 1)
elseif i == "text" then
drawing.Position = tpos + Vector2.new(6, 2)
elseif i == "outline" then
drawing.Position = Vector2.new(locRect.x, locRect.y)
drawing.Size = Vector2.new(locRect.w, locRect.h)
elseif i == "fade" then
drawing.Position = Vector2.new(locRect.x - 1, locRect.y - 1)
drawing.Size = Vector2.new(locRect.w + 2, locRect.h + 2)
local t = (200 - fade) / 255 / 3
drawing.Transparency = t < 0.4 and 0.4 or t
elseif i:find("line") then
drawing.Position = Vector2.new(locRect.x + linenum, locRect.y + 1)
if menu then
local mencol = customcolor or (
menu:GetVal("Settings", "Cheat Settings", "Menu Accent") and Color3.fromRGB(unpack(menu:GetVal("Settings", "Cheat Settings", "Menu Accent", COLOR))) or Color3.fromRGB(172, 208, 255)
)
local color = linenum == 1 and mencol or Color3.fromRGB(mencol.R * 255 - 40, mencol.G * 255 - 40, mencol.B * 255 - 40) -- super shit
if drawing.Color ~= color then
drawing.Color = color
end
end
linenum += 1
end
end

time += estep * dt * 128 -- TODO need to do the duration
estep += eestep * dt * 64
end
end,

Fade = function(self, num, len, dt)
if self.pos.x > self.targetPos.x - 0.2 * len or self.fading then
if not self.fading then
estep = 0
end
self.fading = true
alpha -= estep / 4 * len * dt * 50
eestep += 0.01 * dt * 100
end
if alpha <= 0 then
self:Remove(self.drawings[1])
end
end,
}

for i = 1, Note.size.y - 2 do
local c = 0.28 - i / 80
Note.drawings[i] = Rectangle(200, 1, true, Color3.new(0, 0, 0))
end
local color = Color3.fromRGB(172, 208, 255)

Note.drawings.text = Text(t)
if Note.drawings.text.TextBounds.x + 7 > Note.size.x then -- expand the note size to fit if it's less than the default size
Note.size = Vector2.new(Note.drawings.text.TextBounds.x + 7, Note.size.y)
end
Note.drawings.line = Rectangle(1, Note.size.y - 2, true, color)
Note.drawings.line1 = Rectangle(1, Note.size.y - 2, true, color)

notes[#notes + 1] = Note
end

renderStepped = game.RunService.RenderStepped:Connect(function(dt)
Camera = workspace.CurrentCamera
local smallest = math.huge
for k = 1, #notes do
local v = notes[k]
if v and v.enabled then
smallest = k < smallest and k or smallest
else
table.remove(notes, k)
end
end
local length = #notes
for k = 1, #notes do
local note = notes[k]
note:Update(k, length, dt)
if k <= math.ceil(length / 10) or note.fading then
note:Fade(k, length, dt)
end
end
end)
end

local ws = game:GetService("Workspace")

function isBag(instance)
   if instance:FindFirstChild("BagTouchScript") then
       return true
   end
end

-- instance.Main.Color

function createHL(instance, color)
   local hl = Instance.new("Highlight")
   hl.Parent = instance
   hl.FillColor = color
end

local currentBags = 0

for i,v in pairs(ws:GetChildren()) do
   if isBag(v) == true then
       currentBags = i
       createHL(v, Color3.fromRGB(v.Main.Color))
   end
end

CreateNotification("all current bags have been highlighted ("..currentBags.." found)")

ws.ChildAdded:connect(function(child)
   if isBag(child) == true then
       createHL(child, Color3.fromRGB(child.Main.Color))
       CreateNotification("new bag spawned and highlighted ("..child:GetFullName()..")")
   end
end)