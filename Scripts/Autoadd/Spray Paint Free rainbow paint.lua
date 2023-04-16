_G.size = 5
_G.layer = 1
_G.transp = 1
_G.rainbow = false
_G.chrome = false
_G.neon = false


local GUI = Instance.new("ScreenGui")
local FrameF = Instance.new("Frame")
local SecondFrame = Instance.new("Frame")
local neon = Instance.new("TextButton")
local chrome = Instance.new("TextButton")
local rainbow = Instance.new("TextButton")
local Layer = Instance.new("TextBox")
local Size = Instance.new("TextBox")

GUI.Name = "GUI"
GUI.Parent = game.CoreGui

FrameF.Name = "FrameF"
FrameF.Parent = GUI
FrameF.Active = true
FrameF.BackgroundColor3 = Color3.new(0.458824, 0.458824, 0.458824)
FrameF.BackgroundTransparency = 0.25
FrameF.Position = UDim2.new(0.733261347, 0, 0.332283467, 0)
FrameF.Size = UDim2.new(0, 228, 0, 145)
FrameF.Draggable = true

SecondFrame.Name = "SecondFrame"
SecondFrame.Parent = FrameF
SecondFrame.BackgroundColor3 = Color3.new(0.458824, 0.458824, 0.458824)
SecondFrame.BackgroundTransparency = 0.25
SecondFrame.Position = UDim2.new(0.0350877196, 0, 0.0655172393, 0)
SecondFrame.Size = UDim2.new(0, 88, 0, 126)

rainbow.Name = "Rainbow"
rainbow.Parent = SecondFrame
rainbow.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
rainbow.Position = UDim2.new(0.125, 0, 0.5433333358, 0)
rainbow.Size = UDim2.new(0, 66, 0, 18)
rainbow.Font = Enum.Font.SourceSans
rainbow.Text = "Rainbow"
rainbow.TextColor3 = Color3.new(1, 1, 1)
rainbow.TextScaled = true
rainbow.TextSize = 14
rainbow.TextWrapped = true

neon.Name = "Neon"
neon.Parent = SecondFrame
neon.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
neon.Position = UDim2.new(0.125, 0, 0.7433333358, 0)
neon.Size = UDim2.new(0, 66, 0, 18)
neon.Font = Enum.Font.SourceSans
neon.Text = "Neon"
neon.TextColor3 = Color3.new(1, 1, 1)
neon.TextScaled = true
neon.TextSize = 14
neon.TextWrapped = true

chrome.Name = "Chrome"
chrome.Parent = SecondFrame
chrome.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
chrome.Position = UDim2.new(0.125, 0, 0.3433333358, 0)
chrome.Size = UDim2.new(0, 66, 0, 18)
chrome.Font = Enum.Font.SourceSans
chrome.Text = "Chrome"
chrome.TextColor3 = Color3.new(1, 1, 1)
chrome.TextScaled = true
chrome.TextSize = 14
chrome.TextWrapped = true


Size.Name = "Size"
Size.Parent = SecondFrame
Size.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
Size.Position = UDim2.new(0.125, 0, 0.1833333358, 0)
Size.Size = UDim2.new(0, 66, 0, 18)
Size.Font = Enum.Font.SourceSans
Size.Text = "Size"
Size.PlaceholderText = "Size"
Size.TextColor3 = Color3.new(1, 1, 1)
Size.TextScaled = true
Size.TextSize = 14
Size.TextWrapped = true
Size.FocusLost:connect(function()
_G.size = tonumber(Size.Text)
end)

Layer.Name = "Size"
Layer.Parent = SecondFrame
Layer.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
Layer.Position = UDim2.new(0.125, 0, 0.0093333358, 0)
Layer.Size = UDim2.new(0, 66, 0, 18)
Layer.Font = Enum.Font.SourceSans
Layer.Text = "Layer"
Layer.PlaceholderText = "Layer"
Layer.TextColor3 = Color3.new(1, 1, 1)
Layer.TextScaled = true
Layer.TextSize = 14
Layer.TextWrapped = true
Layer.FocusLost:connect(function()
_G.layer = tonumber(Layer.Text)
end)

neon.MouseButton1Click:connect(function()
  _G.neon = not _G.neon
    neon.Text = "Neon".." \ "..tostring(_G.neon)
end)
rainbow.MouseButton1Click:connect(function()
  _G.rainbow = not _G.rainbow
    rainbow.Text = "Rainbow".." \ "..tostring(_G.rainbow)
end)
chrome.MouseButton1Click:connect(function()
  _G.chrome = not _G.chrome
  chrome.Text = "Chrome".." \ "..tostring(_G.chrome)
end)



local mt = getrawmetatable(game);
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(remote,...)
  args = {...}
  method = tostring(getnamecallmethod())
  if method == "InvokeServer" and tostring(remote) == "SendPaintInfo" and tonumber(args[1]) then
       for gi,gv in pairs(args[2][1]) do
                  print(gi,gv)
                --   args[2][1]["transparency"] = _G.transp
                       args[2][1]["size"] = _G.size
args[2][1]["layer"] = _G.layer
                          args[2][1]["effects"]["Rainbow"] = _G.rainbow
                              args[2][1]["effects"]["Neon"] = _G.neon
    args[2][1]["effects"]["Chrome"] = _G.chrome
       end
      return old(remote,unpack(args))
  end
  return old(remote,...)
end)
setreadonly(mt,true)