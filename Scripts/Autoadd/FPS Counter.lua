-- just an fps script lol
-- https://cord.breadhub.cc/
-- AGPL-3.0-OR-LATER
local averageTime = 5
local redrawInterval = 1 / 30
local drawing = Drawing.new 'Text'
drawing.Size = 28
drawing.Center = true
drawing.Color = Color3.new(1, 1, 1)
local m = game:GetService('Players').LocalPlayer:GetMouse()
local insert, clock, floor, huge, tostring = table.insert, os.clock, math.floor, math.huge, tostring
local frames = {}
local update = function()
  local clockTime = clock()
  local newFrames = {}
  local frameCount = 0
  local low = huge
  local high = 0
  for _, o in pairs(frames) do
    if clockTime - o[1] < averageTime then
      insert(newFrames, o)
      frameCount = frameCount + 1
      local rounded = floor(o[2] * 10) / 10
      if rounded < low then
        low = rounded
      end
      if rounded > high then
        high = rounded
      end
    end
  end
  frames = newFrames
  if frameCount == 0 then
    frameCount = 1
  end
  drawing.Text = 'FPS (last '
    .. averageTime
    .. '):\nØ: '
    .. tostring(floor(frameCount / averageTime))
    .. '\nFrame Low: '
    .. tostring(low)
    .. '\nFrame High: '
    .. tostring(high)
  drawing.Position = Vector2.new(m.ViewSizeX / 2, m.ViewSizeY - (drawing.Size * 5))
end
update()
local lastDelta = 0
game:GetService('RunService').RenderStepped:Connect(function(delta)
  local clockTime = clock()
  lastDelta = lastDelta + delta
  insert(frames, { clockTime, 1 / delta })
  if lastDelta > redrawInterval then
    update()
    lastDelta = 0
  end
end)
