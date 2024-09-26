local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0.3, 0, 0.7, 0)
Main.Position = UDim2.new(0.03, 0, 0.28, 0)
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderColor3 = Color3.new(1, 0, 0)
Main.BorderSizePixel = 6
Main.Active = true
Main.BackgroundTransparency = 0 
Main.Draggable = true
Main.Parent = gui


local label = Instance.new("TextLabel")
label.Size = UDim2.new(0.99, 0, 0.13, 0)
label.Position = UDim2.new(0.01, 0, 0.01, 0)
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.BorderColor3 = Color3.new(1, 0, 0)
label.BorderSizePixel = 6
label.Text = "c00lgui Mobile FE v1.0"
label.BackgroundTransparency = 0 
label.TextColor3 = Color3.new(255, 255, 255)
label.Font = Enum.Font.Code
label.Parent = Main
label.TextScaled = true
label.TextWrapped = true


local iy = Instance.new("TextButton")
iy.Size = UDim2.new(0.46, 0, 0.1, 0)
iy.Position = UDim2.new(0.01, 0, 0.17, 0)
iy.BackgroundColor3 = Color3.new(0, 0, 0)
iy.BorderColor3 = Color3.new(1, 0, 0)
iy.BorderSizePixel = 6
iy.Text = "Infinite Yield FE"
iy.BackgroundTransparency = 0 
iy.TextColor3 = Color3.new(255, 255, 255)
iy.Font = Enum.Font.Code
iy.Parent = Main
iy.TextScaled = true
iy.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

local back = Instance.new("TextButton")
back.Size = UDim2.new(0.5, 0, 0.1, 0)
back.Position = UDim2.new(0.5, 0, 0.17, 0)
back.BackgroundColor3 = Color3.new(0, 0, 0)
back.BorderColor3 = Color3.new(1, 0, 0)
back.BorderSizePixel = 6
back.Text = "Lalol Hub Backdoor"
back.BackgroundTransparency = 0 
back.TextColor3 = Color3.new(255, 255, 255)
back.Font = Enum.Font.Code
back.Parent = Main
back.TextScaled = true
back.MouseButton1Down:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
end)

local na = Instance.new("TextButton")
na.Size = UDim2.new(0.5, 0, 0.1, 0)
na.Position = UDim2.new(0.5, 0, 0.3, 0)
na.BackgroundColor3 = Color3.new(0, 0, 0)
na.BorderColor3 = Color3.new(1, 0, 0)
na.BorderSizePixel = 6
na.Text = "Nameless Admin FE"
na.BackgroundTransparency = 0 
na.TextColor3 = Color3.new(255, 255, 255)
na.Font = Enum.Font.Code
na.Parent = Main
na.TextScaled = true
na.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end)


local fsh = Instance.new("TextButton")
fsh.Size = UDim2.new(0.5, 0, 0.1, 0)
fsh.Position = UDim2.new(0.5, 0, 0.44, 0)
fsh.BackgroundColor3 = Color3.new(0, 0, 0)
fsh.BorderColor3 = Color3.new(1, 0, 0)
fsh.BorderSizePixel = 6
fsh.Text = "FE Script Hub"
fsh.BackgroundTransparency = 0 
fsh.TextColor3 = Color3.new(255, 255, 255)
fsh.Font = Enum.Font.Code
fsh.Parent = Main
fsh.TextScaled = true
fsh.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Asset1-17344"))()
end)

