if VHub_LOADED and not _G.VHub_DEBUG == true then
 game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "Notice:";
 Text = "VHub Is Already Loaded!";
 Icon = "rbxthumb://type=Asset&id=11782547157&w=150&h=150"})
Duration = 16; 
 return
end

pcall(function() getgenv().VHub_LOADED = true end)

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local VHubImage = Instance.new("ImageLabel")
local VHubText = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999999999

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(31, 32, 34)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.358757079, 0, 0.391304344, 0)
Frame.Size = UDim2.new(0, 0, 0.200000003, 0)

UICorner.Parent = Frame

VHubImage.Name = "VHubImage"
VHubImage.Parent = Frame
VHubImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VHubImage.BackgroundTransparency = 1.000
VHubImage.Position = UDim2.new(0.39, 0, 0, 0)
VHubImage.Size = UDim2.new(0, 0, 0.649999976, 0)
VHubImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
VHubImage.Image = "http://www.roblox.com/asset/?id=11782547157"

VHubText.Name = "VHubText"
VHubText.Parent = Frame
VHubText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VHubText.BackgroundTransparency = 1.000
VHubText.Position = UDim2.new(0.275000006, 0, 0.520000041, 0)
VHubText.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)
VHubText.Font = Enum.Font.GothamBold
VHubText.Text = "VHub"
VHubText.TextColor3 = Color3.fromRGB(255, 255, 255)
VHubText.TextScaled = true
VHubText.TextSize = 14.000
VHubText.TextWrapped = true

-- Scripts:

local function YTFFB_fake_script() -- VHubImage.LocalScript 
 local script = Instance.new('LocalScript', VHubImage)

 script.Parent:TweenSize(UDim2.new(0.65, 1, 0.65, 0),"Out","Back",1)
        Frame:TweenSize(UDim2.new(0.29, 1, 0.2, 0),"Out","Back",1)
 wait(1)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Page%20Author'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%201'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%202'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%203'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%204'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%205'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%206'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Animations%20Page%207'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Commands%20Page%201'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Commands%20Page%202'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Error%20Page'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Guis%20Page%201'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Guis%20Page%202'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Guis%20Page%203'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Guis%20Page%204'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Guis%20Page%205'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Home%20Page'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Hubs%20Page%201'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Req%20Acc%20Page%201'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Req%20Acc%20Page%202'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Scripts%20Page%201'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Scripts%20Page%202'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Scripts%20Page%203'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Scripts%20Page%204'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Scripts%20Page%205'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Settings%20Page'),true))()
wait()
 script.Parent:TweenSize(UDim2.new(0, 0, 0.65, 0),"Out","Back",1)
        Frame:TweenSize(UDim2.new(0, 0, 0.2, 0),"Out","Back",1)
 wait(1)
 ScreenGui:Destroy()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Support%20Page'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Open%20Button'),true))()
loadstring(game:HttpGet(('https://pastebin.com/raw/nJtd59bc'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/testforshiistuff/stuff/main/Message%20From%20Report%20System'),true))()

game:GetService("CoreGui").RobloxGui.ScreenshotHudFrame.ScreenshotOverlay.ImageLabel.Image = "rbxassetid://11794614522"

game:GetService("CoreGui").RobloxGui.ScreenshotHudFrame.ScreenshotOverlay.ImageLabel.Size = UDim2.new(0, 163 , 0, 28)

game:GetService("CoreGui").RobloxGui.ScreenshotHudFrame.ScreenshotOverlay.ExperienceName.TextStrokeTransparency = 0

game:GetService("CoreGui").RobloxGui.ScreenshotHudFrame.ScreenshotOverlay.ExperienceName.Font = Enum.Font.GothamBold

game:GetService("CoreGui").RobloxGui.ScreenshotHudFrame.Visible = true

game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "Executed!";
 Text = "Successfully Executed VHub With No Errors!";
 Icon = "rbxthumb://type=Asset&id=11782547157&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "Credits:";
 Text = "Veincx#5315 And Script Owner Thats In This Hub";
 Icon = "rbxthumb://type=Asset&id=11782547157&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "Latest Version";
 Text = "You're Using The Latest Version Of VHub (V1.31)";
 Icon = "rbxthumb://type=Asset&id=11782547157&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "Hey!";
 Text = "dsc.gg/grimcity";
 Icon = "rbxthumb://type=Asset&id=11782547157&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "Also,";
 Text = "Some Scripts Are Buggy Or Broken.";
 Icon = "rbxthumb://type=Asset&id=11782547157&w=150&h=150"})
Duration = 16;
end
coroutine.wrap(YTFFB_fake_script)()