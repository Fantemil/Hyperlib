local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.121165648, 0, 0.388692588, 0)
main.Size = UDim2.new(0, 494, 0, 217)
main.Active = true
main.Draggable = true
 
TextButton.Parent = main
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextButton.Position = UDim2.new(0.0161943324, 0, 0.248847932, 0)
TextButton.Size = UDim2.new(0, 213, 0, 50)
TextButton.Font = Enum.Font.GothamBlack
TextButton.Text = "INF Jump (moss ppl)"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 22.000
TextButton.MouseButton1Down:connect(function()
 local InfiniteJumpEnabled = true
 game:GetService("UserInputService").JumpRequest:connect(function()
  if InfiniteJumpEnabled then
   game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
  end
 end)
 local InfiniteJump = CreateButton("Infinite Jump: Off", StuffFrame)
 InfiniteJump.Position = UDim2.new(0,10,0,130)
 InfiniteJump.Size = UDim2.new(0,150,0,30)
 InfiniteJump.MouseButton1Click:connect(function()
  local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
  local new = state == "Off" and "On" or state == "On" and "Off"
  InfiniteJumpEnabled = new == "On"
  InfiniteJump.Text = "Infinite Jump: " .. new
 end)
end)
 
TextButton_2.Parent = main
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextButton_2.Position = UDim2.new(0.53441298, 0, 0.248847932, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.GothamBlack
TextButton_2.Text = "QB Aimbot "
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 37.000
TextButton_2.MouseButton1Down:connect(function()
 --// Legendary Football Aimbot GUI //--
--[[ Description ]
    Yes, its finally here! Legendary Football AIMBOT!!!
    This is for throwing DIMEZ every time!!!
--]]
 
 loadstring(game:HttpGet("https://pastebin.com/raw/G81j7qd3", true))()
end)
 
TextButton_3.Parent = main
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextButton_3.Position = UDim2.new(0.0161943324, 0, 0.603686631, 0)
TextButton_3.Size = UDim2.new(0, 213, 0, 50)
TextButton_3.Font = Enum.Font.GothamBlack
TextButton_3.Text = "Speed Boost"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 30.000
TextButton_3.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
end)
 
TextButton_4.Parent = main
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextButton_4.Position = UDim2.new(0.53441298, 0, 0.603686631, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 50)
TextButton_4.Font = Enum.Font.GothamBlack
TextButton_4.Text = "Super Speed Boost"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 22.000
TextButton_3.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
end)
 
 
TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TextLabel.Size = UDim2.new(0, 494, 0, 50)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "FF Script GUI | gui: clouted#4003 scripts: cloutedfps"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 12.000
TextLabel.TextWrapped = true