local bc = Instance.new("TextButton")
bc.Size = UDim2.new(0.46, 0, 0.1, 0)
bc.Position = UDim2.new(0.01, 0, 0.3, 0)
bc.BackgroundColor3 = Color3.new(0, 0, 0)
bc.BorderColor3 = Color3.new(1, 0, 0)
bc.BorderSizePixel = 6
bc.Text = "Lag Chat"
bc.BackgroundTransparency = 0 
bc.TextColor3 = Color3.new(255, 255, 255)
bc.Font = Enum.Font.Code
bc.Parent = Main
bc.TextScaled = true
bc.MouseButton1Down:Connect(function()
  for i = 1, 4 do
local args = {
    [1] = "\194\160\194\160",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
end)

local FA = Instance.new("TextButton")
FA.Size = UDim2.new(0.46, 0, 0.1, 0)
FA.Position = UDim2.new(0.01, 0, 0.44, 0)
FA.BackgroundColor3 = Color3.new(0, 0, 0)
FA.BorderColor3 = Color3.new(1, 0, 0)
FA.BorderSizePixel = 6
FA.Text = "Fedora Admin"
FA.BackgroundTransparency = 0 
FA.TextColor3 = Color3.new(255, 255, 255)
FA.Font = Enum.Font.Code
FA.Parent = Main
FA.TextScaled = true
FA.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/fedoratoomutch/main/toomucth'))()
end)
local TK = Instance.new("TextButton")
TK.Size = UDim2.new(0.46, 0, 0.08, 0)
TK.Position = UDim2.new(0.01, 0, 0.57, 0)
TK.BackgroundColor3 = Color3.new(0, 0, 0)
TK.BorderColor3 = Color3.new(1, 0, 0)
TK.BorderSizePixel = 6
TK.Text = "Telekinesis"
TK.BackgroundTransparency = 0 
TK.TextColor3 = Color3.new(255, 255, 255)
TK.Font = Enum.Font.Code
TK.Parent = Main
TK.TextScaled = true
TK.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/main/qwerty1.lua"))()
end)
local RC = Instance.new("TextButton")
RC.Size = UDim2.new(0.5, 0, 0.07, 0)
RC.Position = UDim2.new(0.5, 0, 0.58, 0)
RC.BackgroundColor3 = Color3.new(0, 0, 0)
RC.BorderColor3 = Color3.new(1, 0, 0)
RC.BorderSizePixel = 6
RC.Text = "Rochips Panel"
RC.BackgroundTransparency = 0 
RC.TextColor3 = Color3.new(255, 255, 255)
RC.Font = Enum.Font.Code
RC.Parent = Main
RC.TextScaled = true
RC.MouseButton1Down:Connect(function()
  if "Rochips Loader" then
	local Rochips_panel,v,u,i=loadstring,"/snippets","gwwv","/raw/main.lua" ;
	Rochips_panel(game:HttpGet("https://glot.io"..v.."/" ..u.."877ga3"..i))();
	return "it will load in around 3 - 131 seconds"
end
end)
local vf = Instance.new("TextButton")
vf.Size = UDim2.new(0.5, 0, 0.07, 0)
vf.Position = UDim2.new(0.5, 0, 0.69, 0)
vf.BackgroundColor3 = Color3.new(0, 0, 0)
vf.BorderColor3 = Color3.new(1, 0, 0)
vf.BorderSizePixel = 6
vf.Text = "Vfly Gui"
vf.BackgroundTransparency = 0 
vf.TextColor3 = Color3.new(255, 255, 255)
vf.Font = Enum.Font.Code
vf.Parent = Main
vf.TextScaled = true
vf.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://pastebin.com/raw/Vxh6JtdG"))()
end)
local pl = Instance.new("TextButton")
pl.Size = UDim2.new(0.46, 0, 0.07, 0)
pl.Position = UDim2.new(0.01, 0, 0.69, 0)
pl.BackgroundColor3 = Color3.new(0, 0, 0)
pl.BorderColor3 = Color3.new(1, 0, 0)
pl.BorderSizePixel = 6
pl.Text = "Prison Life Admin"
pl.BackgroundTransparency = 0 
pl.TextColor3 = Color3.new(255, 255, 255)
pl.Font = Enum.Font.Code
pl.Parent = Main
pl.TextScaled = true
pl.MouseButton1Down:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua"))()
end)


local ngui = Instance.new("ScreenGui")
ngui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local x = Instance.new("TextButton")
x.Size = UDim2.new(0.15, 0, 0.15, 0)
x.Position = UDim2.new(0.9, 0, 0.01, 0)
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.BorderColor3 = Color3.new(1, 0, 0)
x.BorderSizePixel = 6
x.Text = "X"
x.BackgroundTransparency = 0 
x.TextColor3 = Color3.new(255, 255, 255)
x.Font = Enum.Font.Code
x.Parent = ngui
x.TextScaled = true
x.Draggable = true
x.MouseButton1Down:Connect(function()
  gui.Enabled = not gui.Enabled
end)