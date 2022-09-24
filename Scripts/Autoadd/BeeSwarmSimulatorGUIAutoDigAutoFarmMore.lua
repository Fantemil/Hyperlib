--[[

█████╗ ███╗   ██╗██████╗ ██████╗  ██████╗ ███╗   ███╗███████╗██████╗  █████╗ 
██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔════╝██╔══██╗██╔══██╗
███████║██╔██╗ ██║██║  ██║██████╔╝██║   ██║██╔████╔██║█████╗  ██║  ██║███████║
██╔══██║██║╚██╗██║██║  ██║██╔══██╗██║   ██║██║╚██╔╝██║██╔══╝  ██║  ██║██╔══██║
██║  ██║██║ ╚████║██████╔╝██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗██████╔╝██║  ██║
╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝
                                                                              
]]--

-- Instances:

local MainHub = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local AndromedaImg = Instance.new("ImageLabel")
local LoadingTXT = Instance.new("TextLabel")
local BorderLoading = Instance.new("Frame")
local PurpleLine = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

--Properties:

MainHub.Name = "MainHub"
MainHub.Parent = game.CoreGui
MainHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainHub
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 2500, 0, 2500)
MainFrame.ZIndex = 2

AndromedaImg.Name = "AndromedaImg"
AndromedaImg.Parent = MainFrame
AndromedaImg.AnchorPoint = Vector2.new(0.5, 0.5)
AndromedaImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AndromedaImg.BackgroundTransparency = 1.000
AndromedaImg.BorderSizePixel = 0
AndromedaImg.Position = UDim2.new(0.504000008, 0, 0.5, 0)
AndromedaImg.Size = UDim2.new(0, 250, 0, 250)
AndromedaImg.ZIndex = 3
AndromedaImg.Image = "http://www.roblox.com/asset/?id=10190803995"

LoadingTXT.Name = "LoadingTXT"
LoadingTXT.Parent = MainFrame
LoadingTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingTXT.BackgroundTransparency = 1.000
LoadingTXT.Position = UDim2.new(0.470018506, 0, 0.54520005, 0)
LoadingTXT.Size = UDim2.new(0, 168, 0, 50)
LoadingTXT.ZIndex = 6
LoadingTXT.Font = Enum.Font.Gotham
LoadingTXT.Text = "Loading"
LoadingTXT.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingTXT.TextScaled = true
LoadingTXT.TextSize = 14.000
LoadingTXT.TextWrapped = true

BorderLoading.Name = "BorderLoading"
BorderLoading.Parent = MainFrame
BorderLoading.AnchorPoint = Vector2.new(0, 0.5)
BorderLoading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BorderLoading.BorderSizePixel = 0
BorderLoading.ClipsDescendants = true
BorderLoading.Position = UDim2.new(0.458000004, 0, 0.574199975, 0)
BorderLoading.Size = UDim2.new(0, 230, 0, 6)
BorderLoading.ZIndex = 6

PurpleLine.Name = "PurpleLine"
PurpleLine.Parent = BorderLoading
PurpleLine.AnchorPoint = Vector2.new(0, 0.5)
PurpleLine.BackgroundColor3 = Color3.fromRGB(241, 133, 255)
PurpleLine.BorderSizePixel = 0
PurpleLine.Size = UDim2.new(0, 0, 0, 6)
PurpleLine.ZIndex = 4

UICorner.CornerRadius = UDim.new(100, 0)
UICorner.Parent = BorderLoading

-- Scripts:

local function TDAH_fake_script() -- MainHub.Animate 
 local script = Instance.new('LocalScript', MainHub)

 local tw = game:GetService("TweenService")
 
 
 
 
 
 
 
 
 local MainFrame = script.Parent.MainFrame
 MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
 MainFrame.Size = UDim2.new(0, 0, 0, 0)
 local AndromedaIMG = MainFrame.AndromedaImg
 AndromedaIMG.Position = UDim2.new(0.5, 0, 0.5, 0)
 AndromedaIMG.Visible = false
 
 local LoadingTXT = MainFrame.LoadingTXT
 LoadingTXT.Text = "Loading"
 LoadingTXT.Position = UDim2.new(0.47, 0,0.545, 0)
 LoadingTXT.Visible = false
 
 local purpleLine = MainFrame.BorderLoading.PurpleLine
 purpleLine.Size = UDim2.new(0,0,0,6)
 purpleLine.Position = UDim2.new(purpleLine.Parent.Position)
 purpleLine.Visible = false
 
 purpleLine.Parent.Visible = false
 
 local FrameGoal = {}
 FrameGoal.Position = UDim2.new(0.5, 0, 0.5, 0)
 FrameGoal.Size = UDim2.new(0, 2500, 0, 2500)
 local twInfoFrame = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
 local tweenFrame = tw:Create(MainFrame, twInfoFrame, FrameGoal)
 local tweenFrameOFF = tw:Create(MainFrame, twInfoFrame, {Size = UDim2.new(0,0,0,0)})
 
 local LOADgoal = {}
 LOADgoal.Size = UDim2.new(0, 280, 0, 6)
 local twInfoLOAD = TweenInfo.new(9, Enum.EasingStyle.Linear)
 local tweenLOAD = tw:Create(purpleLine, twInfoLOAD, LOADgoal)
 
 
 
 
 tweenFrame:Play()
 tweenFrame.Completed:Connect(function()
  task.wait(1)
  tweenLOAD:Play()
  task.wait(0.5)
  AndromedaIMG.Visible = true
  LoadingTXT.Visible = true
  purpleLine.Parent.Visible = true
  purpleLine.Visible = true
  for i = 0, 8 do
   if LoadingTXT.Text == "Loading..." then LoadingTXT.Text = "Loading" end
   LoadingTXT.Text = LoadingTXT.Text.."."
   task.wait(1)
  end
  LoadingTXT.Text = "Done"
  task.wait(1)
  tweenFrameOFF:Play()
  task.wait(0.5)
  AndromedaIMG.Visible = false
  LoadingTXT.Visible = false
  purpleLine.Parent.Visible = false
  purpleLine.Visible = false
 end)
 tweenFrameOFF.Completed:Connect(function()
  if isfile(game.PlaceId..'_andromeda.txt') == false then (syn and syn.request or http_request)({ Url = "http://127.0.0.1:6463/rpc?v=1",Method = "POST",Headers = {["Content-Type"] = "application/json",["Origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({cmd = "INVITE_BROWSER",args = {code = "gGHEDdTvH7"},nonce = game:GetService("HttpService"):GenerateGUID(false)}),writefile(game.PlaceId..'_andromeda.txt', "discord")})end
        loadstring(game:HttpGet('https://raw.githubusercontent.com/max0mind/lua/main/main.lua'))()
  game.CoreGui.MainHub:Destroy()
 end)
 
end
coroutine.wrap(TDAH_fake_script)()