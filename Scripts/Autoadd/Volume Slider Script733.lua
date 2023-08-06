if not game:IsLoaded() then game.Loaded:Wait() end

local plr = game.Players.LocalPlayer
local m = plr:GetMouse()
local us = game:GetService("UserInputService")

local function fiximage(id)
   return string.format("rbxthumb://type=Asset&id=%s&w=420&h=420",tonumber(id))
end

local rblxgui = game.CoreGui:WaitForChild("RobloxGui")
local shield = rblxgui:WaitForChild("SettingsShield"):WaitForChild("SettingsShield")
local pageview = shield:WaitForChild("MenuContainer"):WaitForChild("PageViewClipper"):WaitForChild("PageView"):WaitForChild("PageViewInnerFrame")
local volsound = rblxgui:WaitForChild("Sounds"):WaitForChild("VolumeChangeSound")

local settings = pageview:FindFirstChild("Page")

if not settings then
   local addedcon
   addedcon = pageview.ChildAdded:Connect(function(page)
       if page.Name == "Page" then
           settings = page
           addedcon:Disconnect()
       end
   end)
   
   repeat task.wait() until settings
end

local volume = settings:WaitForChild("VolumeFrame")
volume:WaitForChild("Slider"):Destroy()

local slider = Instance.new("Frame")
slider.AnchorPoint = Vector2.new(1,0.5)
slider.BackgroundTransparency = 1
slider.Position = UDim2.new(1,0,0.5,0)
slider.Size = UDim2.new(0.6,0,1,0)
slider.Name = "Slider"

local bar = Instance.new("ImageLabel",slider)
bar.AnchorPoint = Vector2.new(0.5,0.5)
bar.BackgroundTransparency = 1
bar.Position = UDim2.new(0.5,0,0.5,0)
bar.Size = UDim2.new(0.95,0,0.7,0)
bar.ImageColor3 = Color3.fromRGB(78,84,96)
bar.Image = fiximage(6755657364)
bar.ScaleType = Enum.ScaleType.Slice
bar.SliceCenter = Rect.new(210,210,210,210)

local fill = bar:Clone()
fill.AnchorPoint = Vector2.new(0,0)
fill.ImageColor3 = Color3.fromRGB(0,162,255)
fill.Position = UDim2.new(0,0,0,0)
fill.Size = UDim2.new(1,0,1,0)
fill.Parent = bar

local gradient = Instance.new("UIGradient",fill)
gradient.Color = ColorSequence.new(Color3.fromRGB(135,200,200))
gradient.Transparency = NumberSequence.new({
   NumberSequenceKeypoint.new(0,0),
   NumberSequenceKeypoint.new(0.9999,0),
   NumberSequenceKeypoint.new(1,1)
})

local button = Instance.new("TextButton",slider)
button.ZIndex = 10
button.BackgroundTransparency = 1
button.Size = UDim2.new(1,0,1,0)
button.Font = Enum.Font.SourceSans
button.TextColor3 = Color3.fromRGB(255,255,255)
button.TextSize = 26

local uset = UserSettings():GetService("UserGameSettings")
local roundamount = 5

local oldval = uset.MasterVolume
function update(percent)
   local trueround = roundamount/100
   local p = math.round(percent/trueround)*trueround
   
   gradient.Offset = Vector2.new(p-1,0)
   uset.MasterVolume = p
   button.Text = math.round(p*100) .."%"
   
   local diff = uset.MasterVolume - oldval
   
   if diff ~= 0 then
       volsound:Play()
   end
   oldval = uset.MasterVolume
end

function setslider()
   local abpos = bar.AbsolutePosition.X
   local absize = bar.AbsoluteSize.X
   local x = m.X
   
   local p = math.clamp((x-abpos)/(absize),0,1)
   update(p)
end
update(uset.MasterVolume)

local holding = false
button.MouseButton1Down:Connect(function()
   setslider()
   holding = true
end)

us.InputEnded:Connect(function(key,pro)
   if key.UserInputType == Enum.UserInputType.MouseButton1 then
       holding = false
   end
end)

volsound.Volume = 1

m.Move:Connect(function()
   if holding then
       setslider()
   end
end)

slider.Parent = volume