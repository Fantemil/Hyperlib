local Image = "" -- Put in TextureId of the ImageId not the normal ImageId.
local Flipoff = false -- If the Image should flip you off after taking a Image.
--[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]--
task.wait() -- More Useless shit to get more lines.
--[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]--
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.Archivable = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Name = "screencat"
ScreenGui.Parent = game:GetService("CoreGui")
local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://2260538021"
Sound.Parent = ScreenGui
local Picture = Instance.new("ImageLabel")
Picture.Image = "rbxassetid://10263598937"
Picture.Name = "Picture"
Picture.BackgroundTransparency = 1
Picture.Size = UDim2.new(0, 139,0, 139)
Picture.Position = UDim2.new(0.961, 100,0.938, -100)
Picture.Parent = ScreenGui
local Emoji = Instance.new("TextLabel")
Emoji.Text = "ð· "
Emoji.Name = "Emoji"
Emoji.BackgroundTransparency = 1
Emoji.TextSize = 45
Emoji.TextXAlignment = "Right"
Emoji.TextYAlignment = "Bottom"
Emoji.Parent = Picture
Emoji.Size = UDim2.new(1.058, 0,1.072, 0)
local Flash = Instance.new("Frame")
Flash.Name = "Flash"
Flash.BackgroundTransparency = 1
Flash.BorderSizePixel = 0
Flash.BackgroundColor3 = Color3.new(1, 1, 1)
Flash.Parent = ScreenGui
Flash.Size = UDim2.new(1,0,1,0)
--[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]--
task.wait() -- More Useless shit to get more lines.
--[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]--
if Image == "" then
else
    Picture.Image = "rbxassetid://"..Image
end
task.wait()
Emoji.Text = ""
Picture:TweenPosition(UDim2.new(0.961, -100,0.938, -100))
wait(1.7)
Picture:TweenPosition(UDim2.new(0.961, 100,0.938, -100))
wait(2)
Picture.Visible = false
while wait(math.random(99)) do
Picture.Position = UDim2.new(0.961, 100,0.938, -100)
Emoji.Text = "ð· "
Flash.BackgroundTransparency = 1
wait(5)
Picture.Visible = true
Picture:TweenPosition(UDim2.new(0.961, -100,0.938, -100))
task.wait(1)
Emoji.Text = "ð¸ "
wait(0.1)
Flash.BackgroundTransparency = 0
Sound:Play()
Emoji.Text = "ð· "
wait(0.3)
for dumbshit = 0, 100 do
Flash.BackgroundTransparency += 0.035
task.wait(0.01)
end
if Flipoff == true then
wait(0.1)
Emoji.Text = "ð "
end
wait(0.3)
Picture:TweenPosition(UDim2.new(0.961, 100,0.938, -100))
wait(2)
Picture.Visible = false
end
--[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]--
task.wait() -- More Useless shit to get more lines.
--[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]----[[ð·]]----[[ð¸]]-- 